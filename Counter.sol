pragma solidity ^0.8.0;

contract Counter {
  // Declare types and scope for the variables to be used
  string public name;
  uint public count;

  // Store a numerical value
  constructor(string memory _name, uint _initialCount) {
    name = _name;
    count = _initialCount;
  }

  // Increase the count
  function increment() public returns (uint newCount){
    count ++;
    return count;
  }

  // Decrease the count
  function decrement() public returns (uint newCount){
    count --;
    return count;
  }

  // Store / set a name
  function getCount() public view returns (uint) {
    return count;
  }

  // CRUD
}
