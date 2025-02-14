#Module 02 Day 1 Script

#notice that there are two types of text in an R script

#COMMENTS are preceded by a pound sign and are colored green. These are not lines of code, they are meant so that the coder can leave comments in the code to help others understand it.

print("CODE lines are not preceded by a pound sign and they can be run to produce a result. If you run this line of code, it will print this message in the console! Run this line of code by moving your text cursor to the word 'print' and the hitting ctrl.")

#Next, set your working directory.
#Enter the file path to the folder on your desktop
setwd("C:/Users/jacobheil/Desktop/Module_02_Coding_in_R")
#or click Session -> Set Working Directory -> To Source File Location

### Part 1:  R Basics

#In R we use functions to carry out tasks
#for example, we can use a function to print a message
print("Hello World!")
#or do math
sum(1+1)
#Many functions are included with R when you install it, but there are also more specialized functions that must be added to R in packages.
#Packages are pre-written R programs that contain useful functions to help you do more complex tasks in R
#packages must be installed for you to use them with the function install.packages()
#Install the package called "swirl"
install.packages("swirl") 
#When you install a package, then name of the package must be in quotation marks and the name of the package is case sensitive.
#Packages only need to be installed once. There is no need to install a package each time you use 

#load a package from the library, do this for every new session
#this time you should not put the package name in quotations
library(swirl)

#putting a question mark in front of a package will pull up its help info
?swirl

### PART 2: Data Storage

#Create an object
vector1 <- c(1,2,3,4)
#this object is a vector, or a string of elements
#notice that this vector is made with a function, c(), which stands for concatenate
#the function creates the vector and the arrow, <-, assigns the vector to a named variable, or object

#By typing in the name of your object you can check the contents of what you just made
vector1

#What is the class of your object?
class(vector1)

#vectors can also contain characters
vector2 <- c("A", "B", "C", "D")
class(vector2)

#or a mixture
vector3 <- c("A", 1, "B", 2)
class(vector3) #a vector with characters and numbers will always be a character vector

#dataframes are made up of rows and columns
dataframe1 <- data.frame(vector1, vector2, vector3) 

#You can look at your new dataframe by typing in its name
dataframe1
#or by using the View() function. Remember that R is case sensitive and the V in View is capitalized.
View(dataframe1)

#Now use indexing to explore your dataframe
#display a column by number
dataframe1[,1] #display column 1

#What is the data point in row 4, column 3?
dataframe1[4,3]

#display a column by name (works for rows too)
dataframe1[,"vector1"]

#Another way to index columns is by using the $
dataframe1$vector1

#Notice that the columns are still vectors and have different classes
class(dataframe1[,1])
class(dataframe1[,2])

#Part 3: Data manipulation

#In R we can take data and apply functions to manipulate and explore it
#For example we can do math 
sum(vector1)

sum(vector1[1] + vector1[3])

student_data <- read.csv("Data/student_data.csv")

sum(student_data$hours_slept)
mean(student_data$hours_slept)

#Challenge 1
#In a single line of code add the values in vector1 and store them in a new object named “challenge”.

