# ERC20 Manual Test Plan

This document describes a manual testing strategy for the ERC-20 contract.

These tests can be executed using Remix IDE and a testnet such as Sepolia.

---

## 🧪 Deployment Test

### Test
- Deploy the ERC20 contract with name and symbol

### Expected Result
- Contract deploys successfully
- `name()` returns correct value
- `symbol()` returns correct value
- `decimals()` returns 18

---

## 🧪 Minting Test

### Test
- Mint tokens to deployer address

### Expected Result
- `totalSupply()` increases
- `balanceOf(deployer)` reflects minted amount
- `Transfer` event emitted from `address(0)`

---

## 🧪 Transfer Test

### Test
- Transfer tokens to another address

### Expected Result
- Sender balance decreases
- Receiver balance increases
- `Transfer` event emitted

---

## 🧪 Approve & Allowance Test

### Test
- Approve a spender for a specific amount

### Expected Result
- `allowance(owner, spender)` matches approved amount
- `Approval` event emitted

---

## 🧪 transferFrom Test

### Test
- Spender transfers tokens using `transferFrom`

### Expected Result
- Allowance decreases
- Balances update correctly
- `Transfer` event emitted

---

## 🧪 Increase / Decrease Allowance Test

### Test
- Call `increaseAllowance`
- Call `decreaseAllowance`

### Expected Result
- Allowance adjusts correctly
- Reverts if decrease exceeds current allowance

---

## 🧪 Burn Test

### Test
- Burn tokens from an address

### Expected Result
- Balance decreases
- `totalSupply()` decreases
- `Transfer` event emitted to `address(0)`

---

## ❌ Failure Cases

- Transfer more than balance → revert
- transferFrom exceeding allowance → revert
- Transfer to zero address → revert
- Approve from zero address → revert

---

## 📌 Notes

This test plan is intentionally manual to maintain transparency and simplicity.

Automated testing frameworks (Hardhat / Foundry) can be integrated as a next step.
