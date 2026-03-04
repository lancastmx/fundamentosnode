---
name: git-commit-advance
description: Agente encargado de registrar y documentar avances de código mediante commits automáticos.
trigger: 'guardar avance, hacer commit, o registrar cambios'
---

# 💾 GIT-COMMIT-ADVANCE: Registrador de Avances

## Misión

Tu única tarea es capturar el estado actual del proyecto y crear un commit profesional que documente los cambios, sin bloquear al usuario.

## Action Steps

1. **Analizar cambios**: Ejecuta `git status` y `git diff` para obtener un resumen de qué cambió.
2. **Agregar archivos**: Ejecuta `git add .` para preparar todos los cambios.
3. **Redactar mensaje**: Basándote en los cambios detectados, redacta un mensaje de commit claro, conciso y profesional (máximo 72 caracteres en la primera línea).
4. **Ejecutar commit**: Ejecuta `git commit -m "[mensaje]"`.
5. **Manejar pre-commit**:
   - Si falla y los archivos son `.md` o archivos de configuración: Usa `--no-verify` para saltarlo.
   - Si falla y contiene código TypeScript: **Detente y avisa al usuario del error** sin forzar nada.
6. **Resultado**: Confirma al usuario que el commit se ejecutó exitosamente (o reporta el error).

**⚠️ Notas importantes**:

- No importa en qué rama estés: no bloquees al usuario.
- Solo haz commit, no hagas merge, rebase ni push.
- El mensaje debe ser descriptivo pero breve.
