= Fingerbank Collector DPI PPA

NOTE: This PPA is for testing only, don't use this for production purposes. The private key is in this repo to sign the packages, another good reason not to trust this PPA for production purposes.

== Install packages from this repo

Setup your repo:

```
curl -s --compressed "https://julsemaan.github.io/fingerbank-collector-dpi-ppa/KEY.gpg" | sudo apt-key add -
sudo curl -s --compressed -o /etc/apt/sources.list.d/fingerbank-collector-dpi-ppa.list "https://julsemaan.github.io/fingerbank-collector-dpi-ppa/fingerbank-collector-dpi-ppa.list"
sudo apt update
```

Install:

```
apt install fingerbank-collector
```

== Update the repo

This repo is built on debian11.home.semaan.ca using instructions from https://assafmo.github.io/2019/05/02/ppa-repo-hosted-on-github.html

Just put your new .deb files inside here and then

```
export EMAIL=jul.semaan@gmail.com
dpkg-scanpackages --multiversion . > Packages
gzip -k -f Packages
apt-ftparchive release . > Release
gpg --default-key "${EMAIL}" -abs -o - Release > Release.gpg
gpg --default-key "${EMAIL}" --clearsign -o - Release > InRelease
git add -A
git commit -m update
git push
```
