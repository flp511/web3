// 事件是区块链上的日志，每当用户发起操作的时候，可以发送相应的事件，常用于：
// 1. 监听用户对合约的调用
// 2. 便宜的存储（用合约存储更加昂贵）

// 通过链下程序（如：subgraph）对合约进行事件监听，可以对Event进行搜集整理，从而做好数据统计，常用方式：
// 1. 合约触发后发送事件
// 2. subgraph对合约事件进行监听，计算（如：统计用户数量）
// 3. 前端程序直接访问subgraph的服务，获得统计数据（这避免了在合约层面统计数据的费用，并且获取速度更快）

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Event {
    // Event declaration
    // Up to 3 parameters can be indexed.
    // Indexed parameters helps you filter the logs by the indexed parameter
    event Log(address indexed sender, string message); // 修饰为indexed
    event AnotherLog(); // 无参数的事件
  	event TestAnonymous(address indexed sender, uint256 num) anonymous; // 匿名事件

    function test() public {
        emit Log(msg.sender, "Hello World!");
        emit Log(msg.sender, "Hello EVM!");
        emit AnotherLog();
    }
}
