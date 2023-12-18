MP4_FILE=./CSO\ ZOE\ 2022-2023.mp4 

doc1:
	open https://gist.github.com/mikitsu/4bdc4cc956bed5931130a1a648b9e89e

doc2:
	open https://bbs.archlinux.org/viewtopic.php?id=111506

doc3: 
	open https://sullysrants.com/burning-disc-images-iso-files-in-mac-os-x-from-the-command-line/

all: encode dvdauth iso

encode:
	@rm -rf output.mpg
	ffmpeg -i $(MP4_FILE) -target pal-dvd  output.mpg

dvdauth:
	@rm -rf DVD 
	@mkdir DVD
	VIDEO_FORMAT=PAL dvdauthor --title -f output.mpg  -o DVD
	VIDEO_FORMAT=PAL dvdauthor -T -o DVD

iso:
	mkisofs -v -dvd-video -o $(MP4_FILE).iso DVD

burn:
	hdiutil burn $(MP4_FILE).iso



clean_dvd:
	rm -rf DVD

