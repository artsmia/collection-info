default:
	@xsv search --invert-match --select 8 'unused' dept-highlights.csv | xsv select 5,7 | tail -n+2 | while read line; do \
			packageId=$$(echo $$line | xsv select 1); \
			title=$$(echo $$line | xsv select 2); \
			slug=$$(slugify $$title); \
			if [ -f $$slug.md ]; then \
			  echo $$slug -- 'exists already'; \
		    continue; \
		  fi; \
			echo "---\nname: $$title\nlistId: $$slug\nobject_package: $$packageId\nids: []\n---\n" \
			  | sponge $$slug.md; \
		done

# To speed this up, open an ssh connection to `dx` and have ssh configured to share connections
# It finds any list file with a `object_package: $packageId`, then sshs into dx to make an internal
# API call for the object IDs in that package, and `sed`s them into the file
fillInObjectIDs:
	@rg -l 'ids: \[\]' *.md | while read file; do \
			packageId=$$(cat $$file | grep package | sed 's/.* //'); \
			objectIds=$$(ssh dx "curl --silent http://api.artsmia.org/packages/objects/"$$packageId); \
			sed  "s|\[\]|$$objectIds|" $$file | sponge $$file; \
			echo $$file; \
		done;
