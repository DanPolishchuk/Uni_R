############################## task 1 #########################################

dat = Orange

circumference_4 = c()

for (i in 1:length(dat$age)){
  if (dat$age[i] < 366){
    dat$year[i] = 0
  }
  
  if (dat$age[i] >= 366 & dat$age[i] <= 731){
    dat$year[i] = 1    
  }
  
  if (dat$age[i] >= 732 & dat$age[i] <= 1096){
    dat$year[i] = 2
  }
  
  if (dat$age[i] >= 1097 & dat$age[i] <= 1462){
    dat$year[i] = 3
  }
  
  if (dat$age[i] >= 1463){
    dat$year[i] = 4
  }
  
  if (dat$year[i] == 4){
    circumference_4 = c(circumference_4, dat$circumference[i])
  }
}

dat

circumference_4

################################## task 2 #####################################

cars_dat = mtcars

for (i in 1:nrow(cars_dat)){
  if (cars_dat$carb[i] >= 4 | cars_dat$cyl[i] > 6){
    cars_dat$new_var[i] = 1
  } else {
    cars_dat$new_var[i] = 0
  }
}

cars_dat

############################### task 3 ########################################

result = ""

if (mean(cars_dat$new_var) > 0.7){
  result = "My man is great"
} else {
  result = "My man is not that great"
}

mean(cars_dat$new_var)
result

############################# task 4 ##########################################

pass_data = AirPassengers

good_months = list()

month_ammount = 12

year = 1

for (i in seq(1, length(pass_data), by = month_ammount)){
  
  best_in_year = c()
  # every 12 values of the dataset (1-12, 13-24...)
  for (j in i:(i + month_ammount - 2)){
    if (pass_data[[j]] < pass_data[[j + 1]]){
      best_in_year = c(best_in_year, pass_data[[j + 1]])
    }
    
  }
  good_months[[year]] = best_in_year
  year = year + 1
}

# transform a ts object into dataframe object
pass_data = data.frame(.preformat.ts(pass_data), stringsAsFactors = FALSE)

pass_data$good_months = good_months

pass_data

################################ task 5 #######################################

df = data.frame(var1 = c(11, 21, 31),
                var2 = c(12, 22, 32),
                var3 = c(13, 23, 33),
                var4 = c(14, 24, 34),
                row.names = c("case1", "case2", "case3"))
df

df["case1", ][1:3]

for (i in df["case2", ]){
  if (i > 22){
    print(i)
  }
}

names(df[c(1, 3)])

df$Y = c(-1, 0, 1)
df

df = df[-2, ]
df

df[2] = df[2]**3
df

############################# task 6 ##########################################

n = as.integer(readline("Enter number of elements: "))

vec = rep(NA,n)

for (i in 1:length(vec)){
   if (i %% 2 == 0){
     vec[i] = 1
   } else{
     vec[i] = 0
   }
}

vec

################################# task 7 #####################################

smart_squares = function(vec){
  
  if (is.numeric(vec)){
    vec = vec ** 2
    print(vec)
  } else {
    vec = rep(NA, length(vec))
    print(vec)
    print("Your vector isn`t numeric")
  }
}

smart_squares(c(12, 23, 34.5))
smart_squares(c("hello", "hola", "hallo"))
