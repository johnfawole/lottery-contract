## Motivation 
The betting industry is a million-dollar one in real world. How about integrating this activity on-chain? Such that people can bet with 
smart contracts; that is even easier for people who want to bet with crypto and not real-time fiat.

Hence, the reason I set out to build this contract.

## The Functions in the Contract

### startBetting Function
I put a check that whoever wants to bet must have nothing less than 1 ether to even participate. Then such a participant would be pushed into the array.

#### getRandomDigits Function
To know the winner of the lottery, there has to be a fair and unbiase way of spinning. In this function, I hashed and encoded two parameters; owner and 
the current block.

### RandomWinner Function
Recall that we had created a function to generate random digits earlier, in this function, we used it to get a random winner.

### fetchBalance & fetchParticipants Functions
These are getter functions for the current balance and the number of participants respectively.

## What I Learned in this Project
The main thing I learned was how to generate random results with encoding and modulo.
