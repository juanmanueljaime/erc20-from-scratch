# 🪙 ERC-20 Token – Implementación Educativa y Segura

Este repositorio contiene una **implementación completa de un contrato ERC-20 en Solidity**, desarrollada con fines **educativos, prácticos y profesionales**, siguiendo buenas prácticas de diseño, legibilidad y seguridad.

El objetivo del proyecto es demostrar comprensión real del estándar ERC-20, su lógica interna y los riesgos comunes asociados a contratos mal implementados.

---

## 📌 Características principales

- Implementación completa del estándar ERC-20
- Manejo correcto de balances y allowances
- Uso explícito de `unchecked` para optimización de gas
- Separación clara entre funciones públicas e internas
- Eventos `Transfer` y `Approval` correctamente emitidos
- Código compatible con Solidity `^0.8.20`
- Preparado para despliegue en testnets (Sepolia)

---

## 📂 Estructura del contrato

El contrato implementa:

- `totalSupply`
- `balanceOf`
- `transfer`
- `approve`
- `allowance`
- `transferFrom`

Funciones internas:
- `_transfer`
- `_mint`
- `_burn`
- `_approve`
- `_spendAllowance`

Hooks:
- `_beforeTokenTransfer`
- `_afterTokenTransfer`

---

## 🛡️ Seguridad aplicada

- Prevención de transferencias desde y hacia `address(0)`
- Validación estricta de balances antes de transferir o quemar tokens
- Control correcto de allowances
- Uso de `type(uint256).max` para approvals infinitos
- Aprovechamiento de overflow checks nativos de Solidity 0.8+

---

## 🚀 Deploy en Sepolia (resumen)

1. Abrir **Remix IDE**
2. Crear archivo `ERC20.sol`
3. Compilar con versión `0.8.20`
4. Conectar MetaMask
5. Seleccionar red **Sepolia**
6. Deploy con `initialSupply`
7. Confirmar transacción

---

## 🧪 Testing recomendado

- Transferencias válidas
- Transferencias con balance insuficiente
- `approve` + `transferFrom`
- `burn` con balance insuficiente
- Allowance infinita (`uint256.max`)

---

## 📖 Objetivo del proyecto

Este proyecto fue creado como parte de un proceso de aprendizaje serio en:

- Blockchain
- Solidity
- Seguridad en Smart Contracts
- Análisis de errores comunes en contratos ERC-20

No es un contrato destinado a producción sin auditoría externa.

---

## 👤 Autor

**Juan Manuel Jaime**  
Estudiante de ciberseguridad  
Interés principal: Blockchain Security, Smart Contracts y análisis ofensivo/defensivo

---

## ⚠️ Disclaimer

Este contrato es **educativo**.  
No debe utilizarse en producción sin auditoría profesional.

---

## 📜 Licencia

MIT License
