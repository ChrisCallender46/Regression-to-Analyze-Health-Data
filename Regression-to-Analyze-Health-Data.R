num_cols <- unlist(lapply(insurance, is.numeric))  
plot(insurance[,num_cols])
round(cor(insurance[,num_cols]),2)

smoker = as.factor(insurance$smoker)
sex = as.factor(insurance$sex)
region = as.factor(insurance$region)

boxplot(insurance$charges ~ smoker, main ='Smoker')
boxplot(insurance$charges ~ sex, main ='sex')
boxplot(insurance$charges ~ region, main ='region')

model1 = lm(charges ~. , data =insurance)

summary(model1)

# r**2 = .7509
# This means 75.09% of the variance is explained by the model
# The most significant variables that affect charges are age, bmi, children, and smoker
