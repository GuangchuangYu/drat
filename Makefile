html:
	cd docs;\
	Rscript -e 'rmarkdown::render("index.rmd")';\
	Rscript -e 'rmarkdown::render("index.rmd", "md_document")';\
	mv index.md ../README.md;\
	git add .;\
	git commit -m 'update docs';\
	git push -u origin master

miniCRAN:
	Rscript -e 'source("create_miniCRAN.R")';\
	git add .; git commit -m 'update repo'; git push -u origin master

