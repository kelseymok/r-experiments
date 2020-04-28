install.packages("ggplot2")
library("ggplot2")

colour = sample(c("green","blue","purple"), size=100, replace=TRUE)
number = sample(1:200, size=100, replace=TRUE)
df = data.frame(number,colour)


ggplot(df, aes(x=number,y=colour, color=colour)) + geom_violin() + coord_flip() + geom_boxplot(width=0.1) + scale_color_manual(values=c("#0000FF", "#008000", "#800080"))