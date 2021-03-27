
serve:
	mkdocs serve
	
push:
	mkdocs gh-deploy --force
	

toc:
	md_gh-md-toc.py README.md  > TOC.md





