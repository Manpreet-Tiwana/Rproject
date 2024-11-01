#Choose a dataset from a repository like Kaggle or UCI Machine Learning Repository and perform exploratory data analysis using R. Explore the distribution of variables,identify outliers,and visualize relationships between variables using plots like histograms, scatter plots, and boxplots.
data(iris)
summary(iris)
par(mfrow = c(2, 2))
hist(iris$Sepal.Length, main = "Sepal Length", xlab = "cm")
hist(iris$Sepal.Width, main = "Sepal Width", xlab = "cm")
hist(iris$Petal.Length, main = "Petal Length", xlab = "cm")
hist(iris$Petal.Width, main = "Petal Width", xlab = "cm")
# Boxplots for each variable
par(mfrow = c(2, 2))
boxplot(iris$Sepal.Length, main = "Sepal Length", horizontal = TRUE)
boxplot(iris$Sepal.Width, main = "Sepal Width", horizontal = TRUE)
boxplot(iris$Petal.Length, main = "Petal Length", horizontal = TRUE)
boxplot(iris$Petal.Width, main = "Petal Width", horizontal = TRUE)
# Scatter plots for each pair of variables
pairs(iris[, -5])