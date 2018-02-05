d <- subset (pressure, temperature!=0)
regresion2 <- lm(pressure ~ temperature + I(temperature^2), data = d)
#summary(regresion2)
plot(pressure,xlab="temperatura",ylab="presion",main="Temperatura vs Presion",col="red")
library(ggplot2)
qplot(temperature, pressure, data=d, geom=c("point", "smooth"), method="lm", formula= y ~ poly(x, 2),main ="Ajuste modelo cuadratico",xlab = "Temperatura",ylab = "Presion")




```{r, results='asis'}
knitr::kable(summary(regresion2))
```

library(plotly)
p <- plot_ly(alpha = 0.1) %>%
  add_histogram(x = cars$speed) %>%
  add_histogram(x = cars$dist) %>%
  layout(barmode = "overlay")
p


p <- plot_ly(data = iris, x = ~Sepal.Length, y = ~Petal.Length, color = ~Species)


p <- plot_ly(x = cars$speed, type = "histogram")


p1 <- plot_ly(x = cars$speed, type = "histogram")

p2 <- plot_ly(x = cars$speed, type = "histogram")

subplot(p1, p2) %>% hide_legend()
regresion <- lm(cars$dist ~ cars$speed, data = cars)
abline(regresion,col="red")
p <- plot_ly(data = cars,x=cars$speed,y=cars$dist,type = "scatter")
p
#add_trace(y = ~regresion, name = 'Regresion')
add_lines(y = ~regresion)



