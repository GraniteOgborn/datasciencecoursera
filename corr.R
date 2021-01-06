corr <- function(directory, threshold = 0) {
  ans <-numeric()
  for (i in 1:332) {
    xid <- sprintf("%03d.csv", i)
    xpath <- paste0(directory,"/",xid)
    xfile <- read.csv(xpath, header = TRUE)
    if (sum(complete.cases(xfile)) > threshold){
      cfile <- xfile[complete.cases(xfile),]
      c <- cor(cfile$sulfate, cfile$nitrate)
      ans <- rbind(ans, c)
      id <- i
    }
    else {
      next
    }
  }
  ans
}