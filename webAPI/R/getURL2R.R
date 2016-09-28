

#Geocoding
#Getting URL

getURL2R<- function(path) {
  domain <- "http://maps.google.com/maps/api/geocode/json?"
  url<- paste0(domain,"address=", path)
  url<- URLencode(url)
  Robj<- fromJSON(url)
  
  if (Robj$status != "OK"){
    stop("API request failed")
  }
  return(Robj)
}

target<- get_url("Linköping, Sweden")

target


#In use


latitude <- dat$results[[1]]$geometry$location["lat"]
longitude <- dat$results[[1]]$geometry$location["lng"]
place <- dat$results[[1]]$formatted_address

latitude
longitude
place

dat$status

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
zoom=13
maptype="hybrid"
suffix ="&size=800x800&format=png"

target <- paste0(base,latitude,",",longitude,
                 "&zoom=",zoom,"&maptype=",maptype,suffix)


#What to do next...?
download.file(target,"test.png", mode = "wb")

class(dat)
