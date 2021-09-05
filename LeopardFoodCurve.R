library(vegan)
library(dplyr)
Leopard = read.csv("LeopardFood.csv", header=TRUE)
names(Leopard)
row.names(Leopard)
LeopardData = Leopard[2:12]
LeopardRF = specaccum(LeopardData, method = "rarefaction", 
                      permutations = 1000)
plot(LeopardRF, xlab="Number of scats", ylab="Species richness", lwd=1)
with(LeopardRF, arrows(sites, richness - (2 * sd), sites, richness + (2 * sd),
                    angle = 90, code = 3, length = 0.05))






