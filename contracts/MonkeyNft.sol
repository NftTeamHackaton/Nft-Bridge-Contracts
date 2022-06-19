pragma solidity 0.6.4;
pragma experimental ABIEncoderV2;

import "./token/ERC721/ERC721.sol";
import "./token/ERC721/ERC721Burnable.sol";

/**
    @title Facilitates deposits, creation and votiing of deposit proposals, and deposit executions.
    @author ChainSafe Systems.
 */
contract WrappedRarible is ERC721, ERC721Burnable {
    constructor(string memory name, string memory symbol) public ERC721(name, symbol) {
    }

    function mint(address to, uint256 tokenId, string memory _tokenURI) public  {
        _mint(to, tokenId);
        _setTokenURI(tokenId, _tokenURI);
    }
}