library(ggplot2)


#includes current trajectory for 2023
pubs <- c(7,13,11,21,42,71,74,106,137,166)
year <- c(2014:2023)

df <- data.frame(year,pubs)

ggplot(df, aes(year,pubs))+
  geom_point(color = "lightcyan4")+
  geom_line()+
  geom_smooth(method = "lm", se = FALSE, color = "mediumpurple3")+
  theme_minimal()

lm1 <- lm(pubs ~ year,  data=df)
summary(lm1)



