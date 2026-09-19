# Nama = Reren Gabrela Sibarani
# NIM = 3338250038
# Kelas = 3B

# 1. Buka data airquality

data(airquality)

airquality


# 2. Buat histogram untuk variabel Wind, sertakan pula density nya

dens <- density(airquality$Wind, na.rm = TRUE)

hist(airquality$Wind,
     probability = TRUE,
     main = "Histogram Wind",
     xlab = "Wind",
     ylab = "Density",
     col = "mistyrose")

lines(dens,
      col = "red",
      lwd = 2)


# 3. Buat boxplot dan stem and leaf

boxplot(airquality$Wind,
        horiz = TRUE,
        main = "Boxplot Wind",
        xlab = "Wind",
        col = "plum")

stem(airquality$Wind)


# 4. Buat scatter plot

plot(Solar.R ~ Day,
     data = airquality,
     pch = 16,
     main = "Scatterplot Solar.R terhadap Day",
     xlab = "Day",
     ylab = "Solar.R",
     col = "darkorange")

rug(airquality$Day)

rug(airquality$Solar.R,
    side = 2)