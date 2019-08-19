pragma solidity >=0.4.22 <0.6.0;

contract SignedDigitalAsset {
    // The owner of the contract
    address owner;
    // Name of the institution (for reference purposes only)
    string public institution;
    // Storage for linking the signatures to the digital fingerprints
    mapping (bytes32 => string) fingerprintSignatureMapping;

    event test_value(string value1);

    // Event functionality
    event SignatureAdded(string digitalFingerprint, string signature, uint256 timestamp);
    // Modifier restricting only the owner of this contract to perform certain operations
    modifier isOwner() {
        if(msg.sender == owner) {
            _;
        }
//        emit test_value('owner');
//        require(msg.sender != owner,'Only contract owner can do this operation');
//        _;
    }

    // Constructor of the Signed Digital Asset contract
    constructor(string memory _institution) public {
        emit test_value('hello world constructor');
        owner = msg.sender;
        institution = _institution;
    }
    // Adds a new signature and links it to its corresponding digital fingerprint
    function addSignature(string memory digitalFingerprint, string memory signature) public isOwner {
        emit test_value('hello world add signature');
        // Add signature to the mapping
        fingerprintSignatureMapping[keccak256(abi.encodePacked(digitalFingerprint))] = signature;
        // Broadcast the token added event
        emit SignatureAdded(digitalFingerprint, signature, now);
    }

    // Removes a signature from this contract
    function removeSignature(string memory digitalFingerprint) public isOwner {
        // Replaces an existing Signature with empty string
        fingerprintSignatureMapping[keccak256(abi.encodePacked(digitalFingerprint))] = "";
    }

    // Returns the corresponding signature for a specified digital fingerprint
    function getSignature(string memory digitalFingerprint) public view returns(string memory) {
        return fingerprintSignatureMapping[keccak256(abi.encodePacked(digitalFingerprint))];
    }

    function hello() public {
        emit test_value('hello world get sig');
    }

    // Removes the entire contract from the blockchain and invalidates all signatures
    function removeSdaContract() public isOwner {
        selfdestruct(msg.sender);
    }
}

//     modifier isOwner() { 
//    	require(msg.sender != owner,"Only contract owner do this operation");
//    	_;
//    }