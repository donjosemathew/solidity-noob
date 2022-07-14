// SPDX-License-Identifier:MIT
pragma solidity 0.8.8; //Specify the version of Solidity .Important to mention the Licence used 

contract SimpleStorage{
   
  
    struct People{
        string name;
        uint favNumber;
    }
    People[] public people;
    function addPerson(string memory _name,uint256 _favoriteNumber){
        people.push(People(_name,_favoriteNumber));
    }

 
   
    
}