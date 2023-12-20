

const naturalSum = (number) => {
    



    if (number === 0) {
        
        return 0;
    }

    else {
        
        return number + naturalSum(number - 1);
    }


}

module.exports = naturalSum;