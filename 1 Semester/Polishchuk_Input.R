################################# task 1 #######################################

user_name = readline("Please provide me with your name: ")   
print(paste("Hello,", user_name, "! How are you doing?"))

################################# task 2 #######################################

num1 = readline("Please enter the first number: ")
num2 = readline("Please enter the second number: ")
num1 = as.numeric(gsub(",", ".", num1))   # converts string to numeric and gsub()
num2 = as.numeric(gsub(",", ".", num2))   # replaces "," with "." if there`s one`
print(paste(num1, "+", num2, "=", (num1 + num2)))

################################# task 3 #######################################

speed = readline("Please enter speed in km/h: ")
speed = as.numeric(speed)
calculated_speed = speed * 1000 / 3600
print(paste(speed, "km/h =", calculated_speed, "m/s"))


############################### task 4 #########################################

import::from(xlsx, read.xlsx)
xlsx_path_import = "C:\\Users\\danpl\\Desktop\\ІЗБА\\Введення і виведення даних в R\\Polishchuk_Input.xlsx"
csv_path_import = "C:\\Users\\danpl\\Desktop\\ІЗБА\\Введення і виведення даних в R\\Polishchuk_Input.csv"
xlsx_data = read.xlsx(xlsx_path_import, 1)
write.csv(xlsx_data, file = csv_path_import)
read.csv(csv_path_import)

############################## task 5 ##########################################

import::from(xlsx, write.xlsx)
nba = data.frame(
  Team_name = c("Warriors", "Lakers", "Celtics", "Bulls"),
  Titles_number = c(5, 17, 17, 6),
  Current_coach = c("Steve Kerr", "Darvin Ham", "Joe Mazzulla", "Billy Donovan")
)
nba = edit(nba)
txt_path_export = "C:\\Users\\danpl\\Desktop\\ІЗБА\\Введення і виведення даних в R\\Polishchuk_Export.txt"
xlsx_path_export = "C:\\Users\\danpl\\Desktop\\ІЗБА\\Введення і виведення даних в R\\Polishchuk_Export.xlsx"
write.table(nba, file = txt_path_export)
write.xlsx(nba, file = xlsx_path_export)

