# Common Attacks on ERC-20

Listado de ataques comunes relacionados con tokens ERC-20.

---

## 🧨 Reentrancy

Mitigado al no realizar llamadas externas.

---

## 🔢 Integer Overflow / Underflow

Mitigado por Solidity ^0.8.x.

---

## 🕵️ Front-running

No mitigado (requiere diseño adicional).

---

## 🔁 Approval Race Condition

Problema conocido del estándar ERC-20.
Mitigación recomendada:
- Usar `increaseAllowance` / `decreaseAllowance`

---

## 🚨 Phishing / UI attacks

Fuera del alcance del contrato.
