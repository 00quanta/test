library('ggplot2')

B <- subset(mpg,drv == 4)

ggplot(B,aes(class)) +

    # geom_bar() +
    #   facet_wrap(~drv,scales = "free_y")

    geom_bar(aes(fill = drv),position="stack") 

#×ÝÏòºÏ²¢
# ID<-c(1,2,3)
# name<-c("Jame","Kevin","Sunny")
# student1<-data.frame(ID,name)
# ID<-c(4,5,6)
# name<-c("Sun","Frame","Eric")
# student2<-data.frame(ID,name)
# total<-rbind(student1,student2)
# rmtotal
 
#¶à±íºÏ²¢
# A1 <- read.csv(file.choose(),header = TRUE)
# A2 <- read.csv(file.choose(),header = TRUE)
# total<-rbind(A1,A2)
