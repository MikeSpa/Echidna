```bash
$ echidna-test TestToken.sol --contract TestToken --config config.yaml 
Analyzing contract: .../ethernaut/05_Token/TestToken.sol:TestToken
echidna_cant_get_more_than_20_token: failed!💥  
  Call sequence, shrinking (2661/5000):
    transfer(0x0,21)
```