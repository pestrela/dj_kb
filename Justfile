
none:
	echo "call just <serve|sed> etc"

serve:
	mkdocs serve
	
  
push:
	# this is called by github actions
	mkdocs gh-deploy --force
	
toc:
	md_gh-md-toc.py README.md  > TOC.md

### sed stuff

sed_fix_urls:
	sed -i -E 's| (https?://[^ ]+)| <\1>|g' docs/*.md    # docs/about2.md
  

sed_fix_nls:
  sed -i 's|\\ *$|  |g' docs/*.md   # docs/about2.md

  



