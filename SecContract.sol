contract SecContract {
  address public contractAddress;
  address public payer;
  address public origin;
  uint public amount;

  struct Book {
    string title;
    string author;
    bool completed;
  }

  constructor() {
    contractAddress = address(this);
  }

  function pay() public payable {
    payer = msg.sender;
    origin = tx.origin;
    amount = msg.value;
  }

  function getBlockInfo() public view returns(uint, uint, uint) {
    return(
      block.number,
      block.timestamp,
      block.chainid
    );
  }

  // Array of books
  Book[] public books;

  function addBook(string memory _title, string memory _author) public {
    books.push(Book(_title, author, false));
  }

  function getBook(uint _index) public view returns(string memory title, string memory author, bool completed) {
    Book storage book = books[_index];
    return (book.title, book.author, book.completed);
  }

  // update completed
  function complete(uint _index) public {
    Book storage book = books[_index];
    book.completed = true;
  }
}
