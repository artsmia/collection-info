deploy:
	bundle exec jekyll build
	scp _site/index.json collections:/var/www/info/
	rsync -avz _curators/cv/* collections:/var/www/info/cv/

renameCuratorCVs:
	rename --nows --lower-case -d 'cv' -d '2016' -d '__' -S '_' '-' _curators/cv/*
