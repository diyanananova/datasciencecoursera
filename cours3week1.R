outcome_read<- read.csv("/Users/diyanananova/Desktop/datasciencecoursera/getdata-data-ss06hid.csv")
out <-data.frame(outcome_read)  
out_val <- as.numeric(out$VAL)
bilanz <- out %>% 
  filter(VAL >= 24) 
bilanz

#Question 3
dat <- read_xlsx("/Users/diyanananova/Desktop/datasciencecoursera/getdata-data-DATA.gov_NGAP.xlsx")
dat_extr <- dat[18:23, 7:15]
sum_dat_extr <- sum(dat$Zip*dat$Ext,na.rm=T)
sum_dat_extr

fileUrl1 <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FDATA.gov_NGAP.xlsx"
download.file(fileUrl1, destfile = "./Dataset/Quiz1-03.xlsx", method = "curl")

library(xlsx)
col <- 7:15
row <- 18:23
dat <- read.xlsx("./Dataset/Quiz1-03.xlsx", sheetIndex=1, colIndex = col, rowIndex = row)
dat


#Question 4

library(XML)
fileUrl3 <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Frestaurants.xml"
BalResto <- xmlTreeParse(sub("s", "", fileUrl3), useInternal=TRUE)
rootNode <- xmlRoot(BalResto)

zip <- xpathSApply(rootNode, "//zipcode", xmlValue)
sum(zip == 21231)

#Question 5

outcome_read_5<- read.csv("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06pid.csv")
out_5 <-data.frame(outcome_read_5)  
