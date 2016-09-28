install.packages("httr")
library(httr)

github_api <- function(path) {
  url <- modify_url("http://www.val.se/val/val2014/statistik", path = path)
  GET(url)
}

resp <- github_api("/index.html")
resp

GET("http://www.val.se/val/val2014/statistik/index.html")

http_status(resp)
content(resp, "text", encoding = "ISO-8859-1")
