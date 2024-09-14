library(ggplot2)

df <- read.csv('westbrook_v_durant.csv')

p <- ggplot(df, aes(x = Season, y = Calc, color = Initals, group=1)) +
  geom_step(stat = "identity") + ggtitle("Westbrook vs Durant") +
  geom_text(aes(label = Calc), vjust = 1.5, colour = "blue")
p$labels$colour <- "Players"
p


