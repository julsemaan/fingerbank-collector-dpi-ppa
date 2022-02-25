= Fingerbank Collector DPI PPA

NOTE: This PPA is for testing only, don't use this for production purposes

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
