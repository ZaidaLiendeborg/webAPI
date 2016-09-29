## ------------------------------------------------------------------------
library(webAPI)

url1<- getURL2R("Stockholm, Sweden") #encodes the given path into a url and return a list of geodata.

attributes(url1)

## ------------------------------------------------------------------------
#using the url1 object returned from getURL2R, we extract coordinates and name of place.

coor<- get_coor(url1)
coor

## ---- fig.show='hold'----------------------------------------------------
plot_map(coor, zoom=13, typemap="roadmap")

