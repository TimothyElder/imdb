library(tidyverse)

# library(readr)
# library(dplyr)

setwd("/Users/timothyelder/Documents/imdb")

movies <- read_tsv(file = 'data/title.akas.tsv', na = "\\N", quote = '')

orig_x <- nrow(movies)

movies <- movies %>% subset(region == 'US')

new_x <- nrow(movies)

print(orig_x - new_x)

basics <- read_tsv(file = 'title.basics.tsv', na = "\\N", quote = '')

basics <- basics %>% rename(titleId = tconst)

movies <- merge(movies, basics, by = "titleId" , all.x = TRUE)

write.table(movies, file='us_movies.tsv', quote=FALSE, sep='\t')

