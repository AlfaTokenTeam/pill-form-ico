pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract PillForm is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function PillForm(address _owner)  UpgradeableToken(_owner) {
    name = "PillForm";
    symbol = "XTC";
    totalSupply = 700000;
    decimals = 1;

    balances[_owner] = totalSupply;
  }
}