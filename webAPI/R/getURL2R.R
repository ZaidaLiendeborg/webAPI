

#Geocoding
#Getting URL

getURL2R<- function(path) {
  domain <- "http://maps.google.com/maps/api/geocode/json?"
  url<- paste0(domain,"address=", path)
  url<- URLencode(url)
  Robj<- fromJSON(url)
  
  if (Robj$status != "OK"){
    stop("API request failed")
  }else{
  return(Robj)
  }
}  
library(RJSONIO)
target<- getURL2R("Linköping, Sweden")

