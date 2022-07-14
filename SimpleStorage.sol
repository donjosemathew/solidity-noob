// SPDX-License-Identifier:MIT
pragma solidity 0.8.8; //Specify the version of Solidity .Important to mention the Licence used 

contract SimpleStorage{
    //contract keyword to specify a contract

    //Types
    ////boolean, uint, int, address, bytes
    ///uint you cna specify how many bits default value uint256
    uint8 hasFavNumber=128;
    uint8 hasFavNum; //initialised to 0
    string name="India";   
    int256 favInt=-4;
    bytes32 favNum="Cat";
    address myAddress=0xe277F9Ae64551ff1C1aD2cCd707F4bDAFCAFD36C;
}