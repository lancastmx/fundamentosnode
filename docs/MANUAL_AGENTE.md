# Manual de Agentes (MANUAL_AGENTE.md) 🤖

A continuación se detalla el catálogo completo de las habilidades (Skills) de Inteligencia Artificial que tienes a tu disposición en este proyecto.

---

### 1. `commit-helper` (o `commit-doc`)

**¿Qué hace?**: Documenta código en TypeScript usando JSDoc y genera automáticamente sugerencias de mensajes de commit formales y profesionales.
**¿Cómo lo uso?**: "al finalizar cambios o a petición del usuario"
**Resultado**: Modifica el archivo actual añadiendo comentarios `JSDoc` a las funciones, actualiza el `README.md` y analiza `git diff` para darte un mensaje de commit listo para usarse.

---

### 2. `doc-expert`

**¿Qué hace?**: Actúa como un Technical Writer dedicado a documentar a profundidad tu lógica de negocio.
**¿Cómo lo uso?**: "cuando el usuario pida documentar archivos o módulos"
**Resultado**: Crea o modifica archivos `.md` dentro de la carpeta `docs/modules/` para generar manuales detallados externos con el análisis de cada función.

---

### 3. `git-start-pbi`

**¿Qué hace?**: Inicializa una nueva rama de feature para un PBI de manera rápida y segura.
**¿Cómo lo uso?**: "iniciar PBI", "nuevo PBI" o "crear rama"
**Resultado**: Verifica que estés en la rama `dev`, crea una nueva rama con patrón `feature/[nombre]` y te posiciona en ella.

---

### 4. `git-commit-advance`

**¿Qué hace?**: Analiza cambios en el código y crea commits automáticos con mensajes descriptivos, sin bloquear tu flujo de trabajo.
**¿Cómo lo uso?**: "guardar avance", "hacer commit" o "registrar cambios"
**Resultado**: Ejecuta `git add .`, redacta un mensaje de commit resumiendo los cambios y realiza el commit. Si fallan validaciones pre-commit en archivos `.md` o config, las saltará; si es en TypeScript, te notificará del error.

---

### 5. `git-close-pbi`

**¿Qué hace?**: Integra una rama feature al flujo principal preservando historial y sin borrar la rama origen.
**¿Cómo lo uso?**: "cerrar PBI", "fin del PBI" o "integrar feature"
**Resultado**: Invoca primero `git-commit-advance` para guardar pendientes, luego ejecuta merge a dev con `--no-ff`, push a dev, rebase de main con dev, y push a main. La rama feature permanece intacta.

---

### 6. `logger-gen`

**¿Qué hace?**: Inserta logs de seguimiento y depuración (tracing) en el código.
**¿Cómo lo uso?**: "al crear o modificar funciones importantes, o cuando el usuario ponga '// generar logs' sobre una función"
**Resultado**: Modifica tus archivos de código fuente agregando utilidades (ej. `console.log`) al inicio y final de las funciones para revisar parámetros y ciclos de vida sin saturar la lógica.

---

### 7. `skill-factory`

**¿Qué hace?**: Es el creador de otros agentes. Fabrica y vincula rápidamente la estructura ideal para construir nuevas habilidades como esta.
**¿Cómo lo uso?**: "cuando el usuario pida una nueva capacidad o herramienta"
**Resultado**: Crea directorios dentro de `.gemini/skills/`, genera el archivo `SKILL.md` con metadata correcta y vincula la nueva herramienta corriendo el autodescubrimiento local en `AGENTS.md`.

---

### 8. `skill-doc-writer`

**¿Qué hace?**: Yo redacto este manual para humanos leyendo la configuración actual del sistema de IA.
**¿Cómo lo uso?**: "al solicitar crear o actualizar el manual de agentes"
**Resultado**: Crea o sobrescribe este mismo archivo `docs/MANUAL_AGENTE.md` escaneando todas las skills detectadas, extrayendo instrucciones y resumiendo su utilidad.

---

### 9. `unit-test-gen` (o `test-creator`)

**¿Qué hace?**: Especialista de QA (Quality Assurance) para el código nativo en entorno Bun.
**¿Cómo lo uso?**: "cada vez que se modifique o cree un archivo .ts"
**Resultado**: Crea o actualiza archivos de validación (ej. `index.test.ts`), importando el entorno `bun:test`, redactando comprobaciones y ejecutando iterativamente en terminal hasta tener éxito.
