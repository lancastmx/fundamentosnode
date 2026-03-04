#!/bin/bash
# Directorio donde Gemini CLI buscará las skills
LOCAL_SKILLS_DIR=".gemini/skills"
AGENTS_FILE="AGENTS.md"
MANUAL_FILE="docs/MANUAL_AGENTE.md"

echo "🚀 Iniciando configuración de entorno tipo 'Tony Stark'..."

# 1. Limpiar enlaces rotos previos si existen
find "$LOCAL_SKILLS_DIR" -type l -delete 2>/dev/null

# 2. Crear la estructura base
mkdir -p "$LOCAL_SKILLS_DIR"

# 3. Lógica de Vinculación (Symlinks Relativos)
GLOBAL_SOURCE="../../mis-skills-maestras" 

if [ -d "$GLOBAL_SOURCE" ]; then
    echo "🔗 Vinculando skills desde carpeta maestra..."
    for skill in "$GLOBAL_SOURCE"/*; do
        if [ -d "$skill" ]; then
            skill_name=$(basename "$skill")
            ln -sf "../../$GLOBAL_SOURCE/$skill_name" "$LOCAL_SKILLS_DIR/$skill_name"
        fi
    done
else
    echo "⚠️ No se encontró carpeta maestra. Usando modo 'Portátil'."
fi

# 4. Regenerar AGENTS.md con GOBERNANZA (Aquí ocurre la magia)
echo "# AGENTS.md (Auto-generado)" > "$AGENTS_FILE"
echo "" >> "$AGENTS_FILE"

echo "## 📜 Manual Operativo (Contexto Global)" >> "$AGENTS_FILE"
if [ -f "$MANUAL_FILE" ]; then
    echo "- \`instrucciones_maestras\`: $MANUAL_FILE" >> "$AGENTS_FILE"
    echo "> Nota: El agente debe consultar este manual para entender flujos de Git, TDD y estándares de documentación." >> "$AGENTS_FILE"
else
    echo "⚠️ ADVERTENCIA: No se encontró $MANUAL_FILE. El agente trabajará sin reglas globales." >> "$AGENTS_FILE"
fi

echo "" >> "$AGENTS_FILE"
echo "## 🛠️ Skills Activas" >> "$AGENTS_FILE"

for dir in "$LOCAL_SKILLS_DIR"/*; do
    if [ -d "$dir" ] || [ -L "$dir" ]; then
        skill_name=$(basename "$dir")
        echo "- \`$skill_name\`: $LOCAL_SKILLS_DIR/$skill_name/" >> "$AGENTS_FILE"
    fi
done

echo "" >> "$AGENTS_FILE"
echo "✅ Entorno listo. AGENTS.md ahora incluye el manual de gobernanza."