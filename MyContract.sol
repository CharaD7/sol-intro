// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

contract MyContract {
  string name = 'Example 1'; // will not be visible on the blockchain
  string private name1 = ''; // visible privately
  string internal name2 = 'Example 1'; // visible internally
  string public name3 = 'Example 1'; // visible publicly
  address private owner;

  modifier onlyOwner {
    require(msg.sender == owner, 'caller must be owner');
    _;
  }

  constructor(string memory _name) {
    name2 = _name;
  }

  function setName(string memory _name) public {
    name = _name;
  }

  // view => a modifier function that says function getName's state cannot be modified but read
  function getName() public view returns(string memory) {
    return name;
  }

  function resetName() public {
    name = 'Example 1';
  }

  // pure => a modifier function that says function add cannot read or modify state variables
  function add(uint a, uint b) public pure returns(uint) {
    return a + b;
  }

  // payable => a modifier that allows receit of transactions
  function pay() public payable {
    balance = msg.value;
  }

  function setNewName(string memory _name1) onlyOwner public {
    name1 = _name;
  }

}
