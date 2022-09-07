check_date_sequence <- function(daily_calcs){
  #given dataframe (preferablly already filtered by session) identifies places where there missing dates
  daily_calcs_temp <- daily_calcs %>%
    mutate(date_order = order(date_as_date), 
           date_lagged = lag(date_as_date),
           lag_length = difftime(date_as_date, date_lagged, units = 'days'), 
           date_only = ifelse(is.na(actual_logged_date), NA, format(actual_logged_date, format = "%m-%d-%Y"))  %>% as.character() %>%  str_remove('.*M  '))
  
  flagged_rows = c(which(daily_calcs_temp$lag_length != 1), which(duplicated(daily_calcs_temp$date_only) | duplicated(daily_calcs_temp$date_only, fromLast = T), which(daily_calcs_temp$lag_length != 1) -1)
  
  return(flagged_rows)
  
}