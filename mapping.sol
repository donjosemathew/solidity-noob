// SPDX-License-Identifier:MIT
pragma solidity 0.8.8; //Specify the version of Solidity .Important to mention the Licence used 

contract SimpleStorage{
    //EVM Etherium Virtual Machine
    //Avalanche Phantom Polygon
    //mapping from one attribute to another
    mapping(string=>uint256) public nameToFavoriteNumber;
    struct People{
        string name;
        uint favNumber;
    }
    People[] public people;
    
    function addPerson(string calldata _name,uint256 _favoriteNumber) public {
        people.push(People(_name,_favoriteNumber));
        nameToFavoriteNumber[_name]=_favoriteNumber;
    }

 
   
    
}