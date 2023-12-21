# SmartVaults SDK – Swift Package

## Installation

This package is intended to be used with the [Swift Package Manager](https://www.swift.org/package-manager/).

### Xcode

Via `File > Add Packages...`, add

```
https://github.com/smartvaults/smartvaults-sdk-swift.git
```

as a package dependency in Xcode.

### Swift Package

Add the following to the dependencies array in your `Package.swift`:

``` swift
.package(url: "https://github.com/smartvaults/smartvaults-sdk-swift.git", from: "0.4.0"),
```

## 📄 Usage

``` swift
import SmartVaultsSDK

// Generate a new keychain
let client = try SmartVaults.generate(basePath: "/path/to/internal/storage", name: "keychain-name", password: "keychain-password", wordCount: WordCount.w24, passphrase: nil, network: Network.testnet);

// Restore a keychain
let client = try SmartVaults.restore(basePath: "/path/to/internal/storage", name: "keychain-name", password: "keychain-password", mnemonic: "...", passphrase: nil, network: Network.testnet);

// Open a keychain
let client = try SmartVaults.open(basePath: "/path/to/internal/storage", name: "keychain-name", password: "keychain-password", network: Network.testnet);

// Get policies and proposals
let policies = try client.getPolicies();
let proposals = try client.getProposals();

// Create a new proposal
let amount = Amount.custom(1234);
// OR
let amount = Amount.max();
let proposalId = try client.spend(policyId: "...", toAddress: "address", amount: amount, description: "Back to faucet", targetBlocks: 3);

// Approve a proposal
try client.approve(proposalId: proposalId);

// Finalize a proposal
try client.finalize(proposalId: proposalId);

// Shutdown the client (for logout)
try client.shutdown();

```

## Information for Maintainers and Contributors

This repository is used to publish a Swift package providing Swift bindings to the Coinstr SDK's [underlying Rust implementation](https://github.com/coinstr/coinstr). The Swift bindings are generated using [UniFFi](https://github.com/mozilla/uniffi-rs).

Any changes to the Coinstr SDK, the Swift bindings, and the configuration of this Swift package must be made via the [coinstr-sdk](https://github.com/coinstr/coinstr) repo.

To release a new version of this package, go to the Actions tab of this GitHub repository. Then select the *Publish Swift Package* workflow and run it on the `master` branch. It will ask for a version as input. This allows you to specify the version (e.g., *0.0.1*) of the [coinstr-sdk](https://github.com/coinstr/coinstr) repository that should be released as a Swift package.
