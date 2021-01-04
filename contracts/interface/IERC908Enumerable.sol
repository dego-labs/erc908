pragma solidity ^0.5.0;

import "./IERC908Usership.sol";

contract IERC908Enumerable is IERC908Usership  {

    function tokenOfUsershipByIndex(address user, uint256 index) public view returns (uint256 tokenId);

    function tokenOfUsership(address user) public view returns (uint256[] memory);
}

// contract Selector {
//     function calculateSelector() public pure returns (bytes4,bytes4,bytes4) {
//         IERC908Enumerable i;
//         return 
//         (i.tokenOfUsershipByIndex.selector , i.tokenOfUsership.selector , 
//         i.tokenOfUsershipByIndex.selector ^ i.tokenOfUsership.selector );
//     }
// }