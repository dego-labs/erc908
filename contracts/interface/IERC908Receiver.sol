pragma solidity ^0.5.0;

/**
 * @title ERC908 token receiver interface
 * @dev Interface for any contract that wants to support safeTransfers
 * from ERC908 asset contracts.
 */
contract IERC908Receiver {
    /**
     * @notice Handle the receipt of an NFT
     * @dev The ERC908 smart contract calls this function on the recipient
     * after a {IERC908-safeLeaseTransfer or safeTransferFrom }. This function MUST return the function selector,
     * otherwise the caller will revert the transaction. The selector to be
     * returned can be obtained as `this.onERC908Received.selector`. This
     * function MAY throw to revert and reject the transfer.
     * Note: the ERC908 contract address is always the message sender.
     * @param operator The address which called `safeLeaseTransfer or safeTransferFrom` function
     * @param from The address which previously owned the token
     * @param tokenId The NFT identifier which is being transferred
     * @param data Additional data with no specified format
     * @return bytes4 `bytes4(keccak256("onERC908Received(address,address,uint256,bytes)"))`
     */
    function onERC908Received(address operator, address from, uint256 tokenId, bytes memory data)
    public returns (bytes4);

    /**
     * @notice Handle the receipt of an NFT
     * @dev The ERC908 smart contract calls this function on the recipient
     * after a {IERC908-usershipReclaim}. This function MUST return the function selector,
     * otherwise the caller will revert the transaction. The selector to be
     * returned can be obtained as `this.onERC908LeaseEnd.selector`. This
     * function MAY throw to revert and reject the transfer.
     * Note: the ERC908 contract address is always the message sender.
     * @param operator The address which called `usershipReclaim` function
     * @param from The address which previously owned the token
     * @param tokenId The NFT identifier which is being transferred
     * @param data Additional data with no specified format
     * @return bytes4 `bytes4(keccak256("onERC908LeaseEnd(address,address,uint256,bytes)"))`
     */
    function onERC908UsershipReclaim(address operator, address from, uint256 tokenId, bytes memory data)
    public returns (bytes4);

}



// contract Selector {
//     function calculateSelector() public pure returns (bytes4,bytes4,bytes4) {
//         IERC908Receiver i;
//         return 
//         (
//         i.onERC908Received.selector , 
//         i.onERC908UsershipReclaim.selector , 
//         i.onERC908Received.selector^
//         i.onERC908UsershipReclaim.selector
//         );
//     }
// }

// //0x4e8dce34^0x200c873e==0x6e81490a