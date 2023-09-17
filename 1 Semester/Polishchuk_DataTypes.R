########################### task 1 ###########################################

numeric_vector = c(12, 23, 34, 45, 56)
text_vector = c("Frankfurt", "Berlin", "Hamburg", "München", "Stuttgart")
names(numeric_vector) = c("Lena", "Katya", "Achmad", "Walid", "Maxi")
combined_vector = c(numeric_vector, text_vector)

numeric_vector
combined_vector

########################### task 2 ##########################################

replacing = function(user_vector){
  user_vector[length(user_vector)] = NA   # accesses the last element of vector
  print(user_vector)
}

vec1 = c("one", "two", "three", "four", "five", "six", "seven")
vec2 = c(1:10)

replacing(vec1)
replacing(vec2)

########################### task 3 ##########################################

g = c(1, 0, 2, 3, 6, 8, 12, 15, 0, NA, NA, 9, 4, 16, 2, 0)

g[1]         

tail(g, 1)   

g[3:5]       

g[is.na(g) == FALSE & g == 2]

g[is.na(g) == FALSE & g > 4]

g[is.na(g) == FALSE & g != 0 & (g %% 3) == 0]

g[is.na(g) == FALSE & g != 0 & g > 4 & (g %% 3) == 0]

g[is.na(g) == FALSE & (g < 1 | g > 5)]

g[is.na(g) == FALSE & (g < 1 | g > 5)]

for (i in 1:length(g)){
  if (is.na(g[i]) == FALSE & g[i] == 0){
    print(i)
  }
}

for (i in 1:length(g)){
  if (is.na(g[i]) == FALSE & g[i] > 2 & g[i] < 8){
    print(i)
  }
}

############################ task 4 ###########################################
my_vec = c("P", "D", 6, 4)

rep(my_vec, length.out = 19)

########################### task 5 ############################################

m3 = matrix(3:3, nrow = 3, ncol = 4)
m3

m3[1, 3] = 4
m3[2, 1] = 1
m3[3, 4] = 1
m3[3, 2] = NA

m3

########################## task 6 #############################################

a = matrix(sample(1:100, 3 * 4), nrow = 3, ncol = 4)

a

b = matrix(0, nrow = 3, ncol = 4)

b[1, ] = a[1, ] * 2
b[2, ] = a[2, ] * -3
b[3, ] = a[3, ] * 5
rownames(b) = c("row1", "row2", "row3")
colnames(b) = c("col1", "col2", "col3", "col4")

b

########################### task 7 ############################################

a = c(1, 3, 4, 9, NA)
b = c(5, 6, 7, 0, 2)
c = c(9, 10, 13, 1, 20)

m1 = rbind(a, b, c)

m2 = cbind(a, b, c)

naming = function(m) {
  row_names = c()
  for (i in 1:nrow(m)) {
    if (any(is.na(m[i,]))) {
      row_names = c(row_names, paste("row", i))
    } else {
      row_names = c(row_names, paste("row", i))
    }
  }
  
  column_names = c()
  for (i in 1:ncol(m)) {
    column_names = c(column_names, paste("column", i))
  }
  
  rownames(m) = row_names
  colnames(m) = column_names
  
  m
}

naming(m1)
naming(m2)

################################ task 8 #######################################

groups = c("FIT 3-10", "FIT 3-1", " FIT 3-4")

subjects = c("Python", "C#", "Java", "R", "GoLang")

notes = c("0-60", "60-75", "75-90", "90-100")

group_analysis = array(0, dim = c(length(notes), length(subjects), length(groups)))

for (i in 1:length(groups)) {
  group_analysis[, , i] = matrix(sample(0:10, length(notes) * length(subjects),
                                        replace = TRUE), nrow = length(notes))
}

dimnames(group_analysis) = list(notes, subjects, groups)

group_analysis

################################# task 9 #####################################

info = list(
  names = c(" Jane ", " Michael ", " Mary ", " George "), 
  ages = c(8, 6, 28, 45), 
  gender = c(0, 1, 0, 1))

info$names[2]

names(info)[3]

names(info) = c("Names", "Ages", "Gender")

info$Names

info$drinks = c("juice", "tea", "rum", "coffee")

info$Names = c(info$Names, "John")
info$Ages = c(info$Ages, 2)
info$Gender = c(info$Gender, 1)
info$drinks = c(info$drinks, "milk")

info


################################# task 10 #####################################

print(mtcars)

rows = c(3, 7, 10, 12, nrow(mtcars))

mini_mtcars = mtcars[rows, ]

print(mini_mtcars)

