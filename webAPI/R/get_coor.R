#JSON to R object

get_coor<- function(Robj){
  lat<- Robj$results[[1]]$geometry$location["lat"]
  long<- Robj$results[[1]]$geometry$location["lng"]
  place<- Robj$results[[1]]$formatted_address
  coor<- list(lat=lat, long=long, place=place)
  return(coor)
}


