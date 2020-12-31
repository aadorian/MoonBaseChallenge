// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.8.0;


import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract TorresGarcia is ERC721 {
  string[] public listSymbols;
  mapping(string => bool) _ercList;
  constructor() ERC721("TorresGarcia", "TG"){

  }
  function mint(string  memory _symbol) public {
    require(!_ercList[_symbol], "Token already exists.");
     listSymbols.push(_symbol); 
    uint _id = listSymbols.length;
    _mint(msg.sender, _id);
    _ercList[_symbol] = true;
  }
}
