## ---- echo = FALSE, results = "asis"------------------------------------------
if(grepl("odcf", Sys.info()["nodename"])) {
    library(knitr)
    knit("bsub_intro.Rmd2", "bsub_intro.md2")
    file.copy("bsub_intro.md2", "/desktop-home/guz/project/development/bsub/vignettes/bsub_intro.md2", overwrite = TRUE)
}
ln = readLines("bsub_intro.md2")
cat(paste(ln, collapse = "\n"))

