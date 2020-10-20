# ffxvid
Mirror of [ffxvid.sourceforge.io](https://ffxvid.sourceforge.io)

`ffxvid` is a small yet quite capable Bash shell script written for the GNU/Linux and BSD operating systems that makes it easy to encode video files to MPEG-4 Part 2/Xvid video using the FFmpeg encoder and the `libxvid` library.

> From the original website:

---

## What the script can do

The script is primarily targeted at encoding of full-length feature films and film series but it can be used for other content as well with a few caveats (read "Limitations" below). An up-to-date list follows...

### Video stuff

* Auto-cropping, including per-file auto-cropping when running in batch mode and crop preview when autocrop is enabled.
* Video denoising.
* Video noise filter.
* Video deblocking.
* Video sharpening and blurring.
* Video rotation, 90 degrees clock or counter-clock and 180 degrees.
* Video scaling, including accurate rounding, full chroma input and full chroma interpolation.
* Software scaler tuning, where applicable.
* Pixel format conversion.
* Color space conversion.
* Deinterlacing, both deinterlace at original FPS and bobbing (including motion-compensation deinterlacing).
* Interlace-aware encoding.
* Inverse telecine (IVTC).
* Frame rate (FPS) conversions.
* Support for setting the output video aspect ratio.
* Support for selecting the video track to encode in a multi-track input file.
* Support for setting the VBV Maxrate and Buffer Size.
* HDR to SDR conversion.

### Audio stuff

* Support for the following output audio codecs: AC-3, E-AC-3, TrueHD, DTS, MP3, AAC (inc. libfdk-aac), Vorbis, Opus, WMAv1, WMAv2, FLAC, ALAC and PCM.
* Support for virtually an unlimited amount of audio tracks for encoding/copying.
* Per-track audio codec, volume adjustments, normalization and resampling.
* Per-track and per-codec audio channel layouts.
* Per-track Dialog Level Normalization (dialnorm) for the AC-3/E-AC-3 audio codecs.
* Per-track automatic audio metadata (read "Limitations" below).

### Subtitles stuff

* Support for virtually an unlimited amount of text-based (SRT/SSA/ASS) subtitles copying for the MKV/MP4/M4V/MOV containers.
* Support for copying text-based (SRT/SSA/ASS) subtitles from input file, copying only external ones and copying from input file and external ones.
* Support for hardcoding of external or embedded text-based (SRT/SSA/ASS) subtitles.

### Other stuff

* Support for the following output container formats: AVI, WMV, MP4, M4V, MOV, MKV.
* Configuration file-based. Config file is stored in the user's home directory - `$HOME/.ffxvid` - a hidden file.
* Support for enabling/disabling of audio/video filters in the config file.
* Functions that detect and display audio/video information in a simple way.
* Support for batch mode which is used to encode directories with video files in them.
* Support for 1-pass, 2-pass and CQ (constant quantizer) encoding modes.
* Support for calculation of video bitrate for a target file size when running in 1- or 2-pass mode.
* Support for remuxing to multiple container formats after encoding.
* Support for cover art for the MKV/MP4/M4V/MOV containers.
* Support for custom and automatic metadata tagging.
* Support for auto-copy of chapters and metadata (if any) from the input file.
* Support for verbose logging to a file.
* Support for custom presets and configuration files.

### Limitations

* Interactive in nature, though this can be a positive thing.
* It assumes you know a bit about audio/video compression.
* Due to current codebase limitations, when running in batch mode, auto-detected audio metadata will be that of the first provided input file. If all input files have the same audio properties (bit depth, sample rate, etc), this won't be an issue. Usually, if you're encoding complete seasons of film series, there's a very high chance the audio properties will be the same for all files. Otherwise, the metadata will be wrong except for the first provided input file. In that case, you may want to:
	* Disable auto metadata completely.
	* Enable it but you will need to modify the batchfile yourself and update the data to reflect the correct audio properties.
	* Encode each file individually (no batch mode). Then you'll have correct metadata for all files.
* No support for simultaneous encoding of multiple video tracks.
* No support for input devices (Blu-ray/DVD discs) and ISOs. You will have to remux them with MakeMKV for example.

### Requirements

* Bash shell
* `bc`
* `ffprobe` (part of FFmpeg)
* up-to-date `coreutils` package
* `MPlayer` (for crop preview only)
* `MP4Box` from GPAC, version 0.8.0 or higher (for MP4/M4V/MOV cover art only)
* FFmpeg compiled with support for the following libraries:
	* `libxvid`
	* `libfdk-aac`
	* `libopus`
	* `libmp3lame`
	* `libvorbis`
	* z library (`zimg`)
	* `libass`
	* `fontconfig`
	* FreeType