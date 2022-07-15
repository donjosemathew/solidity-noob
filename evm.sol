// SPDX-License-Identifier:MIT
pragma solidity 0.8.8; //Specify the version of Solidity .Important to mention the Licence used 

contract SimpleStorage{
   
  
    struct People{
        string name;
        uint favNumber;
    }
    People[] public people;
    //calldata -> temporary variable that can be modified
    // memory-> temporary variable that can be modified 
    // storage -> Permanent
    // memory keyword is needed only for arrays,structs etc not for int etc
    function addPerson(string memory _name,uint256 _favoriteNumber){
        people.push(People(_name,_favoriteNumber));
    }

 
   
    
}