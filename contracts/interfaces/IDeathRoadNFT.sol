pragma solidity ^0.8.0;
import "@openzeppelin/contracts/token/ERC721/IERC721.sol";

interface IDeathRoadNFT is IERC721 {

    struct Box {
        bool isOpen;
        address owner;
        bytes32 boxType; // car, weapon, other,....
        bytes32 packType; // iron, bronze, silver, gold, platinum, diamond
    }

    function getFeatures(uint256 tokenId) external view returns (bytes32[] memory, bytes32[] memory);

    function existFeatures(uint256 tokenId) external view returns(bool);
}