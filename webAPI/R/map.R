

dat<-get_coor()

latitude <- dat$results[[1]]$geometry$location["lat"]
longitude <- dat$results[[1]]$geometry$location["lng"]
place <- dat$results[[1]]$formatted_address
install.packages("RgoogleMaps")
library(RgoogleMaps)
lat <- c(latitude-1, latitude +1) #define our map's ylim
lon <- c(longitude -1, longitude +1) #define our map's xlim
center = c(mean(lat), mean(lon))  #tell what point to center on
zoom <- 10 #zoom: 1 = furthest out (entire globe), larger numbers = closer in
terrmap <- GetMap(center=center, zoom=zoom, maptype= "satallite", destfile = "satallite.png")


install.packages("ggmap")
library(ggplot2)
library(ggmap)

lon <- c(-38.31,-35.5)
lat <- c(40.96, 37.5)
df <- as.data.frame(cbind(lon,lat))

# getting the map
mapgilbert <- get_map(location = c(lon = mean(lon), lat = mean(lat)), zoom = 15,
                      maptype = "roadmap", scale = 2)

# plotting the map with some points on it
ggmap(mapgilbert) +
  geom_point(data = df, aes(x = lon, y = lat, fill = "red", alpha = 0.8), size = 5, shape = 21) +
  guides(fill=FALSE, alpha=FALSE, size=FALSE)