# ETL_Pipeline_Part_DS3002

## Purpose

This is a project for Data Science Systems (DS 3002) at UVA. This ETL pipeline part will fetch CSV datasets from Kaggle and then transform the CSV into TSV and JSON files. It will also output a summary of how many rows and columns the fetched dataset has.

## How to Use
This uses Docker, so download that and then follow these instructions.

First, you will need a Kaggle account as this script uses the Kaggle API to auhenticate. Once you have a Kaggle account, you will need your Kaggle username and unique API token. Your username should just be your username. To get your unique key: My Profile -> Account -> Scroll to API section and click "Create New API Token". This will download a file containing your username and unique key. In the Dockerfile, there are two fields in the ENV section called KAGGLE_USERNAME and KAGGLE_KEY. Both of these fields have dummy placements in them right now. Replace those values with your Kaggle username and the unique key you got from the file you downloaded containing those.

To build the program, use the command line and type: **docker build -t etl_part .** (Include the ".")

To run the program, you will need to provide *three* arguments. Otherwise it won't work. The three arguments you need to provide are these in this order: username of the owner of the data (from URL), title of the dataset (from URL), and the name of the folder that will hold the data. The script will create a folder with the name you provide, so don't worry about making a folder beforehand. However, make sure the folder name you provide doesn't already belong to an existing folder.

The username and title can be found in the URL of the page where the dataset is. Ex. https://www.kaggle.com/USERNAME/TITLE-OF-DATASET.

Provide the username first, title of dataset second, and the name of your folder third. 

To Run (still in command line): **docker run -v ${PWD}:/data etl_part -i USERNAME TITLE-OF-DATASET FOLDER_NAME**

## Output

After fetching the dataset, if successful, the program will output a folder under the name you provide and it will have the files downloaded from Kaggle, and TSV/JSON versions of all CSV files in the download (if there are no unicode or weird errors while creating those versions). It will also print how many rows and columns each CSV file has.


