// contracts/GameItem.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/utils/Counters.sol";

contract ZaraCreations is ERC721URIStorage() {
    
    using Counters for Counters.Counter;
    Counters.Counter private _tokenIds;
    
    constructor() ERC721("Zara Creations", "ZCT"){
        
    }
    
        function createNFT (address zct_owner, string memory zctURI) public returns (uint256) {
        
        _tokenIds.increment();
        
         uint256 newNFTItemId = _tokenIds.current();
         
        _mint(zct_owner,newNFTItemId);
        
        _setTokenURI(newNFTItemId, zctURI);

        return newNFTItemId;
    }

    
}