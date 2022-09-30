
   pragma solidity ^0.8.17;

 contract SportyBet{
  address payable public owner;
  address payable[] public participants;

  uint public lotteryId;
  mapping (uint => address) public History;

  constructor() {
    owner = payable(msg.sender);
    // set the first ID, increment later
    lotteryId = 1;
  }

  modifier onlyOwner(){
    require(msg.sender == owner, "you have no authority to do this, bruh");
    _;
  }

     function startBetting() public payable{
       require(msg.value >= 1 ether, "you need at least one ether");
       participants.push(payable(msg.sender));
    }

     function getRandomDigits() public view returns(uint){
      return uint(keccak256(abi.encodePacked(owner, block.timestamp)));
    }

     function RandomWinner() public onlyOwner{
       // spin with Modulo
       uint index = getRandomDigits() % participants.length;
       // transfer tokens to the spinned winner in the array
       participants[index].transfer(address(this).balance);

       History[lotteryId] = participants[index];
       lotteryId ++;

       participants = new address payable[](0);
     }

     function fetchBalance() public view returns(uint){
       return address(this).balance;
     }

     function fetchParticipants() public view returns(address payable[] memory) {
      return participants;
     }

     }
