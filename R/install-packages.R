# Minimal R dependencies for local rendering.
# For a full reproducibility workflow, initialize renv with:
# install.packages("renv")
# renv::init()
# renv::snapshot()

required_packages <- c(
  "knitr",
  "rmarkdown",
  "ggplot2",
  "dplyr",
  "readr",
  "tibble",
  "tidyr",
  "broom"
)

installed <- rownames(installed.packages())
missing <- setdiff(required_packages, installed)

if (length(missing) > 0) {
  install.packages(missing)
}

invisible(lapply(required_packages, require, character.only = TRUE))
