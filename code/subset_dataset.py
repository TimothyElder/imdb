## With this script I want to subset the IMDB Dataset 
## to just information about MOVIES from the US

import os 
import pandas as pd

os.chdir('/labs/jlmartinshare/imdb')

title_akas = pd.read_csv('data/title.akas.tsv', sep='\t', header=0, na_values='\\N')

title_akas = title_akas.loc[title_akas['region'] == 'US']

title_akas.to_csv('data/subset_title.akas.csv', index=False)

title_basics = pd.read_csv('data/title.basics.tsv', sep='\t', header=0, na_values='\\N')

title_basics = title_basics[title_basics['tconst'].isin(title_akas['titleId'])]

title_basics = title_basics.loc[title_basics['titleType'] == 'movie']

title_basics.to_csv('data/subset_title.basics.csv', index = False)

title_crew = pd.read_csv('data/title.crew.tsv', sep='\t', header=0, na_values='\\N')

title_crew = title_crew[title_crew['tconst'].isin(title_basics['tconst'])]

title_crew.to_csv('data/subset_crew.akas.csv', index = False)

