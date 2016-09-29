#' Plotting the coordinates into a map
#' 
#' The function \code{plot_map} that plots the coordinates returned from the \code{\link{get_coor}} in a map of selectable types. 
#' @param dat A object returned from the function  \code{\link{get_coor}}.
#' @param zoom A integer between 3 and 20 depending on how zoomed in you want the map, high values for big zoom.
#' @param typemap A character string of which kind of map you want. Possible choices are "roadmap","satellite","hybrid" and "terrain". 
#' @return A map over the area from the coordinates in the object from \code{\link{get_coor}}
#' @examples 
#' target<-getURL2R("Linkoping, Sweden")
#' CordObj<-get_coor(target)
#' plot_map(CordObj, zoom=10, typemap="roadmap")
#' @import ggplot2
#' @import graphics
#' @import ggmap
#' @import RgoogleMaps
#' @export


plot_map<-function(dat, zoom, typemap){
  latitude <- dat$Latitude
  longitude <- dat$Longitude
  lat <- c(latitude-1, latitude +1) 
  lon <- c(longitude -1, longitude +1) 

  themap <- get_map(location = c(lon = mean(lon), lat = mean(lat)), zoom = zoom,
                      maptype = typemap, scale = 2 )

  ggmap(themap) +labs(x="Longitude", y="Latitude")

}


