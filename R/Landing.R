# for (i in 1:2){
A1 <- read.csv(file.choose(),header = TRUE)
# }
total<-rbind(A1,A2)

library('dplyr')
# 筛选含有HDTC的数据
Landing <- filter(total, grepl('HDTC5', utm_media))
fix()
useful <- group_by(Landing, 网站名称, utm_source, 城市, utm_media)
# 统计一周分城市总landing
by_city <- summarise(useful,
                     landing = sum(访问数, na.rm = TRUE)
)
final <- filter(by_city, landing >= 10)
# 输出结果为.csv
write.csv(final,file = "E:/OTV/xuefulan-Landing.csv")