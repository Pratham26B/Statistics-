data <- c(10, 15, 20, 25, 30, 35, 40, 45, 50)
cumulative_freq <- cumsum(table(data))
cumulative_perc <- cumulative_freq / sum(cumulative_freq) * 100
plot(c(0, data), c(0, cumulative_perc), type = "s", xlab = "Data", ylab = "Cumulative Percentage")