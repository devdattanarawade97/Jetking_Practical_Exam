

const alphabeticalOrderedWord = require('./alphabeticalOrder')

const getAscii = require('./getAscii');
const naturalSum = require('./naturalSumUsingRecursive');
const simpleCalculatorOperation = require('./simpleCalculator');

const prompt = require('prompt-sync')({ sigint: true });


// let question2Input = prompt('enter the words to sort in alphabetical order');

// let question2Ans = alphabeticalOrderedWord(question2Input.split(','));

// console.log(question2Ans);

// let question3Input = prompt('enter the char to get the ascii code');

// let question3Ans = getAscii(question3Input);

// console.log(question3Ans);

// let question4Ans = simpleCalculatorOperation(1, '+', 2);

// console.log(question4Ans);

let question5Input = Number(prompt('enter the number to calculate natural sum using recursive'));

let question5Ans = naturalSum(question5Input);

console.log(question5Ans);
