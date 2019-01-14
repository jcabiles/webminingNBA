# store URL
url <- "https://www.basketball-reference.com/leagues/NBA_2018.html"


library(dplyr) # allows use of pipes
library(RCurl) # contains getURL() which fetches web content
library(XML) # allows parsing of webpages

webpage <- url %>%
  getURL() %>%
  readHTMLTable(stringsAsFactors = FALSE)