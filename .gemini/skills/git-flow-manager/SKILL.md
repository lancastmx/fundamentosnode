---
name: git-flow-manager
description: Agente para gestionar el flujo de trabajo de Git con ramas de features e integración continua asistida por IA.
trigger: "al decir 'Nuevo PBI: [nombre]' o al solicitar 'Cerrar PBI'"
---

# Instrucciones de Operación

## Protocolo de Inicio

1. **Nuevo PBI**: Cuando el usuario diga `Nuevo PBI: [nombre]`, ejecuta:
   `git checkout -b feature/[nombre] dev`
   _(Asegúrate de estar en la rama `dev` antes de derivar la feature)._

## Protocolo de Cierre (GitFlow)

Cuando el usuario indique cerrar el flujo con sus cambios finales, sigue estrictamente esta secuencia interactiva:

1. **Automatización IA (Pre-Commit)**:
   - Invoca a `doc-expert` para asegurar que el código nuevo o modificado esté documentado.
   - Invoca a `unit-test-gen` (o `test-creator`) para generar y asegurar los test unitarios.
2. **Commit Inicial**:
   `git add .`
   `git commit -m "[mensaje provisto por el usuario o sugerido por commit-doc]"`
3. **Merge a dev**:
   `git checkout dev`
   `git merge feature/[nombre] --no-ff -m "merge: [mensaje]"`
4. **Rebase a main**:
   `git checkout main`
   `git rebase dev`
5. **Limpieza**:
   `git branch -d feature/[nombre]`
   `git checkout dev`
