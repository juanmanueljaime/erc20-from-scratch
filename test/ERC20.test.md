# Manual Tests – ERC20

Pruebas manuales iniciales para validar el contrato.

---

## ✅ Test 1 – Total Supply

- Desplegar contrato
- Verificar `totalSupply`
- Debe coincidir con el valor inicial

---

## ✅ Test 2 – Balance inicial

- Verificar balance del deployer
- Debe contener el 100% del supply

---

## ✅ Test 3 – Transferencia

- Transferir tokens a otra cuenta
- Verificar balances antes y después

---

## ✅ Test 4 – Allowance

- Aprobar tokens
- Usar `transferFrom`
- Verificar allowance restante

---

## 🧪 Próximo paso

Automatizar tests con:
- Hardhat
- Foundry
