

"""
question 4) Write a Python Program to put Even and Odd elements in a list
into two different lists.

"""


def getEvenOrOdd(number_list):
    
    
    even_list=[]
    odd_list=[]
    
    for i in range(len(number_list)):
        
        if number_list[i]%2==0:
            even_list.append(number_list[i])
            
        else:
            
            odd_list.append(number_list[i])
    
    print(even_list)
    print(odd_list)
    
    
getEvenOrOdd([0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16])