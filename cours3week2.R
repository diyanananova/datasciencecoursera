# cours 3 week 2

# Question 1 : 9 years ago


# answer:2013-11-07T13:25:07Z

# 1. Find OAuth settings for github:
#    http://developer.github.com/v3/oauth/
oauth_endpoints("github")

# 2. To make your own application, register at
#    https://github.com/settings/developers. Use any URL for the homepage URL
#    (http://github.com is fine) and  http://localhost:1410 as the callback url
#
#    Replace your key and secret below.
myapp <- oauth_app("github",
                   key = "56b637a5baffac62cad9",
                   secret = "8e107541ae1791259e9987d544ca568633da2ebf"
)

# 3. Get OAuth credentials
github_token <- oauth2.0_token(oauth_endpoints("github"), myapp)

# 4. Use API
gtoken <- config(token = github_token)
req <- GET("https://api.github.com/rate_limit", gtoken)
stop_for_status(req)
content(req)

# Question 2
acs <- read.csv("/Users/diyanananova/Desktop/datasciencecoursera/getdata-data-ss06pid.csv")
# answer: sqldf("select pwgtp1 from acs where AGEP < 50")
#question 3 

sqldf("select distinct AGEP from acs")

#question 4

url <- "http://biostat.jhsph.edu/~jleek/contact.html"
read_url <- readLines(url)

cou_line <- nchar(read_url,type = "chars")

#answer:45 31  7 25

#question 5
#answer: 32426.7

read_url5 <- read.fwf(file = "https://d396qusza40orc.cloudfront.net/getdata%2Fwksst8110.for",   skip=4,
                      widths=c(12, 7, 4, 9, 4, 9, 4, 9, 4))
sum_read_url5 <- sum(read_url5$V4, na.rm = FALSE)
