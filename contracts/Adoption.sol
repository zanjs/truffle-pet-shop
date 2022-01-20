// SPDX-License-Identifier: MIT
pragma solidity >=0.4.17 <0.8.12;

contract Adoption {
    address[16] public adopters; // 保存领养者的地址

    function adopt(uint256 petId) public returns (uint256) {
        require(petId >= 0 && petId <= 15); // 确保Id 在数组长度内

        adopters[petId] = msg.sender; // 保存调用这个地址

        return petId;
    }

    // Retrieving the adopters
    function getAdopters() public view returns (address[16] memory) {
        return adopters;
    }
}
