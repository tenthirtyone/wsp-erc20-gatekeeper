pragma solidity ^0.4.11;

contract GateKeeper {
	address owner;
	uint256 accessAmount;
	uint256 deadline;

	modifier afterDeadline() { if (now >= deadline) _; }
	modifier beforeDeadline() { if (now <= deadline) _; }

	mapping(address => uint256) balances;
	mapping(address => bool) accessList;

	function GateKeeper() {
		owner = msg.sender;
	}

	function () payable beforeDeadline {
		if (msg.value < accessAmount) {
			throw;
		}
		if (msg.value > 0) {
			balances[msg.sender] += msg.value;
			accessList[msg.sender] = true;
		}
	}

	function safeWithdrawal() afterDeadline {
		uint256 amount = balances[msg.sender];
		balances[msg.sender] = 0;
		if (amount > 0) {
			if (msg.sender.send(amount)) {
				// Event Logging
			} else {
				balances[msg.sender] = amount;
			}
		}
	}

	function isOnTheList() constant returns (bool) {
		return accessList[msg.sender];
	}
}
