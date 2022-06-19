```bash
$ echidna-test Test.sol --contract Test --config config.yaml 
Analyzing contract: .../ethernaut/07_Force/Test.sol:Test
echidna_cant_receive_ether: failed!💥  
  Call sequence:
    selfDestruct(0x1234) Value: 0x1
```