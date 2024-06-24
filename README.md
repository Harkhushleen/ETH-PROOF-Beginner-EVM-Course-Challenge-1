#SolidityBeginnerAssessment

This guide demonstrates how to create tokens using the Remix IDE on Ethereum. remix.ethereum.org

##Create a Token:

The code can track of the total supply of coins, mint and burn tokens.

##Description:

Create_a_token.sol fulfills the requirements for creating a Solidity smart contract with the following features:

Public Variables: tokenName, tokenAbbrv, and totalSupply are publicly accessible variables that store information about the token. totalSupply keeps track of the total number of tokens minted. Mapping: The balances mapping associates addresses with their respective token balances using address as keys and uint256 (unsigned integers) as values. Functions: The contract includes two main functions: mint(address _to, uint256 _value): Increases the balance of _to by _value and increments totalSupply. burn(address _from, uint256 _value): Decreases the balance of _from by _value and reduces totalSupply. It includes a check to ensure the _from address has sufficient tokens to burn. the value given, and decreases the total supply.

##Getting Started

###Executing program

*Remix IDE: Navigate to Remix Ethereum IDE.

*File Creation: Create a new file by clicking the "+" icon on the left sidebar and save it with a .sol extension. Copy and paste the content of maketoken.sol into this file.

*Compilation: Go to the "Solidity Compiler" tab, ensure the compiler version is set to "0.8.26" or compatible, then click "Compile maketoken.sol".

*Deployment: Switch to the "Deploy & Run Transactions" tab to deploy the contract. Select the MyToken contract from the dropdown menu and click "Deploy".

*Interacting: After deployment, navigate to the "Deployed Contracts" section at the bottom left. Click on MyToken to interact with functions like mint and burn, which manage token creation and destruction respectively.

##Author

Harkhushleen Kaur

##License

This project is licensed under the MIT License - see the LICENSE file for details
