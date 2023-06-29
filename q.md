### 学习文档

- solidity手册：https://docs.soliditylang.org/en/v0.8.13/
- solidity基础语法部分参考了：https://solidity-by-example.org/

### 事件

一个事件内可以最多将三个字段修饰为indexed，当使用indexed关键字时，更加方便索引，并且：

1. 如果修饰的是值类型的，则直接展示；
2. 如果是非值类型，如：array，string等，则使用keccak256哈希值。
3. indexed：方便索引，加了inexed是topics
4. non-indexed：没有解码，需要使用abi解码后才知道内容，不加indexd是data

参考：

1. https://docs.soliditylang.org/en/v0.8.13/abi-spec.html#indexed-event-encoding
2. https://docs.soliditylang.org/en/v0.8.13/abi-spec.html#abi-events
3. https://blog.chain.link/events-and-logging-in-solidity-zh/
4. https://ethereum.stackexchange.com/questions/3418/how-does-ethereum-make-use-of-bloom-filters/3426



其他：

1. Log也在区块链账本中，和合约存储在不同的结构中；
2. Log是由交易执行产生的数据，它是不需要共识的，可以通过重新执行交易生成；
3. Log是经由链上校验的，无法造假，因为一笔交易的ReceiptHash是存在链上的（Header中）

![image-20220802140701198](https://duke-typora.s3.ap-southeast-1.amazonaws.com/uPic/image-20220802140701198.png)


### 什么是CA EOA
外部账户，Externally Owned Accounts，简称EOA，它拥有私钥，其codeHash为空。

合约账户，Contact Account，简称CA，它没有私钥，其codeHash非空。
`https://ckbyter.substack.com/p/eoaca`


