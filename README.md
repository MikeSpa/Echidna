# [Echidna Tutorial exercises](https://github.com/crytic/building-secure-contracts/tree/master/program-analysis/echidna)

## Properties

Echidna properties are Solidity functions. A property must:
- Have no argument
- Return true if it is successful
- Have its name starting with echidna

Echidna will:
- Automatically generate arbitrary transactions to test the property.
- Report any transactions leading a property to return false or throw an error.
- Discard side-effects when calling a property (i.e. if the property changes a state variable, it is discarded after the test)