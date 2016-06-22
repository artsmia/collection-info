deploy:
	bundle exec jekyll build
	scp _site/index.json dx:/apps/cdn/collection-info/
	scp _site/index.json collections:/var/www/info/

