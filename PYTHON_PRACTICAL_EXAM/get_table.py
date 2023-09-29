

"""
Question 2) Write a Python Program to display the multiplication table using
nested for loop.

"""

def get_table():
    
    input_val=int(input("enter number to get table : "))
    
    for i in range(1,11):
        print(i*input_val)
    

get_table()
        
        