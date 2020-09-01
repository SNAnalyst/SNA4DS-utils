# Exercises Visualization Lab (Week 2)

# install.packages("igraphdata")
library(igraphdata)

data(UKfaculty, package = "igraphdata")

# Explore the network
# Overview
igraph::print.igraph(UKfaculty)

# info about the network
igraph::get.graph.attribute(UKfaculty, "Date")
igraph::get.graph.attribute(UKfaculty, "Citation")
igraph::get.graph.attribute(UKfaculty, "Author ")

# node attributes
igraph::get.vertex.attribute(UKfaculty, "Group")

# edge attributes
igraph::get.edge.attribute(UKfaculty, "weight")

# Let's visualize it
plot(UKfaculty)

# this base plot is not really easy to read 

# 1) make a readable plot using igraph
# 2) make a readable plot using ggraph



# 3) What does readable mean?



# Let's provide more information with these plots 

# 4) plot nodes attributes igraph

# 5) plot nodes attributes ggraph


# 6) Plot edge attributes with igraph

# 7) Plot edge attributes with graph


# 8) Does more information always make a plot better?

