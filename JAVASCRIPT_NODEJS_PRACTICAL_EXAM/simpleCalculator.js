

// 4) Write a JavaScript program to make a Simple Calculator.



const simpleCalculatorOp = (a, operator , b) => {
    

  
     
  
    switch (operator) {
        

        case '+':

            
            return a + b;
        
            case '-':

            
            return a - b;
        
            case '*':

            
            return a * b;
        
            case '/':

            
            return a / b;
        
        default:
            break;


            
            
    }


   
}

module.exports = simpleCalculatorOp;