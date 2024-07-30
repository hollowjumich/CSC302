library(ggplot2) 
library(tidyr)
library(dplyr)

flights = read.csv('/cloud/project/flights.csv')

p1<-ggplot(data=flights) + geom_line(aes(x=year, y=passengers,color=month)) + theme_bw() + xlab('')
                                 
ggsave('/cloud/project/flights.jpg', p1)
