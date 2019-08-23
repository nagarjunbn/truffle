pragma solidity >=0.4.22 <0.6.0;

contract Learning {

    address public owner;
    string staticData;
    address ownerPrivate;

    event test_value(string value1);

    // Constructor of the Signed Digital Asset contract
    constructor(string memory constructorValue) public {
        emit test_value('hello world constructor');
        staticData = constructorValue;
        owner = msg.sender;
        ownerPrivate = msg.sender;
    }

    function addToLog0() public {
//        emit test_value('hello world get sig');
        log0("OK");
    }

    function getString() public view returns(string memory) {
        return 'hello world';
    }

    function getPrivateString() public view returns(string memory) {
        return staticData;
    }

    function getPrivateAddress() public view returns(address) {
        return ownerPrivate;
    }

    function getSenderAddress() public view returns(address) {
        return msg.sender;
    }

    function compareAddress() public view returns(string memory) {
        if(ownerPrivate == msg.sender) {
            return 'same as owner';
        } else {
            return 'not owner';
        }
    }
}