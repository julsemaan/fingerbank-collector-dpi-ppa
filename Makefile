# ex: EMAIL=jul.semaan@gmail.com make update-ppa
update-ppa:
	dpkg-scanpackages --multiversion . > Packages
	gzip -k -f Packages
	apt-ftparchive release . > Release
	gpg --default-key "$$EMAIL" -abs -o - Release > Release.gpg
	gpg --default-key "$$EMAIL" --clearsign -o - Release > InRelease

