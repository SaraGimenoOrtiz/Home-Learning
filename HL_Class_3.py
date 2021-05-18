#CLASS 3

#TASK 1

my_file=open("numbers.txt","w")

numero=[0,0,0,0]
for i in range(4):
     numero[i]=str(input("Intruduce a number: "))

for i in range(len(numero)):
     my_file.write(str(numero[i]))
     my_file.write("\n")
my_file.close()  

#TASK 2

def change_mark(inp_mark):
    if 80<=inp_mark<=100:
        output="A"
    elif 70<=inp_mark<=79:
        output="B"
    elif 60<=inp_mark<=69:
        output="C"
    elif 50<=inp_mark<=59:
        output="D"
    elif 40<=inp_mark<=49:
        output="E"
    elif 30<=inp_mark<=39:
        output="F"
    elif 20<=inp_mark<=29:
        output="FF"
    elif 10<=inp_mark<=19:
        output="G"
    else:
        output="H" 
    print(output)
    return output
mark=int(input("Introduce your mark of the exam in %:"))
change_mark(mark)

goal=int(input("Introduce your mark target in %:"))
change_mark(goal)

if mark<goal:
    print("Congrats.Good job")
elif mark==goal:
    print("Good job. Try improve the next time")
else:
    print("Should study harder")

