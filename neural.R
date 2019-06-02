#everything starts from 1 in R, not 0
#while loop as usual
#defining a vector: c(1,2,7,9)
#all elements in a vector must have same datatype
#even if one element in the vector is string, all will be converted to string...no error thrown
#vector can be created using seq() too. Adv: steps can be added
library(neuralnet)
library(readxl)

df <- read_excel("Data for Project.xlsx")

train=df[1:20,]
test=df[21:30,]
#testx=test[1:14]
View(testx)
#testy=test[15:17]
View(testy)

model = neuralnet(BL+LWL+HWL~AF3+F7+F3+FC5+T7+P7+O1+O2+P8+T8+FC6+F4+F8+AF4,train,hidden=8,rep=50,algorithm="rprop+",linear.output = FALSE)
plot(model)
result1 <- predict(model, testx)
print(result1)