# DockerETHnode

## Build and run the container
docker build -t eth .

docker run -it eth

## get the abi and insert it in a variable
var abi = [{"inputs":[{"internalType":"string","name":"_greeting","type":"string"}],"stateMutability":"nonpayable","type":"constructor"},{"inputs":[],"name":"greet","outputs":[{"internalType":"string","name":"","type":"string"}],"stateMutability":"nonpayable","type":"function"},{"inputs":[{"internalType":"string","name":"_newgreeting","type":"string"}],"name":"setGreeting","outputs":[],"stateMutability":"nonpayable","type":"function"}]; 

## Insert the contrat in a variable
var myContract = web3.eth.contract(abi);

## get the bin and insert it in a variable
var bytecode = '0x' + '608060405234801561001057600080fd5b506040516104ff3803806104ff8339818101604052602081101561003357600080fd5b810190808051604051939291908464010000000082111561005357600080fd5b8382019150602082018581111561006957600080fd5b825186600182028301116401000000008211171561008657600080fd5b8083526020830192505050908051906020019080838360005b838110156100ba57808201518184015260208101905061009f565b50505050905090810190601f1680156100e75780820380516001836020036101000a031916815260200191505b50604052505050336000806101000a81548173ffffffffffffffffffffffffffffffffffffffff021916908373ffffffffffffffffffffffffffffffffffffffff160217905550806001908051906020019061014492919061014b565b50506101e8565b828054600181600116156101000203166002900490600052602060002090601f016020900481019282601f1061018c57805160ff19168380011785556101ba565b828001600101855582156101ba579182015b828111156101b957825182559160200191906001019061019e565b5b5090506101c791906101cb565b5090565b5b808211156101e45760008160009055506001016101cc565b5090565b610308806101f76000396000f3fe608060405234801561001057600080fd5b50600436106100365760003560e01c8063a41368621461003b578063cfae3217146100f6575b600080fd5b6100f46004803603602081101561005157600080fd5b810190808035906020019064010000000081111561006e57600080fd5b82018360208201111561008057600080fd5b803590602001918460018302840111640100000000831117156100a257600080fd5b91908080601f016020809104026020016040519081016040528093929190818152602001838380828437600081840152601f19601f820116905080830192505050505050509192919290505050610179565b005b6100fe610193565b6040518080602001828103825283818151815260200191508051906020019080838360005b8381101561013e578082015181840152602081019050610123565b50505050905090810190601f16801561016b5780820380516001836020036101000a031916815260200191505b509250505060405180910390f35b806001908051906020019061018f929190610235565b5050565b606060018054600181600116156101000203166002900480601f01602080910402602001604051908101604052809291908181526020018280546001816001161561010002031660029004801561022b5780601f106102005761010080835404028352916020019161022b565b820191906000526020600020905b81548152906001019060200180831161020e57829003601f168201915b5050505050905090565b828054600181600116156101000203166002900490600052602060002090601f016020900481019282601f1061027657805160ff19168380011785556102a4565b828001600101855582156102a4579182015b828111156102a3578251825591602001919060010190610288565b5b5090506102b191906102b5565b5090565b5b808211156102ce5760008160009055506001016102b6565b509056fea26469706673582212200dd3a17291e9530c620a754ae03f337a0d1209f39b4e006df08a4b7fd88270a064736f6c63430007020033';

## Deploy the contract 
var txDeploy = {from: web3.eth.accounts[0], data: bytecode, gas: 100000};
var myContractPartialInstance = myContract.new(txDeploy);

## Execute the function
myContractPartialInstance.greet()
