#'Get URL and harvest geodata using Google Geocode API 
#'
#'The \code{getURL2R} takes the postal number, names of the street, city or country in the world encoded into a url. The url then returns a json formatted geodata and then converted to an R object.  
#'@param path A character string of postal number, names of the street, city or country in the world
#'@return A list containing the Geodata about the address typed in the path such as coordinates. 
#'@examples
#'getURL2R("Stockholm, Sweden")
#'getURL2R("58253, Linkoping")
#'@import RJSONIO
#'@import utils
#'@export 


getURL2R<- function(path) {
  if (!(is.character(path))){
    stop("Insert character string")
  }
    if(grepl("ö",path) | grepl("å",path) | grepl("ä",path)){
      stop("Cant handle swedish letters. Replace with 'o' or 'a'")
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

