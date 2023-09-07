
# iris_example.R ----
# This script loads the iris dataset (available within R), 
# runs some basic sanity check of the data frame, and
# produces a few descriptive figures.
# 
# Víctor H Cervantes (2023)




## Load packages ----
library(stats) # Actually stats is always loaded when R starts because it contains the most basic functions.
library(rprojroot) # This package can be used to help with paths
library(here) # This package can also be used to help with paths
              # The package description says this one is meant to be used in interactive mode.
              # Note that when a comment is long, it helps to break it and align it.



## Global variables ----

### Path variables ----
# Root directory: the location from where R runs and looks for stuff
#                 aka as the working directory.
# Each assignment uses an alternative method
root_path <- rprojroot::is_rstudio_project        # Using rprojroot knowing this is an RStudio project
here_path <- here::here()                         # Just using here. It follows additional heuristics
                                                  # to try to identify where the root directory should be.
crit_path <- rprojroot::find_root(has_dir("src")) # Using the directory structure we defined

# Some of the subdirectories
code_path <- file.path(root_path, "src") # Using the base R function file.path
docs_path <- here::here("doc")           # Using here
data_path <- file.path(here_path, "data")
figs_path <- file.path(crit_path, "results", "figures")





## Load the dataset ----
# From the csv provided
iris_data <- read.csv(file = file.path(data_path, "raw_data", "iris.csv"))

# From the data already available in R
data(iris)















# Create a histogram
hist(iris$Sepal.Length,
     col  = 'steelblue',
     main = 'Histogram',
     xlab = 'Length',
     ylab = 'Frequency')



# Save a histogram
png(filename = file.path(figs_path, "histogram.png"))
hist(iris$Sepal.Length,
     col  = 'steelblue',
     main = 'Histogram',
     xlab = 'Length',
     ylab = 'Frequency')
dev.off()


#| fig.path = paste0(figs_path, "/")
# Create and save a scatterplot
plot(x    = iris$Sepal.Width,
     y    = iris$Sepal.Length,
     main = 'Scatterplot',
     xlab = 'Sepal Width',
     ylab = 'Sepal Length',
     pch  = 19)




## # as options to the document header

## knitr:

##   opts_chunk:

##     fig.path: directory/to/store/figures/



boxplot(Sepal.Length ~ Species,
        data = iris,
        main = 'Sepal Length by Species',
        xlab = 'Species',
        ylab = 'Sepal Length',
        col = 'steelblue',
        border = 'black')

