
library(readxl)
library(class)
library(gmodels)
library(caret)
library(ggplot2)
library(reshape2)
library(DataExplorer)
library(randomForest)
library(ROCR)
library(e1071)
library(dplyr)

df <- read_excel("Downloads/Data for publication_072820.xlsx")
View(df)
head(df)

#Clean Data
sum(is.na(df))
colSums(is.na(df))
df1 <- na.omit(df)
sum(is.na(df1))
colSums(is.na(df1))

#Exploratory Data Analysis 
View(df1)
summary(df1)
str(df1)

hist(df1$age, main = 'Age of Covid-19 Patients', xlab = 'Age', col = 'blue')
hist(df1$race, main = 'Race of Covid-19 Patients', xlab = 'Race', col = 'blue')
hist(df1$sex, main = 'Sex of Covid-19 Patients', xlab = 'Sex', col = 'blue')

#Normalize Data
df2 <- df1
normalize <- function(x) {
  return ((x - min(x)) / (max(x) - min(x)))
}
df2[1:19] <- as.data.frame(lapply(df2[1:19], normalize))

#Create Train and Test datasets
View(df2)
df2$Status_comp = NULL
df2$Seizure_comp <- as.factor(df2$Seizure_comp)
summary(df2)
str(df2)

set.seed(789)
ind <- sample(2, nrow(df2), replace=TRUE, prob=c(0.7, 0.3))
train <- df2[ind==1,]
test <- df2[ind==2,]

dim(train)
dim(test)

#Logistic Regression 
table(df2$Seizure_comp)

log <- glm(Seizure_comp ~., data = df2, family = binomial())
summary(log)

confint(log)
coef(log)
exp(coef(log))
exp(confint(log))

fit_model <- train(Seizure_comp ~., data = train, method = 'glm', family = binomial())
pred <- predict(fit_model, test, type = "prob")[,2] 
table(pred, test$Seizure_comp)
confusionMatrix(table(pred, test$Seizure_comp))

#Random Forest
model <- randomForest(Seizure_comp ~., data = train)
model

pred1 <- predict(model, newdata = test, type = "prob")[,2]
table(pred1, test$Seizure_comp)

(60)/nrow(test)

#ROC Curve 
LRpred <- prediction(pred, test$Seizure_comp)
perf <- performance(LRpred, "tpr", "fpr")
plot(perf, colorize = TRUE, colorize.palette = viridis::magma(256))
auc = performance(LRpred, measure = "auc")
print(auc@y.values)

RFpred <- prediction(pred1, test$Seizure_comp)
perf1 <- performance(RFpred, "tpr", "fpr")
plot(perf1, colorize = TRUE, colorize.palette = viridis::magma(256))
auc1 = performance(RFpred, measure = "auc")
print(auc1@y.values)

#K-fold Cross Validation
control <- trainControl(method="repeatedcv", number=10, repeats=3)
metric <- "Accuracy"
seed <- 6

set.seed(seed)
fit.lr <- train(Seizure_comp~., data=df2, method="glm", metric=metric, trControl=control)
print(fit.lr)

set.seed(seed)
fit.rf <- train(Seizure_comp~., data=df2, method="rf", metric=metric, trControl=control)
print(fit.rf)
plot(fit.rf)









  
  
  

