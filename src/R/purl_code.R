# purl_code.R
# Script to extract code from example document ----
#
# Víctor H Cervantes (2023)


# Load packages ----
library(knitr)

## Generate script ----
knitr::purl(input = "./src/qmd/iris.qmd",
            output = "./src/R/iris_example.R")