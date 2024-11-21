
package main

import ("fmt");


func main() {
	
	// Write a Golang program that checks whether the given number is a prime number or not.
     
	var num int;
	fmt.Println("Enter a number : ");
	fmt.Scan(&num);

	isPrime:=true;

	for i := 2; i < num; i++ {

		if num % i == 0 {
			// fmt.Println(num, "is not a prime number");
			isPrime = false;
			break;
		}
		

	}
    
	fmt.Println("number is prime : ", isPrime);


	

}
