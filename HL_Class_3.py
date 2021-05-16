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
    output=inp_mark/10
    print(output)
    return output
mark=int(input("Introduce your mark of the exam in %"))
change_mark(mark)

goal=int(input("Introduce your mark target in %"))
change_mark(goal)

if mark<goal:
    print("Congrats.Good job")
elif mark==goal:
    print("Good job. Try improve the next time")
else:
    print("Should study harder")

