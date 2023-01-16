
#Question 2: Association Rules Mining using apriori algorithm
library(arules)
library(arulesViz)

trans = read.transactions("item_list.csv", header=TRUE, sep = ",")
trans

library("arulesViz")
summary(trans)
rules <- apriori(trans, parameter=list(support=0.001, confidence=0.05))
rules
inspect(head(rules, n = 3, by ="lift"))
args(getS3method("plot", "rules"))

plot(rules)
head(quality(rules))
plot(rules, measure = c("support", "lift"), shading = "confidence")
plot(rules, method = "two-key plot")

sel <- plot(rules, measure=c("support", "lift"), shading = "confidence",interactive = TRUE)

#2.
rules <- apriori(trans, parameter=list(support=0.003, confidence=0.02))
rules

inspect(head(rules, n = 3, by ="lift"))

                         