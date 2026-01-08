# ERC20 From Scratch — Implementación Orientada a Seguridad

# ERC-20 From Scratch (Solidity)

Implementación completa del estándar **ERC-20**, escrita **desde cero en Solidity**, con foco en **seguridad**, **buenas prácticas profesionales** y **preparación para entornos laborales reales** (freelance / auditoría junior).

Este proyecto **NO es un fork de OpenZeppelin**.  
Es una implementación manual y documentada para demostrar **comprensión real del estándar ERC-20** y sus riesgos.

---

## 📜 Descripción (Español)

Este repositorio contiene un contrato ERC-20 desarrollado íntegramente desde cero, siguiendo el estándar oficial de Ethereum.

El objetivo principal es **demostrar conocimiento técnico real**, comprendiendo:
- cómo funcionan los balances
- cómo se gestionan las allowances
- cómo se emiten eventos correctamente
- qué riesgos existen en contratos ERC-20
- cómo se documenta un proyecto blockchain de forma profesional

El código y la documentación están pensados para:
- aprendizaje avanzado
- revisión técnica
- portfolio profesional
- base para auditorías junior
- trabajo freelance

---

## ✨ Características Principales

- Implementación completa del estándar ERC-20
- Manejo correcto de balances y allowances
- Emisión correcta de eventos `Transfer` y `Approval`
- Uso explícito de `unchecked` para optimización de gas
- Separación clara entre lógica pública e interna
- Compatible con Solidity ^0.8.20
- Listo para deploy en testnet (Sepolia)

---

## 🛡️ Seguridad

La documentación de seguridad se encuentra separada del código y analiza:

- Superficie de ataque
- Riesgos mitigados
- Riesgos aceptados
- Modelo de amenazas
- Ataques ERC-20 conocidos
- Buenas prácticas defensivas

Este enfoque replica la documentación utilizada en **proyectos profesionales**, **auditorías reales** y **entornos empresariales**.

---

## 🚀 Deploy (Resumen)

1. Abrir Remix IDE
2. Compilar con Solidity `0.8.20`
3. Conectar MetaMask
4. Seleccionar red **Sepolia**
5. Deploy del contrato
6. Confirmar la transacción

---

## 🧪 Testing

El proyecto incluye documentación de pruebas manuales iniciales, enfocadas en:

- comportamiento esperado
- validaciones lógicas
- escenarios normales y de error

Preparado para futura migración a frameworks como **Hardhat** o **Foundry**.

---

## ⚠️ Disclaimer

Este contrato es **únicamente educativo**.  
**NO debe utilizarse en producción** sin una **auditoría profesional**.

El autor no se responsabiliza por pérdidas de fondos.

---

## 👤 Autor

**Juan Manuel Jaime**  
Estudiante de Ciberseguridad  

**Intereses:**
- Blockchain Security
- Smart Contracts
- Análisis ofensivo y defensivo
- Auditoría de contratos inteligentes

---

---

## 🇬🇧 Description (English)

This repository contains a **from-scratch ERC-20 token implementation written in Solidity**, designed for **educational**, **technical**, and **professional portfolio** purposes.

This is **NOT a fork of OpenZeppelin**.  
It is a manual implementation to demonstrate **real understanding of the ERC-20 standard**, its internal mechanics, and security considerations.

---

## 📌 Key Features

- Full ERC-20 standard implementation
- Proper balance and allowance handling
- Correct `Transfer` and `Approval` event emission
- Explicit use of `unchecked` for gas optimization
- Clean separation between public and internal logic
- Solidity ^0.8.20 compatible
- Ready for testnet deployment (Sepolia)

---

## 🛡️ Security Approach

Security documentation includes:

- Attack surface analysis
- Threat modeling
- Known ERC-20 vulnerabilities
- Defensive best practices

This structure mirrors **real-world blockchain security projects**.

---

## ⚠️ Disclaimer

This contract is for **educational purposes only**.  
Do **NOT** use in production without a **professional security audit**.

---

## 📜 License

MIT License

---
