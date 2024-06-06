
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract VotingAge {
    uint8 public constant VOTING_AGE = 18;
    mapping(address => bool) public hasVoted;

    event Evoter(address voter);

    function castVote(uint8 age) public {
        require(age >= VOTING_AGE, "You must be at least 18 years old to vote.");
        require(!hasVoted[msg.sender], "You have already voted.");
        hasVoted[msg.sender] = true;
        emit Evoter(msg.sender);
    }
    function resetVote() public {
        assert(hasVoted[msg.sender]);

        hasVoted[msg.sender] = false;
    }
    function cancelVote(uint8 age) public {
        if (age < VOTING_AGE) {
            revert("You must be at least 18 years old to cancel a vote.");
        }
        require(hasVoted[msg.sender], "You have not voted yet.");
        hasVoted[msg.sender] = false;
    }
}
