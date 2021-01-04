pragma solidity ^0.5.0;

import "@openzeppelin/contracts/introspection/IERC165.sol";

contract IERC908Combinable is IERC165 {
 
    event Compound(uint256 indexed tokenId, uint256[] indexed ids);
    event Decompose(uint256 indexed tokenId, uint256[] indexed ids);

    function getChildren(uint256 tokenId) public view returns (uint256[] memory) ;

    function getParrent(uint256 tokenId) public view returns (uint256) ;

    function compound(uint256 tokenId, uint256[] memory ids) public;

    function decompose(uint256 tokenId) public;
}


// contract Selector {
//     function calculateSelector() public pure returns (bytes4,bytes4,bytes4,bytes4,bytes4) {
//         IERC908Combinable i;
//         return 
//         (i.getChildren.selector , i.getParrent.selector , i.compound.selector , i.decompose.selector,
//         i.getChildren.selector ^ i.getParrent.selector ^ i.compound.selector ^ i.decompose.selector);
//     }
// }