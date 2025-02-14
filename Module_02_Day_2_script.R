#### MODULE 2 DAY 2

### PART 1:  Introduction 

#set working directory
setwd("C:/Users/Jacob/Desktop/Module_02_Coding_in_R_Spring2023/")

#Reading in data
#notice the file format (.csv)
class_data_csv <- read.csv("Data/student_data.csv", header = TRUE, check.names = FALSE)

#look at the column names
names(class_data_csv)

### PART 1:  Basic Statistics

#R is useful to quickly compute statistics using pre-programmed functions
#For example, we can calculate basic stats individually
#mean
mean(class_data_csv$hours_slept)
#standard deviation
sd(class_data_csv$hours_slept)
#median
median(class_data_csv$hours_slept)
#range
range(class_data_csv$hours_slept)
#variance (dispersion of data around mean)
var(class_data_csv$hours_slept)

#Or get several descriptive statistics of the data at once
#for individual variables
summary(class_data_csv$hours_slept)
#or the whole data set
summary(class_data_csv)

#Let's do a quick experiment!
#Is our data normally distributed?
#First, visualize the distribution of our sleep data
hist(class_data_csv$hours_slept)
#Next, test the distribution for normality
#The Shapiro-Wilk test checks for normality of a distribution
#The null hypothesis of this test is that the data is normally distributed
#If you get a pvalue > 0.05 we can assume that the data is normally distributed
#Run the test
shapiro.test(class_data_csv$hours_slept)
#What is your conclusion?
#Take some time on your own to test the other variables 

#Now let's test if two variables are correlated with each other
#First, visualize the relationship between two variables
#We will do sleep and the number of hours using the phone
plot(class_data_csv$hours_slept ~ class_data_csv$minutes_phone)
#lets see if hours of sleep and time on phone is correlated
#The following test is a spearman correlation
#A p-value > 0.05 indicates that there is not a significant correlation
cor.test(class_data_csv$hours_slept, class_data_csv$minutes_phone, method = "spearman", exact = FALSE)

#Remember that statistical tests depend on the data! 
#Always make sure that you are using an appropriate test for your data.

### PART 2:  Basic visualization in R 
#plot - this functions generates a basic plot, usually a scatterplot
plot(class_data_csv$hours_slept)
#there are more types of plots that we can make, but they require different functions
#histograms
hist(class_data_csv$number_texts)
#boxplots
boxplot(class_data_csv$hours_slept ~ class_data_csv$class_standing)

#Final project
#Make a graph using the type and variable given
#Give the plot appropriate labels and a title
#Export as SVG
#Upload to jamboard
boxplot(, data = ,
     main = "Enter a Title Here", #add a title
     xlab = "Enter an x-axis label here", #add x-axis label
     ylab = "Enter a y-axis label here") #add y-axis label

hist(, data = ,
        main = "Enter a Title Here", #add a title
        xlab = "Enter an x-axis label here", #add x-axis label
        ylab = "Enter a y-axis label here") #add y-axis label
