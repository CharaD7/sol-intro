// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

contract MyContract {
  string name = 'Example 1'; // will not be visible on the blockchain
  string private name1 = 'Example 1'; // visible privately
  string internal name2 = 'Example 1'; // visible internally
  string public name3 = 'Example 1'; // visible publicly

  function setName(string memory _name) public {
    name = _name;
  }

  // view => a modifier function that says function getName can only be viewed
  function getName() public view returns(string memory) {
    return name;
  }

  function resetName() public {
    name = 'Example 1';
  }

  function add(uint a, uint b) public pure returns(uint) {
    return a + b;
  }

}
