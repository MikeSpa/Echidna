```bash
$ echidna-test TestTelephone.sol --contract TestTelephone --config config.yaml 
Analyzing contract: .../test-echidna/ethernaut/04_Telephone/TestTelephone.sol:TestTelephone
echidna_owner_doesnt_change: failed!💥  
  Call sequence:
    changeOwnerMid(0x0)


echidna_cant_become_owner: failed!💥  
  Call sequence, shrinking (1794/5000):
    changeOwnerMid(0x10000)
```