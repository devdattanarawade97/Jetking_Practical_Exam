


// SPDX-License-Identifier: MIT
pragma solidity >=0.8.20;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";




contract V_LAND is ERC721 {



    //TOKEN id 
    uint256 tokenId;

    //
     mapping (uint256=> address) public LandRegisterer;



    constructor()  ERC721 ("V_LAND_NFT", "VNFT"){
         
    }



       //mint nft
        function mintNFT(address to_address) public  {

            _safeMint(to_address, tokenId);
            tokenId++;

            LandRegisterer[tokenId]= to_address;

        } 
    
      
       //transfer nft 
        function transferNFT(address to_address , address from_address , uint256 tokenid) public {

            _safeTransfer(from_address, to_address, tokenid);
             LandRegisterer[tokenId]= to_address;
        } 
       
       //register land 
       function registerVirtualLand() public {
        address userAddress = msg.sender;

         mintNFT(userAddress);
         }


         //

         function checkNfts(uint256 tokenid) public view returns(address owner){

          owner= LandRegisterer[tokenid];
         }
    
}



