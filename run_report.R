source('study_config.R')

if(!file.exists(path(path_to_data, subject)){
  dir.create(path(path_to_data, subject))
}

rmarkdown::render("Generate Report From Full Data.Rmd",output_file=path(path_to_data, subject, paste0(subject, '_',Sys.Date(),'.html')))
