complete <- function(directory, id = 1:332) {
  nobs <- vector()
  for (i in id) {
    xid <- sprintf("%03d.csv", i)
    xpath <- paste0(directory,"/",xid)
    xfile <- read.csv(xpath, header = TRUE)
    c <- sum(complete.cases(xfile))
    nobs <- rbind(nobs, c)
  }
  ans <- data.frame(id,nobs)
  ans
}