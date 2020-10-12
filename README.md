# Sleep_Diary_Calculator
Generates sleep report from redcap output (hopefully will add in API functionality)

To run:

- First make sure that all R packages needed are installed by running: `source('./R/needed_packages.R')`
- download the most recent version of the sleep report from redcap which includes all current data. Store the file in xxx 
- Update `study_config.R` diary name
- Update `study_config.R` file to include the subjec ID that you are interested in (should be in the format of `COVIDXXX`)
- Generate the report by running: `source('./run_report.R')

The report will be stored in the subject folder as an html file with the current date.