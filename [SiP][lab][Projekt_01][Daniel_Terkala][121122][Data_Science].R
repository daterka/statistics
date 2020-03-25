library(MASS)
data(painters)

# Frequency Distribution

composition_scores = painters$Composition
composition_scores.freq = table(composition_scores)
composition_scores.freq
cbind(composition_scores.freq)

# Histogram

hist(composition_scores, right=FALSE)

# Bar Graph

barplot(composition_scores.freq, main = "Bar plot of Composition scores", xlab = "score value", ylab = "number of occurences")

# Pie Chart
pie(composition_scores.freq, main = "Pie Chart of composition scores")

# Cumulative Frequency Distribution

eruption_waiting_periods = faithful$waiting
breaks = seq(30, 110, by=10)
eruption_waiting_periods.cut = cut(eruption_waiting_periods, breaks, right = FALSE)
eruption_waiting_periods.freq = table(eruption_waiting_periods.cut)
eruption_waiting_periods.cumfreq = cumsum(eruption_waiting_periods.freq)
eruption_waiting_periods.cumfreq

# Grafical represemtation of Cumulative Frequency Distribution

cum_freq0 = c(0, eruption_waiting_periods.cumfreq)
plot(breaks, cum_freq0, main="Eruption waiting periods", xlab="Waiting time to next eruption (in mins)", ylab="Cumulative eruption waiting periods")
lines(breaks, cum_freq0)

# Measures of Center

find_mode <- function(x){
  ux <- unique(x)
  ux[which.max(tabulate(match(x, ux)))]
}

eruptions = faithful$eruptions

erupt.mean = mean(eruptions)
erupt.median = median(eruptions)
erupt.mode = find_mode(eruptions)

erupt.mean 
erupt.median
erupt.mode

# Measures of Variability

erupt.min = min(eruptions)
erupt.max = max(eruptions)
erupt.range =  erupt.max - erupt.min
erupt.variance = var(eruptions)
erupt.stadard_dev = sd(eruptions)
erupt.quantile_1 = quantile(eruptions, probs = .25)
erupt.quantile_3 = quantile(eruptions, probs = .75)
erupt.iqr = erupt.quantile_3 - erupt.quantile_1
erupt.outlier_left = erupt.quantile_1 - 1.5*erupt.iqr
erupt.outlier_right = erupt.quantile_3 - 1.5*erupt.iqr
erupt.summary = summary(eruptions)

erupt.min
erupt.max
erupt.range
erupt.variance
erupt.stadard_dev
erupt.quantile_1
erupt.quantile_3
erupt.iqr
erupt.outlier_left
erupt.outlier_right
erupt.summary

# Boxplot

boxplot(eruptions, xlab="eruption duration", 
        main="Boxplot of eruptions", horizontal=TRUE, 
        outline = TRUE,  range = 1.5)
abline(v=erupt.quantile_1, col="green", lty=2)
abline(v=erupt.quantile_2, col="green", lty=2)
abline(v=erupt.outlier_left, col="red", lty=2)
abline(v=erupt.outlier_right, col="red", lty=2)
abline(v=erupt.min, col="blue", lty=2)
abline(v=erupt.max, col="blue", lty=2)

# Distribution
hist(eruptions, right=FALSE )

# SAT Math

mean = 543
sd = 110
scores <- data.frame(
  scores = c(300, 400, 500, 600, 700, 800),
  zscores = c(-2.09, -1.3, -0.39, 0.52, 1.43, 2.34)
  )

results.difference = scores$scores - mean
results.zscores = results.difference/sd

mean
sd
scores$scores
results.difference
results.zscores

mean
sd
results.scores = scores$zscores*sd+mean
results.scores


mean
sd
results.scores = results.zscores*sd+mean
results.scores

# z-scores #2

express.values = painters$Expression[15:25]
express.mean = mean(express.values)
express.sd = sd(express.values)
express.zscore = (express.values-express.mean)/express.sd
express.scale_sd = scale(express.values, center = TRUE, scale = TRUE)
express.scale_rms = scale(express.values, center = FALSE, scale = TRUE)

express.values
express.mean
express.sd
express.zscore
express.scale_sd
express.scale_rms


express.zfreq = table(abs(express.zscore))
express.zfreq
hist(express.zfreq, xlab = "standard deviation", main="Histogram z-scores")

boxplot(express.values, horizontal = TRUE)
hist(express.values)

express.zscore_mean = mean(express.zscore)
express.zscore_sd = sd(express.zscore)
ekspress.zscore_min = min(express.zscore)
ekspress.zscore_max = max(express.zscore)

express.mean
express.zscore_sd
ekspress.zscore_min
ekspress.zscore_max

ekspress.pnorm = pnorm(express.zscore)
plot(pnorm(express.zscore),
     xaxt = "n", # Don't label the x-axis
     main = "cdf of the Standard Normal",
     xlab= "Quantiles",
     ylab="Probability Density") 

axis(1, at=which(ekspress.pnorm == pnorm(-2)), labels=round(pnorm(-2), 2))
axis(1, at=which(ekspress.pnorm == pnorm(-1)), labels=round(pnorm(-1), 2))
axis(1, at=which(ekspress.pnorm == pnorm(0)), labels=c(.5))
axis(1, at=which(ekspress.pnorm == pnorm(1)), labels=round(pnorm(1), 2))
axis(1, at=which(ekspress.pnorm == pnorm(2)), labels=round(pnorm(2), 2))

# Quartiles, Percentiles
colour.values = sort(painters$Colour)

colour.values
colour.Q1 = quantile(colour.values, probs = .25)
colour.Q3 = quantile(colour.values, probs = .75)
colour.Q32 = quantile(colour.values, probs = .32)
colour.Q48 = quantile(colour.values, probs = .48)
colour.Q86 = quantile(colour.values, probs = .86)

boxplot(colour.values, horizontal = TRUE)
abline(v=colour.Q1, col="green", lty=2)
abline(v=colour.Q3, col="green", lty=2)
abline(v=colour.Q32, col="pink", lty=2)
abline(v=colour.Q48, col="blue", lty=2)
abline(v=colour.Q86, col="orange", lty=2)


colour.Q1
colour.Q3
colour.Q32
colour.Q48
colour.Q86
colour.Q3-colour.Q1
