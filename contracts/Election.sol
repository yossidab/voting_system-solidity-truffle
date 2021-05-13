// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22;

contract Election{
    //Modle a Condidate
    struct Condidate{
        uint id;
        string namel;
        uint voteCount;
    }
    //stote candidte account that have voted
    mapping(address => bool)public voters;
    //store candidates
    //Fetch candidate
    mapping(uint=>Condidate)public candidates;
    uint256 public candidatesCount;
    address owner;
    
    //Constructor
   constructor () public{
    owner = msg.sender;
    addCandidate("Henry");
    addCandidate("Kuly");

   }


function addCandidate(string memory _name)private{
    candidatesCount++;
    candidates[candidatesCount]=Condidate(candidatesCount,_name,0);
}
modifier onlyOwner() {
    require(msg.sender == owner);
    _;
}
function addNewCandidate(string memory _name) public onlyOwner{
    addCandidate(_name);
}

function vote (uint _candidateId)public{
    // require that they haven't voted before
    require(!voters[msg.sender]);

    // require a valid candidate
    require(_candidateId > 0 && _candidateId <= candidatesCount);

    //record that voter has voted
    voters[msg.sender] = true;     

    //update candidate vote count
    candidates[_candidateId].voteCount ++;
}
}