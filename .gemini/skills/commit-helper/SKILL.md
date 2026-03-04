---
name: commit-doc
description: Documenta código y genera mensajes de commit.
trigger: 'al finalizar cambios o a petición del usuario'
---

# Instrucciones

1. **Documentación**: Usa JSDoc para funciones en TypeScript. Mantén el README.md actualizado con nuevos scripts.
2. **Commits**: Analiza el diff de `git`. Usa el formato: `tipo: descripción corta` (ej. `feat: añade lógica de suma`).
3. **Validación**: Antes de sugerir el commit, verifica que `bun run lint` pase sin errores.
