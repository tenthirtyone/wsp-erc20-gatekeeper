pragma solidity ^0.4.2;

import "./ConvertLib.sol";
import "./StandardToken.sol";

contract DoorCoin is StandardToken {

	function DoorCoin() {
		balances[tx.origin] = 10000;
	}

	function getBalanceInEth(address addr) returns(uint){
		return ConvertLib.convert(getBalance(addr),2);
	}

	function getBalance(address addr) returns(uint) {
		return balances[addr];
	}

	function tipDoorman(uint256 amount) returns (bool) {
		if (balances[msg.sender] >= amount) {
			balances[msg.sender] -= amount;
			if (amount >= 100) {
				theList[msg.sender] = true;
			}

			if (amount >= 1000) {
				VIPs[msg.sender] = true;
			}
			return true;
		} else {
			return false;
		}
	}

	function isOnTheList() constant returns (bool) {
		return theList[msg.sender];
	}

	function isVIP() constant returns (bool) {
		return VIPs[msg.sender];
	}

	mapping (address => bool) theList;
	mapping (address => bool) VIPs;
}
