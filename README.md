# Incorrect Ownership Transfer Check in Ownable Contract

This repository demonstrates a common bug found in Ownable contracts: an incomplete check during ownership transfer. The bug allows for unexpected behavior if the new owner is the same as the current owner, which isn't explicitly handled.

## Bug Description

The `transferOwnership` function lacks a check to prevent assigning ownership to the current owner. This might seem harmless, but it can lead to subtle issues in more complex DApps and can be exploited by malicious actors under specific circumstances. 

## Solution

The provided solution adds a check to verify that the new owner is different from the current owner. This ensures that the `transferOwnership` function only executes if a change in ownership is actually occurring.