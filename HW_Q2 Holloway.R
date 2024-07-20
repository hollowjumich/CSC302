library(dplyr)
df = read.delim("/cloud/project/WorldCupMatches.csv", sep = ',', header = TRUE)

dim(df)   

summary(df)

length(unique(df[,'Stadium']))

mean(df$Attendance, na.rm=TRUE)

df %>% group_by(Home.Team.Name) %>% summarise(Total_Goals = sum(Home.Team.Goals))
df2 = df %>% group_by(Home.Team.Name) %>% summarise(Total_Goals = sum(Home.Team.Goals))

df %>% group_by(Year) %>% summarise(Average_Attendance = mean(Attendance))
