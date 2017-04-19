# NLTK-example

This example shows how to distribute PySpark with python packages. 
It is based on [this blog](http://henning.kropponline.de/2016/09/24/running-pyspark-with-conda-env/).

## How to use

1. Open workbench with Python and run `setup.sh`
2. Set environmental valiable `PYSPARK_PYTHON` as `./NLTK/nltk_env/bin/python`
2. Reopen workbench and run pyspark_nltk.py

## Key points for destribute python packages with conda

- Create conda environment and zip them. 
- Set `spark.yarn.appMasterEnv.PYSPARK_PYTHON` with your conda environment in `spark-defaults.conf`
  - e.g.) `spark.yarn.appMasterEnv.PYSPARK_PYTHON=./NLTK/nltk_env/bin/python`
- Set environmental variable: PYSPARK_PYTHON=./NLTK/nltk_env/bin/python