
library(ggplot2)
data(package='ggplot2')

data_frame<-ggplot2::midwest

qplot(data = data_frame ,x=popblack, y=popwhite, geom = "point", color = state)
qplot(data = data_frame ,x=popblack, y=popblack, geom = "point", color = state)
qplot(data = data_frame ,x=popblack, y=popasian, geom = "point", color = state)
qplot(data = data_frame ,x=popblack, y=popamerindian, geom = "point", color = state)


qplot(data = data_frame, x = popwhite, geom = "histogram", fill = state,bins=30)
qplot(data = data_frame, x = popblack, geom = "histogram", fill = state,bins=30)
qplot(data = data_frame, x = popasian, geom = "histogram", fill = state,bins=30)
qplot(data = data_frame, x = popamerindian, geom = "histogram", fill = state,bins=30)

qplot(data = data_frame , x=state, geom = "bar", fill = state) #numero de counties
qplot(data = data_frame , x=category, geom = "bar", fill = category) #numero de counties
qplot(data = data_frame , x=inmetro, geom = "bar", fill = inmetro) #numero de counties


?midwest

ggplot2::diamonds


?diamonds

diamonds


qplot(data = diamonds, y = clarity, geom = "bar", fill = clarity)
