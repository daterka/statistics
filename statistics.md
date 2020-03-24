## _**STATISTICS BASICS**_

### **Concepts**

* population - collection of individuals (similar items/events) = statistical dataset
* sample - is a set of individuals selected from population by a defined procedure (subset of population)
* distribution - listing/function showing **all possible values** (or intervals) for population and how often they **occure** 
    * for categorized data - show number or percentage of individuals in each group 
    * for numerical data - data ordered from smalest to largest and broken into groups, then put into charts and plots to examine shape, center and amount of variability in the data

### **Numerical measures**

* parameter - numerical descriptive measure calculated for population
* statistic - numerical descriptive measure calculated for sample

* measures of center - a **measure** along the horizontal axis of data distribution **that locates the center of the distribution**
  * arithmetic mean / avarage **x̄** (x-bar) - sum of all measurements divided by their number
    * more easily affected by extreamly large/small values
  * **μ** (Greeks "mu") - population mean
  * median - middle element of sorted sequence of measurments, position = **.5(n+1)**
    * often used as a center if the distribution is skewed
  * mode - most frequent value of measurements set (possible no mode, bimodal, trimodal, etc.)

* measures of variability - a **measure** along the horizontal axis of data distribution **that describes the spread of the distribution from the center** 
  * range (**R**)- difference between largest and smallest measurement ("difference length")
  * variance (**$σ^2$**, Greeks *sigma*) -  measure of variability in the whole data set, it measure the average deviation of measurements about their mean
    * variance of N size population - is an avarage of squared deviations of measurements about their mean μ :
       ### $σ^2 = \frac{∑(xi - μ)^2}{N}$
    * variance of n size sample - is a sume of squares of deviations of measurements about their mean devided by n-1 :
       ### $s^2 = \frac{∑(xi-x̄)^2}{n-1}$ 
      * the larger $s/s^2$ the larger the variability of the data set
      * n-1 in denominator provides better estimation of population standard deviation σ 
    * standard deviation - the positive square root of the deviations
      * population standard deviation : $σ = \sqrt{σ^2}$
      * sample standard deviation : $s = \sqrt{s^2}$

### **Using Measures of Center and Spread**

**Tchebysheff's Theorem :**

  Given a number $k >= 1$ and set of n measurements, at least $1-\frac{1}{k^2}$ of the measurements will lie within k standard deviations of the mean.
  * must be true for any data set
  * can be used for either samples (x̄ and s) or population (μ and σ)
  * k = 1 at least $1-\frac{1}{1^2} \approx .0$ of measurements lies in s from mean
  * k = 2 at least $1-\frac{1}{2^2} = 3/4 \approx .75$ of measurements lies in 2s from mean
  * k = 3 at least $1-\frac{1}{3^2} = 8/9\approx .89$ of measurements lies in 3s from mean

**The Empirical Rule :**

  Given a distribution of measurements that is approximately mound-shaped : 
  * The interval $μ +/- σ$ contains approximately 68% of the measurements
  * The interval $μ +/- 2σ$ contains approximately 95% of the measurements
  * The interval $μ +/- 3σ$ contains approximately 99.7% of the measurements 
  * true only for data sets with mound-shaped distribution !

**Aproximating s :**
  
  From Tchebysheff's Theorem and the Empirical Rule : $R \approx 4-6 s$
  * for small data sets : $s \approx R/4$
  * for large data sets : $s \approx R/6$ 
  * R is measurements range (max-min)

### **Measures of Relative Standing**

**z-score :**
* ### $z-score = \frac{x - x̄}{s}$
* helps to approximate where one particular measurement stands in relation to the other measurements in the data set
* measure how many standard deviations away from the mean does the measutement lie
* From Tchebysheff's Theorem and Epirical Rule :
  * at least 0.75 or more likely 95% of measurements lie within 2 standard deviations of the mean
  * at least 0.89 or more likely 99.7% of measurements lie within 3 standard deviations of the mean
* z-scores between [-2, 2] are not unusual, they should not be more than 3 om absolute value, if it does it would indicate a possible outlier

**Percentiles and Quartiles :**
How many measurements lie below the measurement of interest?
* percentile is the value of x which is larger than particular interest of measurements and less than (100-p)% of the ordered measurements
* 50th Percentile is Median is value of x which is larger than 50% and less than 50% of the ordered measurements
* 25th Percentile is Lower Quartile (Q1) is the value of x which is larger than 25% and less than 75% of the ordered measurements
* 75th Percentile is Upper Quartile(Q3) is the value of x which is larger than 75% and less than 25% of the ordered measurements
* IQR = Q3 - Q1 is interquartile range which covers middle 50% of ordered measurements
* Calculationg Sample Quartiles for orderd measurements with integers positions :
  * $Q1 = .25(n+1)$
  * $Q3 = .75(n+1)$

### **Using Measures of Center and Sperad: The Box Plot**

Min...Q1.....Median.......Q3....Max

* divides the data into 4 sets containing an equal number of measurements
* a quick summary of the data distribution
* is used to form a box plot to describe the shape of the distribution and to delect outliers