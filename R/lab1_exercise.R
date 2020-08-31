
######################################################################
#### code used in the lab
######################################################################
# Read in the dataset
data(karate, package = "igraphdata")

# look at the data
igraph::print.igraph(karate)
igraph::get.graph.attribute(karate, "Citation")
igraph::get.graph.attribute(karate, "name")
igraph::get.vertex.attribute(karate, "name")
igraph::get.vertex.attribute(karate, "Faction")
igraph::get.edge.attribute(karate, "weight")

# simple plot
plot(karate)

# some measures
# betweenness
igraph::centralization.betweenness(karate, directed = FALSE)

hist(igraph::betweenness(karate, directed = FALSE), 
         breaks = 10, 
         xlab = "betweenness", 
         main = "Histogram of betweenness")
# Degree distribution
sort(igraph::degree(karate), decreasing = TRUE)

# subgroups
wc <- igraph::cluster_walktrap(karate)
wc
plot(wc, karate)

# convert to network object
karate_nw <- intergraph::asNetwork(karate)
class(karate_nw)
print(karate_nw)

# Betweenness
round(sort(sna::betweenness(karate_nw, gmode = "undirected", cmode = "undirected"), decreasing = TRUE), digits = 1)

# Degree distribution
sna::degree(karate_nw)

# Simple, ugly plot
plot(karate_nw)


#############################################
#### your exercise
#############################################

# Read in the dataset
data(macaque, package = "igraphdata")

# look at the attributes in the network data

# make a simple plot

# Calculate some measures. What do you conclude from them?
# You can calculate the ones calculated above, or others if you want.

# Now, do the same with the sna and network packages




  