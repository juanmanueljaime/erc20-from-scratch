# Known ERC-20 Attacks — Analysis

This document lists common ERC-20 attack vectors and evaluates their applicability to this implementation.

---

## 🔓 Reentrancy Attacks

**Description:**  
Reentrancy occurs when external calls allow recursive execution before state updates.

**Status:**  
❌ Not applicable

**Reason:**  
- No external calls
- No Ether transfers
- All state changes occur before events

---

## 🔁 Integer Overflow / Underflow

**Description:**  
Arithmetic errors causing balance manipulation.

**Status:**  
❌ Not applicable

**Reason:**  
- Solidity ^0.8 includes built-in overflow checks
- `unchecked` blocks are used only after validation

---

## 🧮 Allowance Double-Spend (Race Condition)

**Description:**  
Classic ERC-20 approve race condition.

**Status:**  
⚠️ Known ERC-20 limitation

**Mitigation:**  
- `increaseAllowance` / `decreaseAllowance` functions provided
- Behavior documented and explicit

---

## 🧾 Fake Transfer Events

**Description:**  
Emitting misleading events without state changes.

**Status:**  
❌ Not applicable

**Reason:**  
- Events are emitted only after successful state updates

---

## 🔥 Unauthorized Mint / Burn

**Description:**  
Attackers mint or burn tokens without permission.

**Status:**  
❌ Not applicable

**Reason:**  
- `_mint` and `_burn` are internal
- No public or external mint/burn functions

---

## 👑 Centralization / Admin Abuse

**Description:**  
Owner or admin manipulates token behavior.

**Status:**  
❌ Not applicable

**Reason:**  
- No owner
- No admin
- No privileged roles
- No upgrade mechanism

---

## 🧠 Logical Errors in Transfer Flow

**Description:**  
Incorrect ordering of balance updates.

**Status:**  
❌ Not applicable

**Reason:**  
- Balance checks before mutation
- State updated before event emission

---

## 🔒 Attacks Explicitly Out of Scope

The following attack classes are intentionally excluded:

- Upgradeability attacks
- Proxy misconfiguration
- Governance attacks
- Oracle manipulation
- Flash loan attacks (no external integrations)

---

## 📌 Conclusion

This implementation minimizes its attack surface by:

- Avoiding external calls
- Avoiding privileged roles
- Using explicit, readable logic
- Following well-understood ERC-20 patterns

---

## ⚠️ Disclaimer

This document is educational and does not replace a professional security audit.
