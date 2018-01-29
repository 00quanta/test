library('dplyr')
library('ggplot2')
D <- read.csv(file.choose(),header = TRUE)

D1 <- 
D %>%
  filter(地域=="北京市"|地域=="上海市")
g <- ggplot(data = D1)
g + 
  geom_col(mapping = aes(x = 媒体, y = Click, fill = 终端)) +
  ggtitle("凯迪母品牌") +
  theme_classic()
    