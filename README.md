# Programming Assignment 2 - Hospital Quality
This programming assignment conducts various statistical analyses on quality of care data from the Hospital Care website.  

***

## The Data  

The data for this assignment come from the Hospital Compare web site (http://hospitalcompare.hhs.gov)
run by the U.S. Department of Health and Human Services. The purpose of the web site is to provide data and information about the quality of care at over 4,000 Medicare-certified hospitals in the U.S. This dataset essentially covers all major U.S. hospitals.  

## The Assignment

### 1) Plot the 30-day mortality rates of heart attack  
Plot a simple histogram of the 30-day mortality rates of heart attacks using a subset of the data which contains information about the 30-day mortality y and readmission rates for heart attacks, heart failure, and pneumonia for over 4,000 hospitals.  

### 2) Finding the best hospital in state
Create a function called 'best' to return the name of the hospital with the lowest mortality rate for a specified outcome and state.  

### 3) Ranking hospitals by outcome
Create a function called 'rankhospital' which will return a hospital name based on the state, outcome, and specified rank.  

### 4) Ranking hospitals in all states
Create a function called 'rankall' which will return a two-column data frame containing the hospital in each state that has the ranking specified in the function arguments
