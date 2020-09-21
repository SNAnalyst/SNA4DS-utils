
library(magrittr, quietly = TRUE, verbose = FALSE, warn.conflicts = FALSE)

par(mar = c(0,0,0,0) + .05)

net <- igraph::graph_from_literal(A--B--C--D)
edge_names <- apply(igraph::as_edgelist(net), 1, paste0, collapse = "")
igraph::plot.igraph(net, layout = igraph::layout_in_circle,
                    edge.label = edge_names)

net_line <- igraph::make_line_graph(net)
igraph::V(net_line)$name <- edge_names
igraph::plot.igraph(net_line, edge.label = c("B", "C"), layout =
                      igraph::layout_in_circle)


net2 <- igraph::graph_from_literal(A-+B-+C++A)
edge_names <- apply(igraph::as_edgelist(net2), 1, paste0, collapse = "")
igraph::plot.igraph(net2, layout = igraph::layout_in_circle,
                    edge.label = edge_names)

net2_line <- igraph::make_line_graph(net2)
igraph::V(net2_line)$name <- edge_names
igraph::plot.igraph(net2_line, edge.label = c("A", "A", "B", "C", "C"),
                    layout = igraph::layout_in_circle)

SNA4DS::centralityChart(net_line, path = TRUE)

data(karate, package = "igraphdata")
wc <- igraph::cluster_walktrap(karate)
wc

igraph::membership(wc)

fc <- igraph::fastgreedy.community(karate)
fc
plot(fc, karate)

lc <- igraph::cluster_louvain(karate)
lc
plot(lc, karate)


data(yeast, package = "igraphdata")
yeast %>%
  igraph::fastgreedy.community() %>%
  igraph::modularity()

yeast %>%
  igraph::walktrap.community() %>%
  igraph::modularity()

yeast %>%
  igraph::cluster_louvain() %>%
  igraph::modularity()

# You can use `igraph::membership(wc)`, `igraph::sizes(wc)`, and `igraph::print(wc)`
# to compare community assignment.
