library(fs)

source('study_config.R')
source(here::here('R', 'pull_redcap_Report.R'))

#load IDs to complete
record_ids <- read.csv(path_to_record_ids, header = T, stringsAsFactors = F) 
record_ids <- record_ids$record_id

for(record in record_ids){
save(record, file = 'cur_sub.Rdata')
    
  if(!file.exists(path(path_to_data, record))){
    dir.create(path(path_to_data , record))
  }
  
  rmarkdown::render("Generate Report From Full Data.Rmd",output_file=path(path_to_data, record, paste0(record, '_',Sys.Date(),'.html')))
}