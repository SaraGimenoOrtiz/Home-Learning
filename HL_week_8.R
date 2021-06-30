#COMPULSOTORY TASK 
# YOU RE A DATA ANALYIS AT AN ORGANITASATION. YOU HAVE GIVEN A DATA SET AND ASKED
#TO CREATE A MEANINGFUL DATA VISUALISATION USING THIS DATA

library(ggplot2)
data(package='ggplot2')

data_frame<-ggplot2::txhousing
ggplot(data_frame, aes(x = city, fill = sales)) +
   geom_bar(position = position_dodge()) +
   theme(axis.text.x = element_text(angle=90, hjust=1)) +
   labs(y = "Sales")

qplot(data = txhousing, x = year, y = sales, geom = "point", color = city)

qplot(data = txhousing, y = sales, geom = "histogram", fill = city)


qplot(data = data_frame , y=sales, geom = "bar", fill = city)

data_frame<-ggplot2::luv_colours

qplot(data = luv_colours, x = L, y = u, geom = "point")
qplot(data = luv_colours, x = L, y = v, geom = "point" )

qplot(data = luv_colours, x = L, geom = "histogram", fill = u, bins=30)
qplot(data = luv_colours, x = L, geom = "histogram", fill = v, bins=30)

qplot(data = data_frame , x=L, geom = "bar", fill = v)

ggplot(data = luv_colours,
       mapping = aes(x = L,
                     fill = factor(u))) +
   geom_histogram(bins = 9,
                  position = 'identity',
                  alpha = 0.8) +
   labs(title = 'Lenght vs. u',
        fill = 'vs motor',
        x = 'Lenght',
        y = 'u')

#ADITIONAL TASKS 
#task1 

year_2018<-c('Ene-Feb'=100, 'Mar-Apr-May'=150, 'June-July-Ago'=95,'Sep-Oct'=105, 'Nov-Dec'=200)
year_2019<-c('Ene-Feb'=120, 'Mar-Apr-May'=130, 'June-July-Ago'=100,'Sep-Oct'=125, 'Nov-Dec'=90)
year_2020<-c('Ene-Feb'=85, 'Mar-Apr-May'=100, 'June-July-Ago'=90,'Sep-Oct'=140, 'Nov-Dec'=100)

com_mat<-cbind(year_2018,year_2019,year_2020)

matplot(com_mat,type='b',pch=5,xaxt='n', xlab='', ylab='Sales')

axis(1, at=1:5, lab=names(year_2019))

legend(x = "topright", legend = c('year_2018','year_2019','year_2020'),fill = c('black', 'green','red'))

#leyend=c(year_2018,year_2019,year_2020)

#TASK 2

Name <- c("Amy", "John", "Mike",'Alba','Lewis')
Age <- c("20", "25", "19",'35','32')
Role <- c("Waiter", "Bar", "Waiter","Supervisor","Manager")
Length <- c(1, 3, 1, 5, 4)

frame <- data.frame(Name, Age, Role, Length)  

print (frame)


library(ggplot2)

#task3

vec_1=seq(1:20)
vec_2=vec_1**2

datos<-data.frame(vec_1,vec_2)

qplot(data = datos, x = vec_1, y = vec_2, geom = "point")

#Tak 4
#data(package='ggplot2')
qplot(data = frame , y=Name, geom = "bar", fill = Length)


#TASK 5

name<-readline('Enter your name:')
age<-readline('Enter your age:')
hello<-paste('Your name is', name, 'and you re', age)
print(hello)
print(name)
print(age)

#task6

vec_3<-seq(1:50)
print(vec_3)
vec_real<-vec_3[20:50]
print(vec_real)
#vec_real[31]

#add<-seq(1:31)*0
sum<-0
i=1
for (i in 1:length(vec_real)){
      #i=i+1
      print(i)
      add=sum+vec_real[i]
      #print(add)
      sum<-add
      print(sum)
      }

mean=sum/i
result=paste('The adding is', sum, 'and the mean is',mean)
print(result)


#TASK 7



vector_random<-sample(-50:50,10,replace=T)
   # sample-> random integer values
   # runif -> random decimal values
   #-50:50 -> significa el intervalo
   # 10-> cuantos numeros queremos
   # replace=T/F -> T si queremos que puedan repetirse, y F si no se pueden repetir

#OPTIONAL CHALLENGE#

#TASK 1

a<-readline('How many Fibonacci numbers do you want?:')

#in our case a=10, but in case you want more.

vec_fib<-seq(1:a)*0
vec_fib[1]=0
vec_fib[2]=1

for (i in 3:a){
   
   vec_fib[i]=vec_fib[i-1]+vec_fib[i-2]

}
print(vec_fib)


#TASK 2

vec<- seq(1L:100L)
for(i in 1:length(vec)){
   
   div_1<-vec[i]%%3L
   div_2<-vec[i]%%5L
   
   #print(i)
   #print(div_1)
   #print(div_2)
   
   if (div_1==0 & div_2!=0){
      ans_1=paste(vec[i], "Fizz")
      print(ans_1)
   } else if(div_1!=0 & div_2==0){
      ans_2=paste(vec[i], "Buzz")
      print(ans_2)
   } else if(div_1==0 & div_2==0){
      ans_2=paste(vec[i], "FizzBuzz")
      print(ans_2)
   } else 
      print(vec[i])
   
}

