#TASK 1
first=input("Do you want to eat pizza? Yes or No: ")
final_prize=0
if first=="Yes":
    pizzas=int(input("How many pizzas do you want to?"))

    if pizzas==0:
        print("Sorry we only sell pizza right now")
    else:
        final_prize=final_prize+pizzas*10
        drinks=int(input("How many drinks would yo like? "))

        if drinks==0:
            final_prize=final_prize
            print("Ok, next step")
            cookies=int(input("How many cookies do you want? "))
            if cookies==0:
                final_prize=final_prize
                print("The prize is: ",final_prize)
            else:
                final_prize=final_prize+(cookies*1)
                print("The prize is: ",final_prize)
        else:
            final_prize=final_prize+(drinks*1)
            cookies=int(input("How many cookies do you want? "))
            if cookies==0:
                final_prize=final_prize
                print("The prize is: ",final_prize)
            else:
                final_prize=final_prize+(cookies*1)
                print("The prize is: ",final_prize, "€")
else: 
    print("Sorry we only sell pizza right now")



# TASK 2

def cost_depreciation(inp_initial_cost):
    final_cost=2000 #only for entering in the loop
    years=0
    while (final_cost>1000):
    
        years=years+1
        final_cost=inp_initial_cost-0.1*inp_initial_cost
        inp_initial_cost=final_cost
        output=final_cost
    print("The motorbike cost is ", round(output,2), "€ en el año ", years," de su compra")

initial_cost=2000

cost_depreciation(initial_cost)

#TASK 3

def calculator(inp_num_1, inp_num_2, op):
    if op=="a":
        result=inp_num_1+inp_num_2
        print("El resultado de", inp_num_1, "+" ,inp_num_2, "=", result)
    elif op=="b":
        result=inp_num_1-inp_num_2
        print("El resultado de", inp_num_1, "-" ,inp_num_2, "=", result)
    elif op=="c":
        result=inp_num_1*inp_num_2
        print("El resultado de", inp_num_1, "*" ,inp_num_2, "=", result)
    elif op=="d":
        result=inp_num_1/inp_num_2
        print("El resultado de", inp_num_1, "/" ,inp_num_2, "=", result)
    elif op=="e":
        result=inp_num_1**inp_num_2
        print("El resultado de", inp_num_1, "^" ,inp_num_2, "=", result)
    else:
        print("Sorry. Incorrect input")

num_1=int(input("Intruduce el primer numero: "))
num_2=int(input("Intruduce el segundo numero: "))
option=input("suma=a, resta=b, multiplication=c, divide=d, exp=e. Elige la operación que desea realizar: ")

calculator(num_1,num_2,option)