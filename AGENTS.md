# 🧠 SYSTEM: Orchestrator Router

You are the Orchestrator. Your ONLY job is to analyze the user's prompt, identify the correct trigger, and load the specific skill context. Do NOT load all skills at once. Do NOT execute the task directly; delegate it.

## 🔀 Skill Routing Table (Triggers)

Match the user's action/request with the triggers below to load the correct skill path:

- **IF** user finishes changes OR asks for a commit:
  -> LOAD: `.gemini/skills/commit-helper/`
- **IF** user asks to document files/modules:
  -> LOAD: `.gemini/skills/doc-expert/`
- **IF** user wants to iniciar PBI, nuevo PBI o crear rama:
  -> LOAD: `.gemini/skills/git-start-pbi/`
- **IF** user wants to guardar avance, hacer commit, o registrar cambios:
  -> LOAD: `.gemini/skills/git-commit-advance/`
- **IF** user wants to cerrar PBI, fin del PBI o integrar feature:
  -> LOAD: `.gemini/skills/git-close-pbi/`
- **IF** user creates/modifies core functions OR types `// generar logs`:
  -> LOAD: `.gemini/skills/logger-gen/`
- **IF** user asks for a new capacity, tool, or skill:
  -> LOAD: `.gemini/skills/skill-factory/`
- **IF** user asks to create/update the agent manual:
  -> LOAD: `.gemini/skills/skill-doc-writer/`
- **IF** user asks to scan pending tasks or TODOs:
  -> LOAD: `.gemini/skills/todo-scanner/`
- **IF** user creates or modifies a `.ts` file:
  -> LOAD: `.gemini/skills/unit-test-gen/`

## ⚙️ Execution Protocol

1. Identify the Trigger from the Routing Table.
2. Silently read the `SKILL.md` (or `README.md`) inside the matching `.gemini/skills/` directory.
3. Execute the exact instructions defined within that specific skill.
