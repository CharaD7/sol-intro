contract SecContract {
  address public contractAddress;
  address public payer;
  address public origin;
  uint public amount;

  constructor() {
    contractAddress = address(this);
  }

  function pay() public payable {
    payer = msg.sender;
    origin = tx.origin;
    amount = msg.value;
  }
}
