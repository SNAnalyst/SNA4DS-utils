# Exercises Visualization Lab (Week 2)

# install.packages("igraphdata")


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

UKfaculty <- igraph::simplify(UKfaculty, remove.multiple = F, remove.loops = T) 

graph_attr(UKfaculty, "layout") <- layout.graphopt
# layout.graphopt
# layout_with_lgl

plot(UKfaculty, 
     edge.arrow.size = .2, 
     edge.color = "blue",
     vertex.color = "orange", 
     vertex.frame.color = "#ffffff", # node perimeter
     vertex.label.cex = 0.6,  # vertex label size
     vertex.label.color = "black",
     vertex.size=7,
     main="Readable plot igraph") 
# add title


# 2) make a readable plot using ggraph

library(ggraph)


ggraph::ggraph(UKfaculty, layout = "lgl") + 
  ggraph::geom_edge_arc(color = "grey", width = 0.3, strength = 0) + 
  ggraph::geom_node_point(color = 'blue', size = 4) + 
  ggplot2::ggtitle("Readable plot ggraph") +
  ggplot2::theme_void() 


# 3) What does readable mean?
# It means that the audience can understand what you are trying to communicate.
# If you want to give the idea of something messy, the base plot was ok.
# It's not ok if you want to show some features of the network


# Let's provide more information with these plots 

# 4) plot nodes attributes igraph
graph_attr(UKfaculty, "layout") <- layout.graphopt
colrs <- c("gray", "pink", "yellow", 'green')
igraph::V(UKfaculty)$color <- colrs[igraph::V(UKfaculty)$Group] 

plot(UKfaculty, 
     edge.arrow.size = .2, 
     edge.color = "blue",
     vertex.frame.color = "#ffffff", # node perimeter
     vertex.label.cex = 0.6,  # vertex label size
     vertex.label.color = "black",
     vertex.size=7,
     main="Readable plot igraph with node attributes") 

# 5) plot nodes attributes ggraph

ggraph::ggraph(UKfaculty) + 
  ggraph::geom_edge_arc(color = "grey", width = 0.3, strength = 0) + 
  ggraph::geom_node_point(color = igraph::V(UKfaculty)$Group, size = 8) +
  ggplot2::ggtitle("Readable plot ggraph with node attributes") +
  ggplot2::theme_void()


# 6) Plot edge attributes with igraph

graph_attr(UKfaculty, "layout") <- layout_with_lgl
colrs <- c("gray", "pink", "yellow", 'green')
igraph::V(UKfaculty)$color <- colrs[igraph::V(UKfaculty)$Group] 

plot(UKfaculty, 
     edge.arrow.size = .2, 
     edge.color = "blue",
     vertex.frame.color = "#ffffff", # node perimeter
     vertex.label.cex = 0.6,  # vertex label size
     vertex.label.color = "black",
     vertex.size=7,
     edge.width=0.5*E(UKfaculty)$weight,
     main="Readable plot igraph with node attributes and edge attributes") 

# 7) Plot edge attributes with graph

ggraph::ggraph(UKfaculty, layout = "lgl") + 
  ggraph::geom_edge_arc(color = "grey", strength = 0, aes(width = 0.25*weight)) + 
  ggraph::geom_node_point(size = 4) + 
  ggraph::geom_node_point(color = igraph::V(UKfaculty)$Group, size = 8) +
  ggplot2::ggtitle("Readable plot ggraph with node attributes and edge attributes") +
  ggplot2::theme_void()

# 8) Does more information always make a plot better?
# Adding information only helps if it agrees with the goal of your plot 



