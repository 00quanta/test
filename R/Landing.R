# 读取所需.csv文件
files <- list.files(path = "E:/OTV/Landing/R-test/", pattern = '\\.csv')
files <- paste("E:/OTV/Landing/R-test/", files, sep = "")
tables <- lapply(files, read.csv, header = TRUE)
combined.tables <- do.call(rbind, tables)
# s <- sapply(combined.df, is.numeric)
# colMeans(combined.df[s])

library('dplyr')
library('tidyr')
# 筛选含有HDTC的数据, 注意修改‘HDTC’所在字段
Landing <- total %>%
  filter(grepl('HDTC5', utm_campaign)
         )
Landing2 <- mutate(Landing,
    素材 = substr(utm_campaign, nchar(as.character(Landing$utm_campaign))-5, nchar(as.character(Landing$utm_campaign))),
    # 根据编号区分素材版本
    素材版本 = gsub('HDTC55', 'A', 素材),
    素材版本 = gsub('HDTC56', 'B', 素材版本),
    素材版本 = gsub('HDTC57', 'C', 素材版本)
    )
# 删除端口错误数据
Landing3 <- unite(Landing2, "端口", 网站名称, utm_medium, sep = "_") 
# ？为什么此段与Landing2结合得到的substr‘素材’会不同

by_city <- Landing3 %>%
  group_by(utm_source,
           # utm_medium, 
           端口, 
           素材版本,
           城市
           ) %>%
  filter(素材版本 %in% c('A', 'B', 'C')) %>%
  filter(端口 %in% c('别克官网-PC_PC', '别克官网-移动_APP')) %>%
  summarise(landing = sum(访问数, na.rm = TRUE)
  ) 
# %>%
#   filter(landing > 10) %>%
  # arrange(素材版本)
# 输出结果为.csv
write.csv(by_city,file = "E:/OTV/angkewei-Landing.csv")


a <- c("foo_5", "bar_7")
a <- gsub(".*_", "", a)
