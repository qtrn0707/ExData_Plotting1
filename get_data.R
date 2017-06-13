## Download, unzip and load the data



## Set working directory to the folder with git
setwd("C:/Users/Admin/Desktop/Coursera/ExData_Plotting1")

## Download the archive in .zip format (if necessary)
if (!file.exists("data.zip")) {
        url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
        download.file(url, "data.zip")
}

## Unzip the data (if necessary)
if (!file.exists("household_power_consumption.txt")) unzip("data.zip")

## Read the data file into a data frame called 'data'
## The data is only read from the dates 2007-02-01 and 2007-02-02,
## which corresponds to the lines from 66638 to 69517.
## Therefore, the first 66637 lines of the data file is skipped.
## The variable names are then added later by reading the first line
## of the data file.
data <- read.table("household_power_consumption.txt", header=FALSE,
                   sep=";", skip = 66637, nrows=69517-66637)
con <- file("household_power_consumption.txt")
first_line <- readLines(con, 1)
close(con)
names(data) <- unlist(strsplit(first_line, ";"))

## Create a column in 'data' that contains the time and date in POSIX form
data$POSIX = strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S")