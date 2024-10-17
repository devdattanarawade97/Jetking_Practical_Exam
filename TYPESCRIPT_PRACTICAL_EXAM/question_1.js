"use strict";
// 1) Write a TypeScript program that checks if a given
// number is odd or even.
let check_even_odd = (num) => {
    if (num % 2 == 0) {
        return "even";
    }
    else {
        return "odd";
    }
};
console.log(`number 10 is : ${check_even_odd(10)}`);
console.log(`numnber 11 is :${check_even_odd(11)}`);
