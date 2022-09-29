# IMDB Dataset Notes

The IMDB Dataset is found [here](https://datasets.imdbws.com) and is comprised of buld TSV files in zipped format. I have written a short shell script (`get_data.sh`) that can be run whenever you are about to work on the dataset to get the latest data, which is apparently updated frequently.

I am not currently sure how the data is created (whether it is user generated or collected through some other process) but it is pretty easy to work with. There is some very superficial documentation [here](https://www.imdb.com/interfaces/).

## Data Notes 

Apparently, IMDB does not just have information about movies but also other entities like TV shows, all their episodes, miniseries, video games, TV movies, etc.. I really only want to look at movies so I subset the data to only include that category. the `title.basics.tsv` file has information about the type of entity in the dataset (the aforementioned various kinds of entities) as well as some attributes of them including runtime, release year (or start year for TV shows) 