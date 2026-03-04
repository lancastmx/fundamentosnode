# Configuración de Agentes (AGENTS.md)

Este proyecto utiliza el ecosistema de IA para automatizar tareas del ciclo de desarrollo.

## Directorio de Skills

Las skills (instrucciones para agentes) activas se encuentran configuradas en: `.gemini/skills/`

## Skills Disponibles

- `commit-doc`: Documenta código usando JSDoc y genera mensajes de commit.
- `doc-expert`: Documenta funciones complejas y crea manuales técnicos externos en `docs/modules`.
- `test-creator`: Lee los archivos `.ts` y genera pruebas unitarias con `bun:test`.

---

_Este archivo es utilizado por el Gemini CLI para cargar las configuraciones de los sub-agentes en el entorno local._
