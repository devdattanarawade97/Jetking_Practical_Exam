

// SPDX-License-Identifier: MIT
pragma solidity 0.8;

import {ERC721} from "@openzeppelin/contracts/token/ERC721/ERC721.sol";
// import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
//exam question 1) Write a Basic NFT Contract made by using Solidity, Remix IDE, and OpenZeppelin.



//contract
 contract basicNFT  {



//variables
    address minter;
    uint maxSupply;
    uint nftToken;
    

//mint leadger to validate whether address have sufficent nft before transfer
    mapping (address=>uint) mintLeadger;
//nft leadger - record of all nft transfers.
   mapping (address=>uint) nftLeadger;


//contructor
//@dev set max supply 
//@dev set minter for this token
    constructor(uint _maxSupply ) {
       maxSupply=_maxSupply;
       minter=msg.sender;
     

    }


  //only minter can executes
 //@dev only minter can mint coins .
 modifier onlyMinterModifier(){

    require(msg.sender==minter, "only minter can mint coins");
    _;
 }


 //mint coins function
 //@dev only minter can execute this mint function
   function mintCoins(address payable receiverAddress , uint numOfToken) public onlyMinterModifier {
       
       mintLeadger[receiverAddress]=numOfToken;
   }


   //transfer token function
   //@dev sender should have sufficent nft token before transfer
   function transferToken(address payable  newOwner) public  {

          require(mintLeadger[msg.sender]>=0 , "insufficent tokens");
          nftLeadger[newOwner]=1;
          mintLeadger[msg.sender]= mintLeadger[msg.sender]-1;

   }

   //get tokenBalance
   //@dev view function returns nft token balance of msg.sender;
    
   function checkNftBalance() public view returns (uint balance) {

    return mintLeadger[msg.sender];
   }


}