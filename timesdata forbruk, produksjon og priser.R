#Timesdata på pris, forbruk og produksjon i energimarkedet i Norge

install.packages('writexl')

install.packages("readxl")
library("readxl")
read_excel("C:\\Users\\monse\\Downloads\\timesdata_hedvig (2).xlsx") 

read_excel("C:\\Users\\monse\\Downloads\\timesdata_hedvig (2).xlsx", 
           sheet = "Forbruk")

read_excel("C:\\Users\\monse\\Downloads\\timesdata_hedvig (2).xlsx", 
           sheet = "Priser")

read_excel("C:\\Users\\monse\\Downloads\\timesdata_hedvig (2).xlsx", 
           sheet = "Produksjon")
