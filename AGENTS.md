# Contexto: fundamentosNode

- **Stack**: Runtime de Bun, TypeScript, ESLint, Prettier.
- **Flujo de Trabajo**: Usar `bun test` para pruebas y `husky` para pre-commits.
- **Agentes**:
  - `commit-agent`: Se activa al terminar una tarea para redactar el mensaje.
  - `doc-agent`: Se activa para explicar funciones complejas en el README o JSDoc.
  - `test-agent`: Se activa al modificar `index.ts` para crear su `.test.ts`.
  - **Documentación**: Para cualquier nueva función o cambio de lógica, invoca a 'doc-expert' para actualizar JSDoc y el README.
