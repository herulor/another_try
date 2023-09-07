# compile.R
# Script to compile the example document ----
#
# Víctor H Cervantes (2023)


# Load packages ----
library(quarto)


## Generate html file ----
quarto::quarto_render(input = "./src/qmd/iris.qmd",
  output_file = "./doc/iris.html")

## Generate pdf file ----
quarto::quarto_render(input = "./src/qmd/iris.qmd",
  output_file = "./doc/iris.pdf")