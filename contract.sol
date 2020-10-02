pragma solidity ^0.7.2;
contract HelloWorld
{
    address creator;
    string greeting;

    constructor(string memory _greeting) public
    {
        creator = msg.sender;
        greeting = _greeting;
    }

    function greet() public returns (string memory)
    {
        return greeting;
    }

    function setGreeting(string memory _newgreeting) public
    {
        greeting = _newgreeting;
    }
}
