# Functions and Errors Project

## Description
This project is of functions and errors module. We used the concept of error handling to create a smart contract. In this project, a voting-age smart contract is created with the help of require, revert and assert statements. These statements will check the validity of the vote, cancel the vote and reset for a new vote.
## Getting Started

### Installing

To use the VotingAge contract, simply download or clone the Solidity contract file attached to this repository

### Executing program
To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/. 

Further steps,
1. Create a file named Voter.sol, write code into it, and then compile it.
2. After compiling the file go to the deploy section and deploy it.
3. Now, we can see cast vote, cancel vote, has voted, reset vote, and voting age buttons there.
4. Various statements such as require, revert and assert are applied there to check the required criteria of voting.
   
```req
require(age >= VOTING_AGE, "You must be at least 18 years old to vote.");
        require(!hasVoted[msg.sender], "You have already voted.");
```
```
function resetVote() public {
        assert(hasVoted[msg.sender]);
        hasVoted[msg.sender] = false;
    }
```
```
function cancelVote(uint8 age) public {
        if (age < VOTING_AGE) {
            revert("You must be at least 18 years old to cancel a vote.");
        }
```

## Authors
 Harsh Gautam 
@gautamharshu7767@gmail.com

## License
This project is licensed under the MIT License - see the LICENSE.md file for details
