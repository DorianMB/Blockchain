// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract Migrations {
  address public owner = msg.sender;

  string public expedition_status = "Pending";

  event UpdateStatus(string newStatus);

  modifier restricted() {
    require(
      msg.sender == owner,
      "This function is restricted to the contract's owner"
    );
    _;
  }

  function setShipped(uint shipped) public restricted {
    if (shipped) {
      expedition_status = "Shipped";
      emit UpdateStatus(expedition_status);
    }
  }

  function setDelivered(uint delivered) public restricted {
    if (delivered) {
      expedition_status = "Delivered";
      emit UpdateStatus(expedition_status);
    }
  }
}
