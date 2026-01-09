# Threat Model

## 🎯 Objective

This document describes the threat model applied to the ERC-20 implementation in this repository.

The objective is to:
- Identify potential attackers
- Define assets to protect
- Analyze possible attack paths
- Document defensive decisions

---

## 🧱 Assets to Protect

The primary assets include:

- User token balances
- Allowances granted to third parties
- Total token supply integrity
- Correct emission of ERC-20 events

---

## 👤 Threat Actors

Potential attackers include:

- Malicious token holders
- Compromised wallets
- Untrusted third-party spenders
- Automated bots exploiting logic flaws

No privileged roles exist in this contract.

---

## 🛠️ Attack Vectors

Identified attack vectors:

- Overspending allowances
- Transferring without sufficient balance
- Burning more tokens than owned
- Attempting to exploit integer arithmetic
- Event manipulation attempts

---

## 🛡️ Defensive Measures

Defenses implemented:

- Strict balance checks before transfers and burns
- Allowance checks before `transferFrom`
- Solidity 0.8+ overflow protections
- Explicit `require` validations
- Separation of internal and public logic

---

## ⚠️ Out of Scope

The following are intentionally out of scope:

- Governance attacks
- Front-running mitigation
- MEV protection
- Cross-contract interactions
- Upgrade proxy risks

---

## 📌 Conclusion

This threat model reflects a **minimal, controlled, and auditable ERC-20 design**, prioritizing correctness and clarity over feature complexity.
