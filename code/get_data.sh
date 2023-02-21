#cd /labs/jlmartinshare/imdb/data 

cd /Users/timothyelder/Documents/imdb/data

pwd

curl -O https://datasets.imdbws.com/title.akas.tsv.gz
curl -O https://datasets.imdbws.com/title.basics.tsv.gz
curl -O https://datasets.imdbws.com/title.crew.tsv.gz
curl -O https://datasets.imdbws.com/title.episode.tsv.gz
curl -O https://datasets.imdbws.com/title.principals.tsv.gz
curl -O https://datasets.imdbws.com/title.ratings.tsv.gz
curl -O https://datasets.imdbws.com/name.basics.tsv.gz

gzip -d $(find ./ -type f -name '*.gz')
