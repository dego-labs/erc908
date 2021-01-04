pragma solidity ^0.5.0;



pragma experimental ABIEncoderV2;

import "@openzeppelin/contracts/introspection/IERC165.sol";


contract IERC908Usership is IERC165 {

    struct UsershipInfo
    {
        address user;
        uint256 start;
        uint256 period;
    }

    event UsershipIssue(uint256 indexed tokenId,address indexed from,uint256  start, uint256  period);
    event UsershipReturn(uint256 indexed tokenId,address indexed from,uint256  start, uint256  period);
    event UsershipReclaim(uint256 indexed tokenId,address indexed from,uint256  start, uint256  period);

    event UsershipTransfer(address indexed from, address indexed to, uint256 indexed tokenId);
    event UsershipApproval(address indexed from, address indexed approved, uint256 indexed tokenId);
    event UsershipApprovalForAll(address indexed from, address indexed operator, bool approved);

    //
    function balanceOfUsership(address user) public view returns (uint256 balance);

    function getUsershipInfo(uint256 tokenId) public view returns (UsershipInfo memory) ;

    function usershipOf(uint256 tokenId) public view returns (address) ;

    // function usershipIssue(uint256 tokenId, address to, uint256 period) public ;

    // function usershipReturn(uint256 tokenId) public;

    // function usershipReclaim(uint256 tokenId,bytes memory data) public;

    //
    function usershipApprove(address to, uint256 tokenId) public ;

    function getUsershipApproved(uint256 tokenId) public view returns (address) ;

    function setUsershipApprovalForAll(address to, bool approved) public ;

    function isUsershipApprovedForAll(address user, address operator) public view returns (bool) ;

    //
    function usershipTransfer(address from, address to, uint256 tokenId) public ;

    function usershipSafeTransfer(address from, address to, uint256 tokenId) public ;

    function usershipSafeTransfer(address from, address to, uint256 tokenId, bytes memory data) public ;
}


// contract Selector {
//     function calculateSelector() public pure returns (bytes4,bytes4,bytes4,bytes4,bytes4,bytes4,bytes4,bytes4,bytes4,bytes4) {
//         IERC908Usership i;
//         return 
//         (
//         i.balanceOfUsership.selector , 
//         i.getUsershipInfo.selector , 
//         i.usershipOf.selector ,
//         i.usershipApprove.selector,
//         i.getUsershipApproved.selector , 
//         i.setUsershipApprovalForAll.selector , 
//         i.isUsershipApprovedForAll.selector ,
//         i.usershipTransfer.selector,
//         bytes4(keccak256('usershipSafeTransfer(address,addres,uint256)')),
//         bytes4(keccak256('usershipSafeTransfer(address,addres,uint256,bytes)'))
//         );
//     }
//         function calculateAllSelector() public pure returns (bytes4) {
//         IERC908Usership i;
//         return 
//         (
//         i.balanceOfUsership.selector^
//         i.getUsershipInfo.selector^
//         i.usershipOf.selector^
//         i.usershipApprove.selector^
//         i.getUsershipApproved.selector^
//         i.setUsershipApprovalForAll.selector^
//         i.isUsershipApprovedForAll.selector^
//         i.usershipTransfer.selector^
//         bytes4(keccak256('usershipSafeTransfer(address,addres,uint256)'))^
//         bytes4(keccak256('usershipSafeTransfer(address,addres,uint256,bytes)'))
//         );
//     }
// }