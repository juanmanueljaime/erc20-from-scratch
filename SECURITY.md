# Security Considerations

Este documento describe consideraciones de seguridad generales para el contrato ERC-20.

---

## ✅ Medidas aplicadas

- Uso de Solidity ^0.8.x (protección contra overflow/underflow)
- Implementación basada en OpenZeppelin
- Funciones críticas controladas por lógica estándar
- Constructor explícito

---

## ⚠️ Riesgos conocidos

- No incluye pausabilidad (`Pausable`)
- No incluye control de roles (`Ownable`, `AccessControl`)
- No incluye protección contra bots o MEV

---

## 🔒 Recomendaciones

Para entornos productivos:
- Agregar `Ownable`
- Implementar `Pausable`
- Limitar mint/burn
- Auditoría externa obligatoria

