data <- c(10, 15, 20, 25, 30, 35, 40, 45, 50)
cumulative_freq <- cumsum(table(data))
cumulative_perc <- cumulative_freq / sum(cumulative_freq) * 100
df <- data.frame(data, cumulative_perc)
ggplot(df, aes(x = data, y = cumulative_perc, group = 1)) +
  geom_polygon(fill = "blue", alpha = 0.3) +
  geom_line(color = "blue") +
  xlab("Data") +
  ylab("Cumulative Percentage")