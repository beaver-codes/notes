// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

import './IERC20.sol';

contract BeaverMoon is IERC20 {
  uint256 private _totalBaseSupply;
  uint256 private _totalReflectionTokens;
  mapping(address => uint256) private _balaces;

  uint256 private constant RATIO_PRECISION = 10**6;

  function getRatio() private view returns (uint256) {
    return ((_totalBaseSupply + _totalReflectionTokens) * RATIO_PRECISION) / _totalBaseSupply; // 1.0001
  }

  function _toReflectedAmount(uint256 baseAmount) private view returns (uint256) {
    return (baseAmount * getRatio()) / RATIO_PRECISION;
  }
  function _fromReflectedAmount(uint256 reflectedAmount) private view returns (uint256) {
    return (reflectedAmount * RATIO_PRECISION)/ getRatio();
  }


  function totalSupply() external view returns (uint256) {
    return _totalBaseSupply;
  }


  function balanceOf(address account) external view returns (uint256) {
    return _toReflectedAmount(_balaces[account]);
  }

  function mint(address account , uint256 amount) public {
    _balaces[account] += amount;
    _totalBaseSupply += amount;
  }

  function _mainTransfer(address from, address to, uint256 reflectedAmount) private returns (bool) {
    uint256 baseAmount = _fromReflectedAmount(reflectedAmount);

    require(baseAmount > 0);
    require(_balaces[from] > baseAmount);
    require(from != to);
    require(from == msg.sender);

    uint256 reflectionFee = baseAmount / 10;


    _balaces[from] -= baseAmount;
    _totalReflectionTokens += reflectionFee;
    _balaces[to] += baseAmount - reflectionFee;

    return true;
  }





  function transfer(address to, uint256 amount) external returns (bool) {
    return _mainTransfer(msg.sender, to, amount);
  }

  function transferFrom(
      address from,
      address to,
      uint256 amount
  ) external returns (bool) {
    return _mainTransfer(from, to, amount);
  }





  // Allowance is over our pay-grade ... :) (out of scope)

  function allowance(address owner, address spender) external view returns (uint256) {
    return 0;
  }

  function approve(address spender, uint256 amount) external returns (bool) {
    return false;
  }
}
