html:
	cd docs;\
	Rscript -e 'rmarkdown::render("index.rmd")';\
	Rscript -e 'rmarkdown::render("index.rmd", "md_document")';\
	mv index.md ../README.md;\
	rm -rf ../index_files;\
	mv index_files ../

miniCRAN:
	Rscript -e 'source("create_miniCRAN.R")';\
	git add .; git commit -m 'update repo'; git push -u origin master

