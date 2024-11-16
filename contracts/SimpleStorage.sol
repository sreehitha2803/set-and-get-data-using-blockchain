// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleStorage {
    string private data;

    // Event to log data changes
    event DataChanged(string newData);

    // Setter function to update data
    function setter(string memory _data) public {
        data = _data;
        emit DataChanged(_data); // Emit event when data changes
    }

    // Getter function to retrieve data
    function getter() public view returns (string memory) {
        return data;
    }
}
