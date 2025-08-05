#!/bin/bash

# ==========================================
# configuracionVisualStudioCode.sh
# Script para restaurar toda la configuración de VS Code
# ==========================================

# Definir rutas
BACKUP_DIR="./vscode-backup"
USER_CONFIG_DIR="$HOME/AppData/Roaming/Code/User"

echo "🔁 Iniciando restauración de configuración de VS Code..."

# 1. Restaurar configuraciones del usuario
echo "🛠️  Restaurando configuración del usuario (settings, keybindings, snippets, tasks, etc)..."
cp -r "$BACKUP_DIR/User/"* "$USER_CONFIG_DIR/"

# 2. Restaurar extensiones
if [ -f "$BACKUP_DIR/extensions.txt" ]; then
  echo "📦 Instalando extensiones desde extensions.txt..."
  cat "$BACKUP_DIR/extensions.txt" | xargs -n 1 code --install-extension
else
  echo "⚠️  No se encontró el archivo extensions.txt, se omite la instalación de extensiones."
fi

echo "✅ Restauración completada exitosamente."
