#Change this file name to "study_config.R" once filled out to be able to run.

#Path to API token
#we have this stored in a generic path to allow different users to be able to use the scripts from their own computers (thanks COVID)
#The token should not be stored in a shared drive
source(path('PATH TO WHERE YOURE REDCAP TOKEN FILE IS STORED'))  

#path to subject list
path_to_record_ids <- path(here::here('subject_list.csv'))

#Path to where the results will be stored
path_to_data <- path('PATH TO WHERE YOU WANT YOUR REPORTS SAVED') 

#Order of events (redcap_event column, baseically the text before the "_arm_" text)
#should include all sessions the data is collected in order
session_order <- c('t1', 't2', 't3', 't4', 'etx', 'st') 

#session labels for plots
session_labels <- c('T1', 'T2', 'T3', 'T4', 'ETX', '2MO')

#create session dictionary for numeric values
session_numeric_dict <- c(1:length(session_order))
names(session_numeric_dict) <- session_order


#report id (From redcap) need to get this from the API playground
report_id = 71108
