---
name: skill-factory
description: Agente encargado de fabricar, configurar y vincular nuevas Skills.
trigger: 'cuando el usuario pida una nueva capacidad o herramienta'
---

# Instrucciones de Fabricación

1. **Definición**: Crea la carpeta en `.gemini/skills/[nombre-skill]`.
2. **Escritura**: Genera el archivo `SKILL.md` con:
   - Metadata (name, description, trigger).
   - Instrucciones claras de "Action Steps".
3. **Vinculación**:
   - Añade la nueva Skill a la lista de `AGENTS.md`.
   - Ejecuta `./setup-agents.sh` para asegurar que el entorno la reconozca.
4. **Validación**: Verifica que el CLI de Gemini vea la nueva skill con `!gemini list-skills`.
