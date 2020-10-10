check_date_sequence <- function(daily_calcs){
  #given dataframe (preferablly already filtered by session) identifies places where there missing dates
  daily_calcs_temp <- daily_calcs %>%
    mutate(date_order = order(date_as_date), 
           date_lagged = lag(date_as_date),
           lag_length = difftime(date_as_date, date_lagged, units = 'days')) 
    
  flagged_rows = c(which(daily_calcs_temp$lag_length != 1), which(daily_calcs_temp$lag_length != 1) -1)
  
  return(flagged_rows)
  
}