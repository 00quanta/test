library('dplyr')
library('ggplot2')
D <- read.csv(file.choose(),header = TRUE)

D1 <- 
D %>%
  filter(����=="������"|����=="�Ϻ���")
g <- ggplot(data = D1)
g + 
  geom_col(mapping = aes(x = ý��, y = Click, fill = �ն�)) +
  ggtitle("����ĸƷ��") +
  theme_classic()
    