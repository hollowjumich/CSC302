library(dplyr)
df = read.delim("/cloud/project/metabolite.csv", sep = ',', header = TRUE)

#a
df %>% group_by(Label) %>% summarize(Total = length(Label))

#b
sum(is.na(df))
colSums(is.na(df))  

#c
df2=df[is.na(df['Dopamine'])==F, ]

#d
#sum(is.na(df2$c4.OH.Pro))
#median(df2$c4.OH.Pro)

df2$c4.OH.Pro[is.na(df2$c4.OH.Pro)] <- median(df2$c4.OH.Pro, na.rm=TRUE)

sum(is.na(df2$c4.OH.Pro))
median(df2$c4.OH.Pro)

#e
df3<- df2[(colMeans(is.na(df2))<0.25)==TRUE]

