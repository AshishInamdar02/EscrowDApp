// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract ApprovalContract {

  address public sender;
  address public receiver;
  address public constant approver = ;

  function deposit(address _receiver) external payable {
    
    require(msg.value > 0);
    sender = msg.sender;
    receiver = _receiver;
  }

  function viewApprover() external pure returns(address) {
    
    return(approver);
  }

  function approve() external {
    
    require(msg.sender == approver);
    receiver.transfer(this.balance);
  }

}
