pragma solidity ^0.5.0;


import "@openzeppelin/contracts/token/ERC721/IERC721.sol";
import "./IERC908Usership.sol";
import "./IERC908Combinable.sol";
import "./IERC908Enumerable.sol";

contract IERC908 is  IERC721 {
    event TransferBatch(address indexed from, address indexed to, uint256[]  ids);
    
    function safeBatchTransferFrom(address from, address to, uint256[] memory ids , bytes memory data) public;

}

// contract Selector {
//     function calculateSelector() public pure returns (bytes4) {
//         IERC908 i;
//         return 
//         (i.safeBatchTransferFrom.selector);
//     }
// }