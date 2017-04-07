#!/bin/bash

set -ex

# create conda environment for distribution
conda create -n nltk_env --copy -y -q python=2 nltk numpy
source activate nltk_env

cd ~/.conda/envs/
zip -r ../../nltk_env.zip nltk_env


cd ~/

# download nltk data
python -m nltk.downloader -d nltk_data all
hdfs dfs -put nltk_data/corpora/state_union/1970-Nixon.txt ./

# archive for distribution
cd nltk_data/tokenizers/
zip -r ../../tokenizers.zip *
cd ~/
cd nltk_data/taggers/
zip -r ../../taggers.zip *
