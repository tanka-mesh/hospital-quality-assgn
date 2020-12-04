rankhospital <- function(state, outcome, num){
        df <- read.csv("outcome-of-care-measures.csv", na.strings = "Not Available", stringsAsFactors = FALSE)
        p.outcomes <- c("heart attack"=11, "heart failure"=17,"pneumonia"=23) ## creates index for possible outcomes
        if(!(state %in% df[,7])){
                stop("invalid state")
        }
        if(!(outcome %in% names(p.outcomes))){
                stop("invalid outcome")
        }
        my_data <- df[,c(2,7,p.outcomes[[outcome]])] ## extracting required subset of data - hospital name, 
        ## state,and mortality rate for specified outcome
        names(my_data) <- c("hospital","state","mortality") ## changing column names
        good <- complete.cases(my_data)
        my_data <- my_data[good,] ## removing NA values
        my_data <- my_data[order(my_data$state, my_data$mortality, my_data$hospital),] ##sorting the data in 
        ## ascending order of state, mortality, & hospital name
        s_data <- split(my_data, my_data$state) ## splitting the data into data frames by state
        s <- s_data[[state]]
        rank <- NULL
        if(num == "best"){
                rank <- s[1,1]
        } else if(num == "worst"){
                rank <- s[nrow(s),1]
        } else {
                rank <- s[num]
        }
        rank
}