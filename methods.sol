// SPDX-License-Identifier:MIT
pragma solidity 0.8.8; //Specify the version of Solidity .Important to mention the Licence used 

contract SimpleStorage{
   
    // public: visible externally and internally (creates a getter function for storage/state variables)
    // private: only visible in the current contract
    // external: only visible externally (only for functions) - i.e. can only be message-called (via this.func)
    // internal: only visible internally
    uint256 public favNumber; //if public is not added default internal
    function store(uint256 _favNumber) public {
        favNumber=_favNumber;
        favNumber=_favNumber+1;
    }

    //view,pure functions disallow modifiaction of  State. No energy is needed
    function retrive() public view returns(uint256){
        return favNumber;
    }
    //pure doesn't allow data access
    function add() public pure returns(uint256){
        return 1+2;
    }
    
}