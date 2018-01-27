d <- subset (pressure, temperature!=0)
regresion2 <- lm(pressure ~ temperature + I(temperature^2), data = d)
#summary(regresion2)
plot(pressure,xlab="temperatura",ylab="presion",main="Temperatura vs Presion",col="red")
library(ggplot2)
qplot(temperature, pressure, data=d, geom=c("point", "smooth"), method="lm", formula= y ~ poly(x, 2),main ="Ajuste modelo cuadratico",xlab = "Temperatura",ylab = "Presion")




```{r, results='asis'}
knitr::kable(summary(regresion2))
```