//SPDX-License-Identifier:MIT
//ChainLink is technology used to
// access outside data from a centralised system
//Data feeds
pragma solidity 0.8.8;
import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

contract FundMe{
    uint256 public minimumUSDollar=50 * 1e18;
    address[] public funders;
    mapping(address => uint256) public addressToAmountfunds;
    function fund( ) public payable{
        //Want able to send minimu amount
        //1.how do we send ETH
        //payable mark function as funding 2.45
        require(getConversionRate(msg.value)>=minimumUSDollar,"Didn't have enough to send");//1e18==1*10**18 ==1wei
        funders.push(msg.sender);
        addressToAmountfunds[msg.sender]=msg.value;
        //reverting?if don't have enough balance the the gas spend for 
        //prior operations will be returned
    }

    function getPrice() public view returns(uint256){
        //ABI
        //Addresss 
        //to interact with outside data 0x8A753747A1Fa494EC906cE90E9f37563A8AF630e
        AggregatorV3Interface pricefeed=AggregatorV3Interface(0x8A753747A1Fa494EC906cE90E9f37563A8AF630e);
        (,int256 price,,,)=pricefeed.latestRoundData();
        //1ETH IN TERMS OF USD
        //
        return uint256(price*1e10);//1**10

    }

    function getConversionRate(uint256 ethAmount) public view returns(uint256){
        uint256 ethPrice=getPrice();
        uint256 ethAmountInUsd=(ethPrice*ethAmount)/1e18;
        return ethAmountInUsd;
    }
}