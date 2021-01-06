pollutantmean <- function(directory, pollutant, id = 1:332) {
  mydata <- data.frame()
  for (i in id) {
    xid <- sprintf("%03d.csv", i)
    xpath <- paste0(directory,"/",xid)
    xfile <- read.csv(xpath, header = TRUE)
    mydata <- rbind(mydata, xfile)
  }
  ans <- mean(mydata[[pollutant]], na.rm = TRUE)
  ans
}