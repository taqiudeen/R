library(ggplot2)
library(ggthemes)
library(dplyr)
df<- read.csv('total_orders_by_state.csv')
head(df)
MainStates <- map_data("state")
df2 <- full_join(df, MainStates, by = "region")
> p <- ggplot()
> p <- p + geom_polygon( data=df2, 
                         +                        aes(x=long, y=lat, group=group, fill = TTL), 
                         +                        color="white", size = 0.2) 
> p