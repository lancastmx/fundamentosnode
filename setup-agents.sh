#!/bin/bash
# Directorio donde Gemini CLI buscará las skills
LOCAL_SKILLS_DIR=".gemini/skills"
AGENTS_FILE="AGENTS.md"

echo "🚀 Iniciando configuración de entorno colaborativo..."

# 1. Limpiar enlaces rotos previos si existen
find "$LOCAL_SKILLS_DIR" -type l -delete 2>/dev/null

# 2. Crear la estructura base
mkdir -p "$LOCAL_SKILLS_DIR"

# 3. Lógica de Vinculación (Symlinks Relativos)
# Aquí definimos una ruta que sea común o que el usuario pueda configurar
GLOBAL_SOURCE="../../mis-skills-maestras" 

if [ -d "$GLOBAL_SOURCE" ]; then
    echo "🔗 Vinculando skills desde carpeta maestra..."
    for skill in "$GLOBAL_SOURCE"/*; do
        if [ -d "$skill" ]; then
            skill_name=$(basename "$skill")
            # Creamos el link simbólico relativo.
            # Local está en .gemini/skills (2 niveles de profundidad desde la raíz).
            # Subimos 2 niveles (../../) y concatenamos la ruta del GLOBAL_SOURCE.
            ln -sf "../../$GLOBAL_SOURCE/$skill_name" "$LOCAL_SKILLS_DIR/$skill_name"
        fi
    done
else
    echo "⚠️ No se encontró carpeta maestra. Usando modo 'Portátil' (Skills locales mantenidas)."
fi

# 4. Regenerar AGENTS.md dinámicamente
echo "# AGENTS.md (Auto-generado)" > "$AGENTS_FILE"
echo "## Skills Activas" >> "$AGENTS_FILE"
for dir in "$LOCAL_SKILLS_DIR"/*; do
    if [ -d "$dir" ] || [ -L "$dir" ]; then
        skill_name=$(basename "$dir")
        echo "- \`$skill_name\`: $LOCAL_SKILLS_DIR/$skill_name/" >> "$AGENTS_FILE"
    fi
done

echo "✅ Entorno listo para trabajar."