#!/bin/bash

# ==========================================
# backupConfVisualSCode.sh
# Script para respaldar toda la configuración de VS Code
# ==========================================

# Definir rutas
BACKUP_DIR="./vscode-backup"
USER_CONFIG_DIR="$HOME/AppData/Roaming/Code/User"

echo "📦 Iniciando respaldo de configuración de VS Code..."

# Crear carpeta de respaldo
mkdir -p "$BACKUP_DIR/User"

# 1. Respaldar extensiones
echo "🧩 Guardando extensiones instaladas..."
code --list-extensions > "$BACKUP_DIR/extensions.txt"

# 2. Respaldar configuraciones del usuario
echo "🛠️  Copiando configuración del usuario (settings, keybindings, snippets, tasks, etc)..."
cp -r "$USER_CONFIG_DIR"/* "$BACKUP_DIR/User/"

echo "✅ Respaldo completado exitosamente en $BACKUP_DIR"
