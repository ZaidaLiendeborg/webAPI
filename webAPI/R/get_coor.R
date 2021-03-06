#'Harvest coordinates using Google Geocode API
#'
#'The \code{get_coor} function extracts the coordinates from an object returned from the \code{\link{getURL2R}} function. 
#'@param Robj An object returned from the \code{\link{getURL2R}} function. 
#'@return A list containing the longitude, latitude and place 
#'@examples 
#'target<-getURL2R("Linkoping, Sweden")
#' CordObj<-get_coor(target)
#' @export
get_coor<- function(Robj){
  if (class(Robj) != "list"){
    stop("Robj must be a list.")
  } 
  else{
    lat<- Robj$results[[1]]$geometry$location["lat"]
    long<- Robj$results[[1]]$geometry$location["lng"]
    place<- Robj$results[[1]]$formatted_address
    coor<- list(Latitude=lat, Longitude=long, Place=place)
    return(coor)
  }
}
