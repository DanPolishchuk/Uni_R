################################### task 1 ##################################

entered_name = readline("Hi! Please enter your first and last name: ")

real_name = "Danylo Polishchuk"

if (entered_name == real_name){
  print(paste("Hello", real_name, "welcome to R! I missed you so much"))
} else{
    print("Sorry, R is not available now")}

################################### task 2 ###################################

x = as.numeric(readline("Please enter your number, use '.' as seperator: "))

check = x - floor(x)

if (check == 0){
  print("It is an integer")
} else {
  print("It is not an integer")
  }

################################# task 3 #####################################

input = readline("Please enter number of rows and columns of the matrix: ")

tryCatch({
  dimensions = unlist(strsplit(input, " "))
  
  print("Your matrix: ")
  
  m = matrix(1:1, as.integer(dimensions[1]), as.integer(dimensions[2]))
  
  m
}, error = function(e) {
    print("«Impossible to create an identity matrix with such dimensions")
})


############################## task 4 ########################################

B = sample(-100:100, 10)

B

max_modulus = -Inf  
max_negative_element = NA  


for (element in B) {

  modulus = abs(element)
  
  if (element < 0 && modulus > max_modulus) {
    max_modulus = modulus
    max_negative_element = element
  }
}

print(paste("Negative number with greatest modulus is: ", max_negative_element))

################################# task 5 ####################################

X = sample(-100:100, 12)

X

Y = c()
Z = c()

for (i in X){
  if (i > 0){
    Y = c(Y, i)
  } else{
    Z = c(Z, i)
  }
}

print("Vector with positive numbers:" )
Y
print("Vector with negative numbers:")
Z

#################################### task 6 ###################################

N = sample(1:100, 20)

N

searched_numbers = c()

remainder = function(element){
  if (element %% 3 == 0){
    return(TRUE)
  } else{
    return(FALSE)
  }
}

for (i in N){
  if (remainder(i)){
    searched_numbers = c(searched_numbers, i)
  }
}

print("Searched numbers:")
searched_numbers
print(paste("Sum of them:", sum(searched_numbers)))

################################ task 7 ######################################

country = c("Austria", "Ghana", "Egypt", "Canada", "Italy", "USA", "Sweden")
сontinent = c("America", "Africa", "Europe")

cont = function(s){
  if (s %in% c("Austria", "Italy", "Sweden")){
    return(сontinent[3])}
    
  if (s %in% c("Ghana", "Egypt")){
    return(сontinent[2])}
    
  if (s %in% c("USA", "Canada")){
    return(сontinent[1])}
}

for (i in 1:(length(country) - 1)){
  t = cont(country[i]) == cont(country[i + 1])
  if (t){
    print(paste(country[i] , "and", country[i + 1], "are in the same continent"))
  } else{
    print(paste(country[i] , "and", country[i + 1], "are not in the same continent"))
  }
}









































