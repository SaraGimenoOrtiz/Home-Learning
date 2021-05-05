#TASK1 

#a
import random
ram_num=random.randint(1,10)
print(ram_num)

#b

user_name=input("What is your name?")

#c y d 

Number=int(input("Guess my number between 1 and 10.Try : "))

while Number!=5:
    print ("You ve lost")
    Number=int(input("Guess my number between 1 and 10.Try : "))

print("Correct")

#TASK 2
Number_2=int(input("Write a number between 1 and 100: "))

if 1<=Number_2<=20:
    print("why was 6 scared of 7? Cause 7 ate 9")
elif 20<Number_2<=70:
    print("joke 2")
elif 70<Number_2<=100:
    print("joke 3")
else:
    print("Fuera de rango")

#TASK 3

fav_starter=input("What is your favorite starter?")
fav_drink=input("What is your favorite drink?")
fav_dessert=input("What is your favorite dessert?")
fav_maincourse=input("What is your favorite main course?")

print("Your favorite meal is",fav_maincourse,"with a glass of", fav_drink,".")

#TASK 4
initial_cost=2000
final_cost=10000
years=0

while final_cost>1000:
    years=years+1
    final_cost=initial_cost-initial_cost*0.1
    initial_cost=final_cost
    print("El precio en el año ",years, "es", final_cost, "€") 


#TASK 5
num_1=int(input("Introduce el primer numero: "))
num_2=int(input("Introduce el segundo numero: "))
option=(input("Enter a if you want to add, enter b if you want to subtract, Enter c if you want to divide, enter d if you want to multiple or enter e if you want to elevate:  "))

if option=="a":
    print("La suma de" ,num_1, "+" ,num_2, "es" ,num_1+num_2)
elif option=="b":
    print("La resta de" ,num_1, "-" ,num_2, "es" ,num_1-num_2)
elif option=="c":
    print("La división de" ,num_1, "/" ,num_2, "es" ,num_1/num_2)
elif option=="d":
    print("La multiplicacion de" ,num_1, "*" ,num_2, "es" ,num_1*num_2)
elif option=="e":
    print(num_1, "^" ,num_2, "es" ,num_1**num_2)
else:
    print("opcion no valida")