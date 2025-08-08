# code for visualising 
library (terra)
library (imageRy)
#to install github packages
library (devtools)
devtools::install_github ("ducchiorocchin/imageRy")

#improting data
im.list()

# sentinel bands
#https://custom-scripts.sentinel-hub.com/custom-scripts/sentinel-2/bands/

# importing the data
b2 <- im.import("sentinel.dolomites.b2.tif")
