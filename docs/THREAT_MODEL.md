# Threat Model — ERC20 From Scratch

## 🎯 Scope

This threat model covers the following smart contracts:

- `ERC20.sol` — Base ERC-20 implementation
- `MyToken.sol` — Concrete token implementation inheriting from ERC20

The analysis focuses on logical, economic, and access-control threats relevant to standard ERC-20 tokens.

---

## 🧱 Assets

| Asset | Description |
|-----|------------|
| Token balances | Users' ERC-20 balances |
| Total supply | Fixed supply minted at deployment |
| Allowances | Delegated spending permissions |
| Event logs | Transfer and Approval events |

---

## 👥 Actors

| Actor | Description |
|-----|------------|
| Token holder | Regular user holding tokens |
| Spender | Approved third-party spender |
| Attacker | Malicious external actor |
| Deployer | Contract deployer (no special privileges after deploy) |

---

## 🔐 Trust Assumptions

- The deployer has **no privileged permissions** after deployment
- There is **no owner, admin, or upgrade mechanism**
- No external contracts are trusted
- No off-chain dependencies exist

---

## ⚠️ Threats Considered

### 1. Unauthorized Minting
**Risk:** Creation of tokens after deployment  
**Mitigation:**  
- `_mint` is internal  
- Only executed once in `MyToken` constructor  

✅ Mitigated

---

### 2. Balance Manipulation
**Risk:** Incorrect balance updates during transfers  
**Mitigation:**  
- Strict balance checks  
- Safe arithmetic enforced by Solidity ^0.8  
- Explicit use of `unchecked` only after validation  

✅ Mitigated

---

### 3. Allowance Abuse
**Risk:** Overspending approved allowances  
**Mitigation:**  
- `_spendAllowance` enforces limits  
- Supports infinite allowance pattern safely  

✅ Mitigated

---

### 4. Zero Address Exploits
**Risk:** Transfers or approvals involving `address(0)`  
**Mitigation:**  
- Explicit zero-address checks in `_transfer`, `_mint`, `_burn`, `_approve`  

✅ Mitigated

---

### 5. Privileged Role Abuse
**Risk:** Centralized control over token behavior  
**Mitigation:**  
- No owner or admin roles exist  
- No privileged functions exposed  

✅ Mitigated by design

---

## ⚖️ Accepted Risks

| Risk | Reason |
|----|-------|
| Fixed supply | Intended token design |
| No pausing mechanism | Simplicity and educational focus |
| No upgradeability | Reduces attack surface |

---

## 🧠 Design Philosophy

This project prioritizes:

- Minimal attack surface
- Explicit logic over abstraction
- Audit-friendly structure
- Educational clarity

The threat model reflects real-world ERC-20 risks and documents explicit design decisions.

---

## ⚠️ Disclaimer

This threat model is educational.  
It does not replace a professional audit.

