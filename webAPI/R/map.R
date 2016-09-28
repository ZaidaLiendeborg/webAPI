
plot_map<-function(dat, zoom, typemap){
  latitude <- dat$lat
  longitude <- dat$long
  place <- dat$results[[1]]$formatted_address
  lat <- c(latitude-1, latitude +1) #define our map's ylim
  lon <- c(longitude -1, longitude +1) #define our map's xlim

# getting the map
  themap <- get_map(location = c(lon = mean(lon), lat = mean(lat)), zoom = zoom,
                      maptype = typemap, scale = 2 )

  ggmap(themap) +labs(x="Longitude", y="Latitude")

}


