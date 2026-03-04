---
name: git-start-pbi
description: Agente encargado de iniciar una nueva rama PBI en el flujo de desarrollo.
trigger: 'iniciar PBI, nuevo PBI o crear rama'
---

# 🚀 GIT-START-PBI: Inicializador de Ramas PBI

## Misión

Tu única tarea es recibir el nombre de un PBI y crear una rama de feature correctamente, asegurándote de estar en la rama dev.

## Action Steps

1. **Recibir nombre**: Solicita al usuario el nombre del PBI.
2. **Verificar rama dev**: Ejecuta `git branch` para confirmar que estás en la rama `dev`. Si no, ejecuta `git checkout dev`.
3. **Crear rama feature**: Ejecuta `git checkout -b feature/[nombre]`.
4. **Confirmar**: Informa al usuario que la rama fue creada exitosamente.

**⚠️ Limitación**: Esta skill solo hace lo anterior. No modifica archivos, no hace commits, no hace nada más.
