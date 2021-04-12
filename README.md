# ETL_Pipeline_Part_DS3002

## Purpose

This is a project for Data Science Systems (DS 3002) at UVA. This ETL pipeline part will fetch CSV datasets from Kaggle and then transform the CSV into TSV and JSON files. It will also output a summary of how many rows and columns the fetched dataset has.

## How to Use

First, you will need a Kaggle account as this script uses the Kaggle API to auhenticate. Once you have a Kaggle account, you will need your Kaggle username and unique API token. Your username should just be your username. To get your unique key: My Profile -> Account -> Scroll to API section and click "Create New API Token". This will download a file containing your username and unique key. Store this file in a folder called ".kaggle" in your root directory. This is where the Kaggle API is expecting the information to be. Another method is to store the values as environment variables. 

Make sure you have Docker installed. To run the program, use **docker build -t etl_part .**

Note: When running the program, you will need to provide two arguments. The username of the user who posted the dataset on Kaggle and the name of the dataset. These can be found in the URL of the page where the dataset is. Ex. https://www.kaggle.com/USERNAME/TITLE-OF-DATASET.

Provide the title of the dataset first, and then the username for your arguments. Make sure the dataset is a CSV file.

To Run: **docker run -v ${PWD}:/data etl-part -i dataset_title owner's_username**


## Outputs

After fetching the dataset, if successful, the program will output a TSV and JSON forms of the dataset and also how many rows and columns it has.


