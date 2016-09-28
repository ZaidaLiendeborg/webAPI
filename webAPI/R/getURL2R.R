#'Harvest coordinates using Google Geocode API
#'
#'The function gets the wanted coordinates using Google Geocode API
#'@param path A character string of a street, city or an adress in the world
#'@return A list containin the Geocode domain and the url used to get the coordinates. 
#'@examples
#'getURL2R("Stockholm, Sweden")
#'getURL2R("58253, Linkoping")
#'@import RJSONIO
#'@export 
getURL2R<- function(path) {
  if (!(is.character(path))){
    stop("Insert character string")
  }else{
  domain <- "http://maps.google.com/maps/api/geocode/json?"
  url<- paste0(domain,"address=", path)
  url<- URLencode(url)
  Robj<- fromJSON(url)
  
  if (Robj$status != "OK"){
    stop("API request failed")
  } 
  
  else{
    return(Robj)
  }
  }
}  

