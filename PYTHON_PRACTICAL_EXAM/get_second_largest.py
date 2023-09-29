
"""
QUESTION 3) Write a Python Program to find the second largest number in a
list.

"""



def get_second_largest(numbers_list):
    
    
    max_value=max(numbers_list)
    second_largest=0
    
    for i in range(len(numbers_list)):
        
        if numbers_list[i]<max_value and numbers_list[i]>second_largest:
            
            second_largest=numbers_list[i]
    
    
    return second_largest
    

print(get_second_largest([10,4,5,7,3,5,2,90,40]))
                
    
    
    