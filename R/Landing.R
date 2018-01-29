# for (i in 1:2){
A1 <- read.csv(file.choose(),header = TRUE)
# }
total<-rbind(A1,A2)

library('dplyr')
# 筛选含有HDTC的数据
Landing <- filter(total, 
                  grepl('HDTC5', utm_media)
                  )
Landing2 <- group_by(Landing, 
                     网站名称, 
                     utm_source, 
                     城市, 
                     utm_media
                     )
Landing3 <- mutate(Landing2,
                   素材 = substr(utm_media, 30, 35), # nchar在这种情况如何运用 nchar('HS-201711478_INT324_20071024_HDTC50')
                   素材分类 = gsub('HDTC50', '科迈罗', 素材)
                   )

# 统计一周分城市总landing
by_city <- summarise(Landing3,
                     landing = sum(访问数, na.rm = TRUE)
)
final <- filter(by_city, landing >= 10)
# 输出结果为.csv
write.csv(final,file = "E:/OTV/xuefulan-Landing.csv")

gsub('HDTC50', '科迈罗', utm_media)
