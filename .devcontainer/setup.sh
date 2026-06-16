#!/usr/bin/env bash
#
# setup.sh — Prepara el devcontainer del Taller LLM Wiki: instala OpenCode.
#
# El wiki es solo markdown + YAML, no hay build. Lo único que el contenedor
# necesita es el agente (OpenCode) en el PATH. La API key de DeepSeek NO se
# gestiona aquí: expórtala antes de lanzar opencode (OpenCode no lee .env).
set -euo pipefail

GREEN='\033[0;32m'; BLUE='\033[0;34m'; YELLOW='\033[1;33m'; NC='\033[0m'
info()  { echo -e "${BLUE}▸${NC} $*"; }
ok()    { echo -e "${GREEN}✅${NC} $*"; }
warn()  { echo -e "${YELLOW}⚠️${NC}  $*"; }

# ---- OpenCode CLI --------------------------------------------------------
if command -v opencode >/dev/null 2>&1; then
  ok "OpenCode ya instalado ($(opencode --version 2>/dev/null || echo '?'))"
else
  info "Instalando OpenCode…"
  curl -fsSL https://opencode.ai/install | bash
fi

# Asegura 'opencode' en el PATH de futuras terminales del Codespace
LINE='export PATH="$HOME/.opencode/bin:$PATH"'
grep -qxF "$LINE" "$HOME/.bashrc" 2>/dev/null || echo "$LINE" >> "$HOME/.bashrc"
export PATH="$HOME/.opencode/bin:$PATH"
command -v opencode >/dev/null 2>&1 && ok "OpenCode listo" \
  || warn "Reabre la terminal para tener 'opencode' en el PATH."

echo ""
ok "Devcontainer del Taller LLM Wiki listo."
echo ""
echo -e "${BLUE}Siguientes pasos:${NC}"
echo "  1. Exporta tu key de DeepSeek (te la dan en la presentación):"
echo "       export DEEPSEEK_API_KEY=\"sk-...\""
echo "     (en esta misma terminal; OpenCode no lee .env)"
echo "  2. Lanza el agente:   opencode"
echo "  3. Abre ejercicios/01-setup.md y empieza la Entrevista de finalidad."
echo ""
echo "  Nota: Obsidian no corre en Codespaces. Aquí ves el wiki como markdown"
echo "  en VS Code; el flujo del agente funciona igual."
