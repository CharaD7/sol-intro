// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

contract ThiContract {
  string public message = 'Hello World';

  event MessageUpdated(address indexed _user, string _message);
}
