# EXERCICES1
# We now create our dataframe
library(ISLR)
library(dplyr)
mydata <- data.frame(College)
# View(mydata)
str(mydata)
summary(mydata)
# code chunk here
pairs(mydata[,1:10])
# code chunk here
boxplot(Outstate~Private,
        data=mydata,
        xlab="Private",
        ylab="Outstate")
mydata <- mydata %>% mutate(Elite = case_when(mydata$Top10perc > 50 ~ "Yes",
                                              TRUE ~ "No"))
# View(mydata)  # 78 Elite
# code chunk here
boxplot(Outstate~Elite,
        data=mydata,
        xlab="Elite",
        ylab="Outstate")
# code chunk here
hist(mydata$Apps,
     breaks=50,
     xlim=c(0,25000),
     main="Apps")
# code chunk here
hist(mydata$Enroll,
     breaks=25,
     main="Enroll")
# code chunk here
hist(mydata$Expend,
     breaks=25,
     main="Expend")
# code chunk here
hist(mydata$Outstate,
     main="Outstate")

