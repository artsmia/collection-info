SHELL := bash

default: build deploy

build:
	bundle exec jekyll build

deploy:
	scp _site/index.json collections:/var/www/info/
	rsync -avz _curators/cv/* collections:/var/www/info/cv/
	rsync -avz _curators/portraits/* collections:/var/www/info/curator-portraits/
	rsync -avz accession_highlights/ collections:/var/www/info/accession_highlights

renameCuratorCVs:
	rename --nows --lower-case -d 'cv' -d '2016' -d '__' -S '_' '-' _curators/cv/*

curatorsCvStatus:
	@echo -e "curator							has cv?\n"
	@diff -y \
			<(ag -lv emeritus _curators/*.md | xargs -n 1 basename | sed 's/.md//' | sort) \
			<(find _curators/cv -type f | xargs -n 1 basename | cut -d'.' -f1 | sort) \
  | sed 's/-/ /g'
