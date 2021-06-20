pragma solidity >=0.4.0 < 0.9.0;

// contracts Communicating with contracts
contract foo {
    // Calling a calculator contract with another contract 
    // using the features or function of one calculator in another
    calculator calc = new calculator();
    // METHOD TWO IS TO MAKE USE OF THE CONTRACTS OR DEPLOYED CONTRACTS ADDRESS TO COMMUNICATE WITH YOUR CONTRACT 

    function checkmates() public returns (uint){
          return  calc.multiply(2, 4);
    }
}



 contract calculator {


     function add(uint a, uint b) public returns (uint) {
         return a + b;
     }

         function multiply(uint a, uint b) public returns (uint) {
         return a * b;
     }
 }
