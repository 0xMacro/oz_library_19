// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "openzeppelin-contracts-upgradeable/token/ERC721/extensions/ERC721ConsecutiveUpgradeable.sol";

contract SimpleConsecutiveNFT is ERC721ConsecutiveUpgradeable {

    function initialize(string memory name, string memory symbol) public {
        __ERC721Consecutive_init(name, symbol);
    }

    function mint(address to) public {
        uint256 tokenId = _consecutiveTokenId();
        _safeMint(to, tokenId);
        _incrementTokenId();
    }
}
