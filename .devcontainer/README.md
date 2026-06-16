# Probar el Taller LLM Wiki en Codespaces

Esta rama añade un **devcontainer** para que cualquiera pruebe el taller sin
instalar nada en local.

1. En GitHub: **Code → Codespaces → Create codespace on
   `taller/devcontainer-opencode`**.
2. Espera a que termine el `postCreateCommand` (instala OpenCode).
3. Exporta tu key de DeepSeek (te la dan en la presentación):
   ```bash
   export DEEPSEEK_API_KEY="sk-..."
   ```
   En esa misma terminal — **OpenCode no lee `.env`**.
4. Lanza el agente: `opencode`.
5. Abre [`ejercicios/01-setup.md`](../ejercicios/01-setup.md) y empieza la
   *Entrevista de finalidad*.

## Qué incluye

- `.devcontainer/devcontainer.json` — imagen Node 22 + git + GitHub CLI +
  locale `es_ES`, extensión OpenCode de VS Code.
- `.devcontainer/setup.sh` — instala OpenCode y lo deja en el `PATH`.
- `opencode.json` (raíz) — modelo `deepseek/deepseek-chat` + instrucciones
  (`AGENTS.md`, que OpenCode carga automáticamente).

## Límite conocido

**Obsidian no funciona en Codespaces** (es app de escritorio). En la nube ves
el wiki como markdown en VS Code y operas con el agente; los plugins
Dataview/Templates son solo para quien abra el repo en **Obsidian local**.
Todo el flujo del taller (entrevista, ingesta, pregunta-y-archiva, lint)
funciona igual sin Obsidian.
