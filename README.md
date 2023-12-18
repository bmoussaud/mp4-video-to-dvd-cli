# mp4-video-to-dvd-cli

this repository gathers all the CLI commands to burn a MP4 video file to a DVD disk, including the conversion to MPG and a minimal DVD authoring.

## Usage

```
make all MP4_FILE=<Path_to_MP4.File>
make burn MP4_FILE=<Path_to_MP4.File>
```

## Additional configuration

Tested on `Sonoma 14.2 (23C64)`

```
brew install cdrtools
brew install dvdauthor
```

## Useful links

- [Make DVD Videos with dvdauthor and FFmpeg](https://gist.github.com/mikitsu/4bdc4cc956bed5931130a1a648b9e89e)
- [Main Script from archlinux](https://bbs.archlinux.org/viewtopic.php?id=111506)
- [Burn DVD CLI Macos](https://sullysrants.com/burning-disc-images-iso-files-in-mac-os-x-from-the-command-line/)
