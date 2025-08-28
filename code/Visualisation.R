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

cl <- colorRampPalette(c("cyan","chocolate","chartreuse"))(1000)
plot(b2, col=cl)

cl <- colorRampPalette(c("cyan","chocolate","chartreuse"))(100)
plot(b2, col=cl)

cl <- colorRampPalette(c("cyan","chocolate","chartreuse"))(3)
plot(b2, col=cl)

# multiframe
par(mfrow=c(1,3))

cl <- colorRampPalette(c("cyan","chocolate","chartreuse"))(1000)
plot(b2, col=cl)

cl <- colorRampPalette(c("cyan","chocolate","chartreuse"))(100)
plot(b2, col=cl)

cl <- colorRampPalette(c("cyan","chocolate","chartreuse"))(3)
plot(b2, col=cl)

# replot b2 with a different color ramp palette
https://sites.stat.columbia.edu/tzheng/files/Rcolor.pdf

dev.off()
cl <- colorRampPalette(c("cyan","chocolate","chartreuse","hotpink","maroon4","slategray4"))(100)
plot(b2, col=cl)

setwd("~/Desktop")
# setwd("C://")
pdf("mygraph.pdf")
cl <- colorRampPalette(c("cyan","chocolate","chartreuse","hotpink","maroon4","slategray4"))(100)
plot(b2, col=cl)
dev.off()

png("mygraph.png")
cl <- colorRampPalette(c("cyan","chocolate","chartreuse","hotpink","maroon4","slategray4"))(100)
plot(b2, col=cl)
dev.off()

png("mygraph.png")
par(mfrow=c(2,2))
cl <- colorRampPalette(c("cyan","chocolate","chartreuse","hotpink","maroon4","slategray4"))(100)
plot(b2, col=cl)
cl <- colorRampPalette(c("chartreuse","firebrick","cyan"))(100)
plot(b2, col=cl)
cl <- colorRampPalette(c("black","grey","light grey"))(100)
plot(b2, col=cl)
cl <- colorRampPalette(c("seagreen","seagreen1","seagreen2","seagreen3","seagreen4"))(100)
plot(b2, col=cl)
dev.off()

# Exercise: put all the images in the same column
png("mygraph3.png")
par(mfrow=c(4,1))
cl <- colorRampPalette(c("cyan","chocolate","chartreuse","hotpink","maroon4","slategray4"))(100)
plot(b2, col=cl)
cl <- colorRampPalette(c("chartreuse","firebrick","cyan"))(100)
plot(b2, col=cl)
cl <- colorRampPalette(c("black","grey","light grey"))(100)
plot(b2, col=cl)
cl <- colorRampPalette(c("seagreen","seagreen1","seagreen2","seagreen3","seagreen4"))(100)
plot(b2, col=cl)
dev.off()

# Importing the other Sentinel-2 bands
im.list()

# green band - 550nm
dev.off()
b3 <- im.import("sentinel.dolomites.b3.tif")

# red band - 665nm
b4 <- im.import("sentinel.dolomites.b4.tif")

# NIR band - 842nm
b8 <- im.import("sentinel.dolomites.b8.tif")


# stack
sent <- c(b2, b3, b4, b8)
plot(sent)

pairs(sent)

cl <- colorRampPalette(c("black","grey","light grey"))(100)
plot(sent, col=cl)
