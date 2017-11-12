# обработка данны эксперимента
# загрузка библиотек 
library("ggplot2")  # графики

d_ <- read.csv("data.csv")
head(d_)

t <- d_[2]
l <- d_[3]
l_curve <-  d_[3]

ggplot(data = d_, aes(x=t, y=l_curve))  + geom_point()
ggplot(data = d_, aes(x=t, y=l_curve, color = l_curve))  + stat_identity()
ggplot(data = d_, aes(x=t>5, y=l_curve, color = l_curve))  + geom_boxplot()

