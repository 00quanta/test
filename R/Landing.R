# total_1 <- read.csv(file.choose(),header = TRUE)
# for (i in 1:6){
#   A[i] <- read.csv(file.choose(),header = TRUE)
#   total_1 <- rbind(total, A[i])
# }

# files <- dir("E:/OTV/Landing/别克昂科威-Landing/test")
# for (i in files){
#   tempcsv <- read.csv(i)
# }

A1 <- read.csv(file.choose(),header = TRUE)
total <- rbind(A1, A2, A3, A4, A5, A6, A7)
library('dplyr')
library('tidyr')
# 筛选含有HDTC的数据, 注意修改‘HDTC’所在字段

Landing <- total %>%
  filter(grepl('HDTC5', utm_campaign)
         )
Landing2 <- mutate(Landing,
    素材 = substr(utm_campaign, nchar(as.character(Landing$utm_campaign))-5, nchar(as.character(Landing$utm_campaign))),
    素材版本 = gsub('HDTC55', 'A', 素材),
    素材版本 = gsub('HDTC56', 'B', 素材版本),
    素材版本 = gsub('HDTC57', 'C', 素材版本)
    )
Landing3 <- unite(Landing2, "端口", 网站名称, utm_medium, sep = "_")

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
