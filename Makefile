html:
	cd docs;\
	Rscript -e 'rmarkdown::render("index.rmd")'

miniCRAN:
	Rscript -e 'source("create_miniCRAN.R")';\
	git add .; git commit -m 'update repo'; git push -u origin master

