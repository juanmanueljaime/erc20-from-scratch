# Known ERC-20 Attacks and Considerations

This document lists known ERC-20 related attacks and explains how this implementation addresses or acknowledges them.

---

## 🧨 Integer Overflow / Underflow

### Description
Older Solidity versions allowed integer overflow and underflow.

### Mitigation
- Solidity ^0.8.20 is used
- Built-in overflow checks are enabled
- `unchecked` blocks are applied only after safety checks

---

## 🧨 Allowance Double-Spend (Race Condition)

### Description
A known ERC-20 issue where changing allowance directly can allow double spending.

### Mitigation
- `increaseAllowance` and `decreaseAllowance` functions are provided
- Direct overwrite risks are documented and acknowledged
- Matches ERC-20 standard behavior

---

## 🧨 Transfer to Zero Address

### Description
Sending tokens to `address(0)` may result in permanent loss.

### Mitigation
- Explicit checks prevent transfers to or from the zero address
- Burns must be executed via `_burn`

---

## 🧨 Overspending Allowance

### Description
Spenders attempting to transfer more than approved.

### Mitigation
- `_spendAllowance` enforces strict allowance checks
- Transactions revert on insufficient allowance

---

## 🧨 Event Mismatch Attacks

### Description
Incorrect or missing events can mislead off-chain systems.

### Mitigation
- `Transfer` and `Approval` events are emitted exactly as per ERC-20 spec
- Events are emitted after state changes

---

## ⚠️ Accepted Risks

The following risks are acknowledged but not mitigated:

- Front-running on `approve`
- MEV-based ordering manipulation
- Off-chain indexer assumptions

These are outside the scope of a minimal ERC-20 implementation.

---

## 📌 Conclusion

This ERC-20 implementation follows **industry-accepted patterns**, documents known risks, and avoids undocumented behavior.
