# Sleep_Diary_Calculator
We collect daily sleep diary data that is used for monitoring changes across treatment via redcap. This R project generates sleep report from redcap output pulled directly from API. This is particularly useful for our CBT-I studies in which the recommended sleep time is perscribed based off of the prior week's diary data.  

Pre Conditions (should only need to do this once):
- May need to set up a VPN if done remotely from off-campus. This is a security issue with accessing redcap. 
- Create a api token from redcap if you have not alread (this will likely take a day to process)
- Once you have the api token, open the luna_token.R script add in your token and save in ~/redcap_tokens folder
- Make sure that all R packages needed are installed by running: `source('./R/needed_packages.R')`
- Configure the `study_config_blank.R` file to match your study design

To run:
- Open VPN connection
- Make sure you opened all the files by opening the project ('Sleep_Diary_Calculator.Rproj') 
- Edit subject_list.csv to only include the subjects you want to run the report for
- Generate the report by running: `source('./run_report.R')

The report will be stored in the subject folder as an html file with the current date.
