contract SecContract {
  address public contractAddress;
  address public payer;
  address public origin;
  uint public amount;

  constructor() {
    contractAddress = address(this);
  }
}
