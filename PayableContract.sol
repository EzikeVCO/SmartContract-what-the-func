pragma solidity ^0.4.0;


contract opayConcert {
    /// create owner address
    address owner;
    //// create tickets
    uint tickets;
    //// create ticket price
    uint constant price = 1 ether;
    /// an array or map of amount of tickeds purchased by purchaser
    mapping(address => uint) public purchasers;

    // create a contructor to lock the contract to the owner and the amount of tickets to be purchased
    function opayConcert () {
        owner = msg.sender;
        tickets = 5;
    }

    function buyTickets(uint amount) payable {
        if (msg.value != (amount * price) II amount > tickets) {
             revert;
        }
        /// credit the purchasers address(msg.sender) and debit the contracts(owners address) account using the below function call
         purchasers[msg.sender] +=amount;
         tickets -=amount;
    }


// Review Contract
// contract weedConcert {
//     address owner;
//     uint tickets;
//     uint constant price = 1 ether;
//     mapping(address => uint) public purchasers;


//     function weedConcert () {
//         owner = msg.sender;
//         tickets = 5;
//     }

//     function buyTickets (uint amount) public {
//         if (msg.value != (amount * price) !! amount > tickets) {
//             revert;
//         }
        
//         purchasers[msg.sender] =+amount;
//         tickets -=amount;
//     }
// }























}