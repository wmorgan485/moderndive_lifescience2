## ----message=FALSE------------------------------------------------------------
library(rfishbase)
library(ggplot2)
library(dplyr)














## -----------------------------------------------------------------------------
brackish_fish <- all_fishdata %>% 
  filter(Brack == -1)








## ---- eval=FALSE--------------------------------------------------------------
## ggplot(data = brackish_fish, mapping = aes(x = Length, y = Weight)) +
##   geom_point()




## ----nolayers, fig.cap="A plot with no layers.", fig.height=2.5---------------
ggplot(data = brackish_fish, mapping = aes(x = Length, y = Weight))






## ----alpha, fig.cap="Arrival vs. departure delays scatterplot with alpha = 0.2.", fig.height=4.9----
ggplot(data = brackish_fish, mapping = aes(x = Length, y = Weight)) + 
  geom_point(alpha = 0.2)




## ----jitter, fig.cap="Arrival versus departure delays jittered scatterplot.", fig.height=4.7----
ggplot(data = brackish_fish, mapping = aes(x = Length, y = Weight)) + 
  geom_jitter(width = 30, height = 30)






## -----------------------------------------------------------------------------
chick1_weight <- ChickWeight %>% 
  filter(Chick == 1 & Diet == 1)






## ----dailyweight, fig.cap="body weights of Chick 1 on Diet 1"-----------------
ggplot(data = chick1_weight, 
       mapping = aes(x = Time, y = weight)) +
  geom_line()






## -----------------------------------------------------------------------------
Diet1_ChickWeight <- ChickWeight %>% 
  filter(Diet == 1)


## ----eval=FALSE---------------------------------------------------------------
## ggplot(data = Diet1_ChickWeight,
##        mapping = aes(x = Time, y = weight)) +
##   geom_line() +
##   facet_wrap(~ Chick)




## ----eval=FALSE---------------------------------------------------------------
## ggplot(data = Diet1_ChickWeight,
##        mapping = aes(x = Time, y = weight)) +
##   geom_line() +
##   facet_wrap(~ Chick, nrow = 5)








## -----------------------------------------------------------------------------
chick_weight_d21 <- ChickWeight %>% 
  filter(Time == 21)


## ----weight-on-line, echo=FALSE, fig.height=0.8, fig.cap="Plot of body weights for Chick 1"----
ggplot(data = chick_weight_d21, mapping = aes(x = weight, y = factor("A"))) +
  geom_point() +
  theme(
    axis.ticks.y = element_blank(),
    axis.title.y = element_blank(),
    axis.text.y = element_blank()
  )
hist_title <- "Histogram of Chick Weights on Day 21"




## ----chick_weight_d21-histogram, warning=TRUE, fig.cap="Histogram of chick weights at day 21.", fig.height=2.3----
ggplot(data = chick_weight_d21, mapping = aes(x = weight)) +
  geom_histogram()


## ----chick_weight_d21-histogram-2, message=FALSE, fig.cap="Histogram of chick weights at day 21.", fig.height=3----
ggplot(data = chick_weight_d21, mapping = aes(x = weight)) +
  geom_histogram(color = "white")


## ---- eval=FALSE--------------------------------------------------------------
## ggplot(data = chick_weight_d21, mapping = aes(x = weight)) +
##   geom_histogram(color = "white", fill = "steelblue")


## ---- eval=FALSE--------------------------------------------------------------
## ggplot(data = chick_weight_d21, mapping = aes(x = weight)) +
##   geom_histogram(bins = 20, color = "white")


## ---- eval=FALSE--------------------------------------------------------------
## ggplot(data = chick_weight_d21, mapping = aes(x = weight)) +
##   geom_histogram(binwidth = 20, color = "white")
















## ----Dietweightbox, fig.cap="Side-by-side boxplot of weighterature split by Diet.", fig.height=2.4----
Time21_ChickWeight <- ChickWeight %>%
  filter(Time == 21)
ggplot(data = Time21_ChickWeight, mapping = aes(x = Diet, y = weight)) +
  geom_boxplot()






## -----------------------------------------------------------------------------
fruits <- tibble(
  fruit = c("apple", "apple", "orange", "apple", "orange")
)
fruits_counted <- tibble(
  fruit = c("apple", "orange"),
  number = c(3, 2)
)






## ----geombar, fig.cap="Barplot when counts are not pre-counted.", fig.height=1.8----
ggplot(data = fruits, mapping = aes(x = fruit)) +
  geom_bar()


## ---- geomcol, fig.cap="Barplot when counts are pre-counted.", fig.height=2.5----
ggplot(data = fruits_counted, mapping = aes(x = fruit, y = number)) +
  geom_col()


## ----habitatsbar, fig.cap="(ref:geombar)", fig.height=2.8---------------------
ggplot(data = all_fishdata, mapping = aes(x = DemersPelag)) +
  geom_bar()














## ---- eval=FALSE--------------------------------------------------------------
## ggplot(data = all_fishdata, mapping = aes(x = DemersPelag)) +
##   geom_bar()


## ----eval=FALSE---------------------------------------------------------------
## ggplot(data = all_fishdata, mapping = aes(x = DemersPelag, fill = BodyShapeI)) +
##   geom_bar()




## ----eval=FALSE---------------------------------------------------------------
## ggplot(data = all_fishdata, mapping = aes(x = DemersPelag, color = BodyShapeI)) +
##   geom_bar()




## ---- eval=FALSE--------------------------------------------------------------
## ggplot(data = all_fishdata, mapping = aes(x = DemersPelag), fill = BodyShapeI) +
##   geom_bar()


## ----eval=FALSE---------------------------------------------------------------
## ggplot(data = all_fishdata, mapping = aes(x = DemersPelag, fill = BodyShapeI)) +
##   geom_bar(position = "dodge")




## ----eval=FALSE---------------------------------------------------------------
## ggplot(data = all_fishdata, mapping = aes(x = DemersPelag, fill = BodyShapeI)) +
##   geom_bar(position = position_dodge(preserve = "single"))




## ----eval=FALSE---------------------------------------------------------------
## ggplot(data = all_fishdata, mapping = aes(x = DemersPelag)) +
##   geom_bar() +
##   facet_wrap(~ BodyShapeI, ncol = 1)










## ---- eval=FALSE--------------------------------------------------------------
## # Segment 1:
## ggplot(data = all_fishdata, mapping = aes(x = DemersPelag)) +
##   geom_bar()
## 
## # Segment 2:
## ggplot(all_fishdata, aes(x = DemersPelag)) +
##   geom_bar()








## ---- eval=FALSE--------------------------------------------------------------
## brackish_fish <- all_fishdata %>%
##   filter(Brack == -1)
## 
## ggplot(data = brackish_fish, mapping = aes(x = Length, y = Weight)) +
##   geom_point()


## ---- eval=FALSE--------------------------------------------------------------
## chick1_weight <- ChickWeight %>%
##   filter(Chick == 1 & Diet == 1)
## 
## ggplot(data = chick1_weight, mapping = aes(x = Time, y = weight)) +
##   geom_line()

