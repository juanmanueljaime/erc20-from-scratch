# Security Policy

## 🎯 Scope

This document describes the security considerations applied to the ERC-20 smart contract implemented in this repository.

The goal is to identify:
- Potential risks
- Attack vectors
- Mitigated threats
- Accepted risks

This contract is designed for **educational and professional demonstration purposes**, not production use without audit.

---

## 🔍 Threat Surface

The main attack surface includes:

- `transfer`
- `transferFrom`
- `approve`
- Allowance handling
- Minting and burning logic
- Interaction with external accounts

No external contracts are called, which significantly reduces reentrancy risk.

---

## 🛡️ Mitigated Risks

The following risks are actively mitigated:

- Transfers to and from `address(0)`
- Transfers exceeding sender balance
- Allowance underflow
- Infinite allowance mishandling
- Integer overflow / underflow (Solidity ^0.8.x)

---

## ⚠️ Accepted Risks

The following risks are acknowledged but accepted due to project scope:

- No pausable mechanism
- No role-based access control
- No upgradeability
- No on-chain governance

These features are intentionally excluded to maintain clarity and simplicity.

---

## 🧪 Testing Responsibility

This project relies on:
- Manual testing
- Logical verification
- Standard ERC-20 behavior expectations

Formal audits and automated testing frameworks are recommended before any production usage.

---

## 📌 Disclosure

If you discover a security issue, treat this repository as **educational material**, not a production system.

No bug bounty program is active.
