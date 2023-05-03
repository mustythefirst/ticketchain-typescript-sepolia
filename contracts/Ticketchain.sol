// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";
import "@openzeppelin/contracts/access/Ownable.sol";


contract Ticketchain is ERC1155, Ownable {
    uint256 public totalSupply;

    constructor() ERC1155("https://gateway.pinata.cloud/ipfs/QmSNBEA9HHyYJFwHok9s6p71APdJxMynEDWTDfAJ3Lvpj6?_gl=1*wdad26*rs_ga*MGQwZDE3NGEtMmQyYi00MmNkLWIzMDUtZjkwMDg2YjhlYmVh*rs_ga_5RMPXG14TE*MTY4MzE0Njk0OC4yLjEuMTY4MzE0NzI0MS41NS4wLjA.") {}

    function mint() public {
        unchecked {
            ++totalSupply;
        }

        _mint(msg.sender, 1, 1, "");
    }
}
