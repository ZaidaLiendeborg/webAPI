

#Geocoding
#Getting URL

get_url <- function(path) {
  domain <- "http://maps.google.com/maps/api/geocode/json?"
  url<- URLencode(paste0(domain,"address=", path))
  return(url)
}

target<- get_url("Hästskogatan","Linkoping")

target

typeof(dat)


#In use

dat <- fromJSON(target)
latitude <- dat$results[[1]]$geometry$location["lat"]
longitude <- dat$results[[1]]$geometry$location["lng"]
place <- dat$results[[1]]$formatted_address

latitude
longitude
place



#Getting a static map
#Construct that URL in R using paste?
base="http://maps.googleapis.com/maps/api/staticmap?center="
latitude=55.75
longitude=37.62
zoom=13
maptype="hybrid"
suffix ="&size=800x800&sensor=false&format=png"


#Possible solution
base="http://maps.googleapis.com/maps/api/staticmap?center="
latitude=55.75
longitude=37.62
zoom=20
maptype="hybrid"
suffix ="&size=800x800&sensor=false&format=png"

target <- paste0(base,latitude,",",longitude,
                 "&zoom=",zoom,"&maptype=",maptype,suffix)


#What to do next...?
download.file(target,"test.png", mode = "wb")


