//SPDX-License-Identifier:MIT
pragma solidity 0.8.8; 
import "./SimpleStorage.sol";

contract ExtraStorage is SimpleStorage{
    // is -> used to implement inheritance
    // overide virtual
    function store(uint256 _favoriteNumber) public override{
        favoriteNumber=_favoriteNumber+5;
    }
}