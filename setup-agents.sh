#!/bin/bash

# Directorio de skills locales
SKILLS_DIR=".gemini/skills"
# Directorio de skills compartidas (puedes ajustar esta ruta según tus necesidades)
SHARED_SKILLS_DIR="../shared-skills" 
AGENTS_FILE="AGENTS.md"

echo "Configurando entorno de agentes IA..."

# 1. Verificar y crear la carpeta .gemini/skills si no existe
if [ ! -d "$SKILLS_DIR" ]; then
    echo "Creando directorio $SKILLS_DIR..."
    mkdir -p "$SKILLS_DIR"
else
    echo "El directorio $SKILLS_DIR ya existe."
fi

# 2. Copiar habilidades desde la carpeta compartida
if [ -d "$SHARED_SKILLS_DIR" ]; then
    echo "Copiando skills desde $SHARED_SKILLS_DIR..."
    cp -r "$SHARED_SKILLS_DIR"/* "$SKILLS_DIR"/
    echo "Skills copiadas exitosamente."
else
    echo "Advertencia: No se encontró la carpeta compartida en '$SHARED_SKILLS_DIR'."
    echo "Asegúrate de ajustar la variable SHARED_SKILLS_DIR dentro de este script si tienes una ruta distinta."
fi

# 3. Configurar AGENTS.md
echo "Configurando $AGENTS_FILE..."
cat << 'EOF' > "$AGENTS_FILE"
# Configuración de Agentes (AGENTS.md)

Este proyecto utiliza el ecosistema de IA para automatizar tareas del ciclo de desarrollo.

## Directorio de Skills
Las skills (instrucciones para agentes) activas se encuentran configuradas en: `.gemini/skills/`

## Skills Disponibles
- `commit-doc`: Documenta código usando JSDoc y genera mensajes de commit.
- `doc-expert`: Documenta funciones complejas y crea manuales técnicos externos en `docs/modules`.
- `test-creator`: Lee los archivos `.ts` y genera pruebas unitarias con `bun:test`.

---
*Este archivo es utilizado por el Gemini CLI para cargar las configuraciones de los sub-agentes en el entorno local.*
EOF

echo "¡Configuración completada con éxito!"
