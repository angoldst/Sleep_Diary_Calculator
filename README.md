# Sleep_Diary_Calculator
Generates sleep report from redcap output (hopefully will add in API functionality)

Pre Conditions (should only need to do this once):
- Need to set up a VPN on your computer for when not on Stanford's campus. This is a security issue. 
- Create a api token from redcap if you have not alread (this will likely take a day to process)
- Once you have the api token, open the covid_token.R script add in your token and save in ~/Documents/redcap_tokens folder
- Make sure that all R packages needed are installed by running: `source('./R/needed_packages.R')`

To run:
- Open VPN connection
- Edit subject_list.csv to only include the subjects you want to run the report for
- Generate the report by running: `source('./run_report.R')

The report will be stored in the subject folder as an html file with the current date.