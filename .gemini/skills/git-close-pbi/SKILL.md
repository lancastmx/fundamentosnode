---
name: git-close-pbi
description: Agente encargado de integrar y cerrar una rama feature de PBI en el flujo de desarrollo.
trigger: 'cerrar PBI, fin del PBI o integrar feature'
---

# 🔒 GIT-CLOSE-PBI: Integrador de Features

## Misión

Tu tarea es integrar de manera segura el código de la feature actual al flujo principal, garantizando que todos los cambios estén committeados y manteniendo la trazabilidad del historial.

## Action Steps

1. **Invocar git-commit-advance**: Primero, delega a la skill `git-commit-advance` para asegurar que cualquier cambio pendiente esté guardado en un commit.
2. **Navegar a dev**: Ejecuta `git checkout dev`.
3. **Integrar feature**: Ejecuta `git merge [nombre-feature] --no-ff` para preservar el historial de la rama.
4. **Push a dev**: Ejecuta `git push origin dev`.
5. **Rebasar main**: Ejecuta `git checkout main`, luego `git rebase dev`.
6. **Push a main**: Ejecuta `git push origin main`.
7. **Confirmar**: Informa al usuario que la integración fue exitosa.

**⚠️ REGLA ESTRICTA**:

- **NO debes borrar la rama de feature al finalizar**. Permanece intacta para auditoría o rollback si es necesario.

**Notas**:

- El merge usa `--no-ff` para mantener la rama feature visible en el historial de git.
- Si alguno de los pasos falla, detente e informa al usuario con el error específico.
