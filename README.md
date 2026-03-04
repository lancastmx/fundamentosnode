# fundamentosnode

To install dependencies:

```bash
bun install
```

To run:

```bash
bun run index.ts
```

## Testing

Para ejecutar el suite de pruebas:

```bash
bun test
```

## Colaboración con IA

Este proyecto adopta el estándar `AGENTS.md` y cuenta con un ecosistema de agentes de Inteligencia Artificial configurados como "skills" para asistir en el desarrollo diario:

- **Generación de Tests** (`unit-test-gen`): Asegura que el código cuente con pruebas unitarias usando `bun:test`.
- **Documentación Técnica** (`doc-expert`): Mantiene la documentación del proyecto, como este README y los manuales de la carpeta `docs/`.
- **Commits** (`commit-helper`): Analiza los cambios y sugiere mensajes de commit convencionales.

### Instalación de Gemini CLI

Para poder utilizar estos agentes y colaborar con la IA dentro de tu flujo de trabajo, necesitas instalar el **Gemini CLI**:

```bash
npm install -g @google/gemini-cli
# o mediante bun:
bun add -g @google/gemini-cli
```

Una vez instalado, el CLI detectará automáticamente las _skills_ configuradas en el directorio `.gemini/skills/` y el archivo de instrucciones `AGENTS.md` del proyecto.

---

This project was created using `bun init` in bun v1.3.10. [Bun](https://bun.com) is a fast all-in-one JavaScript runtime.
