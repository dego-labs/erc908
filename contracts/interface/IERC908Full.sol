pragma solidity ^0.5.0;


pragma experimental ABIEncoderV2;

import "./IERC908Combinable.sol";
import "./IERC908Enumerable.sol";
import "./IERC908.sol";

contract IERC908Full is IERC908Combinable,IERC908Enumerable,IERC908 {

    event CompoundMint(address indexed to,uint256 indexed tokenId,address indexed owner,uint256[] ids);
    event DecomposeBurn(uint256 indexed tokenId,address indexed owner,uint256[]  ids);
    event TransferBatch(address indexed from, address indexed to, uint256[]  ids);

    function mint(address to, uint256 tokenId) public returns (bool) ;

    function burn(uint256 tokenId) public ;

    function compoundMint(address to, uint256 tokenId, uint256[] memory ids) public;

    function decomposeBurn(uint256 tokenId) public;

    function usershipIssue(uint256 tokenId, address to, uint256 period) public ;

    function usershipReturn(uint256 tokenId) public;

    function usershipReclaim(uint256 tokenId, bytes memory data) public;
    
}

// contract Selector {
//     function calculateSelector() public pure returns (bytes4,bytes4,bytes4,bytes4,bytes4,bytes4,bytes4,bytes4) {
//         IERC908Full i;
//         return 
//         (
//         i.mint.selector , 
//         i.burn.selector , 
//         i.compoundMint.selector ,
//         i.decomposeBurn.selector,
//         i.usershipIssue.selector , 
//         i.usershipReturn.selector , 
//         i.usershipReclaim.selector ,
//         i.mint.selector ^
//         i.burn.selector ^
//         i.compoundMint.selector ^
//         i.decomposeBurn.selector ^
//         i.usershipIssue.selector ^
//         i.usershipReturn.selector ^
//         i.usershipReclaim.selector
//         );
//     }
// }