# taller-llm-wiki-starter

Repo de partida para el taller **LLM Wiki: tu baúl de conocimiento mantenido por tu agente de IA** ([Código Sin Siesta](https://codigosinsiesta.github.io)).

Al final del taller te llevas tu propia wiki personal funcionando: estructura por categorías, plantillas con frontmatter YAML, flujo `raw/` → `wiki/` y `AGENTS.md` adaptado a tu perfil.

## Inspiración

Patrón **LLM Wiki** popularizado por Andrej Karpathy: markdown plano + LLM como redactor + humano como editor. Si quieres ver una wiki *llena* mantenida con este mismo starter, mira la organización [CodigoSinSiesta](https://github.com/CodigoSinSiesta) y la presentación [coding-agents-presentation](https://github.com/CodigoSinSiesta/coding-agents-presentation).

## Requisitos

- **Un agente de IA con acceso al sistema de ficheros**. Funciona indistintamente con:
  - [Claude Code](https://docs.claude.com/en/docs/claude-code) — lee `CLAUDE.md` (que importa `AGENTS.md`).
  - [Codex CLI](https://github.com/openai/codex) — lee `AGENTS.md`.
  - [OpenCode](https://opencode.ai) — lee `AGENTS.md`.
  - [GitHub Copilot](https://github.com/features/copilot) (chat en el editor).
  - [Cursor](https://cursor.com) — añade `.cursor/rules/agents.mdc` apuntando a `AGENTS.md`.
  - Cualquier otro agente que sepa leer ficheros markdown del workspace.
- [Obsidian](https://obsidian.md/) (gratis) para visualizar el vault.
- Git.
- (Opcional) Node.js ≥ 20 si quieres añadir scripts de validación.

No hace falta build: el wiki es **solo markdown + YAML frontmatter**.

## Cómo arrancar

```sh
# 1. Usa este repo como template (botón "Use this template" en GitHub)
#    o clónalo:
git clone https://github.com/CodigoSinSiesta/taller-llm-wiki-starter mi-wiki
cd mi-wiki

# 2. Abre la carpeta como vault en Obsidian
#    File → Open vault → "Open folder as vault" → selecciona mi-wiki/

# 3. Activa los plugins recomendados
#    Settings → Core plugins → Templates (apunta a `templates/`)
#    Settings → Community plugins → instala "Dataview"

# 4. Arranca tu agente en la raíz del repo
#    claude · codex · opencode · etc.

# 5. Pídele que lea AGENTS.md y empieza por el primer ejercicio
```

## Estructura

```
taller-llm-wiki-starter/
├── AGENTS.md            -- instrucciones que lee tu agente al arrancar
├── CLAUDE.md            -- wrapper que importa AGENTS.md (para Claude Code)
├── README.md            -- este fichero
├── templates/           -- una plantilla por `tipo` de página (NO tocar antes del taller)
├── raw/                 -- bandeja de entrada efímera (incluye un ejemplo)
├── wiki/                -- páginas markdown que mantiene el agente
│   ├── index.md         -- tabla de contenidos plana
│   ├── log.md           -- registro append-only de operaciones
│   └── <categorías>/    -- carpetas vacías listas para usar
└── ejercicios/          -- guía paso a paso del taller
```

## Agenda del taller (90-120 min)

| Bloque | Tiempo | Contenido |
|--------|--------|-----------|
| 0 | 10 min | Bienvenida + el problema del conocimiento que se evapora |
| 1 | 15 min | Anatomía del wiki: categorías, frontmatter, MOCs, `raw/` efímera |
| 2 | 10 min | Plantillas y vocabulario controlado de tags |
| 3 | 15 min | Flujo de ingesta y regla de citación |
| 4 | 20 min | **Hands-on 1** — [Setup](ejercicios/01-setup.md) + primer commit |
| 5 | 30 min | **Hands-on 2** — [Primer ingest](ejercicios/02-primer-ingest.md) + [archivado de respuesta](ejercicios/03-pregunta-y-archiva.md) |
| 6 | 15 min | **Hands-on 3** (opcional, versión 120 min) — [Lint asistido](ejercicios/04-lint-asistido.md) |
| 7 | 5 min | Cierre: takeaways + ingesta semanal de 30 min |

Si vas a ritmo cómodo, la versión 90 min cubre los hands-on 1 y 2. Los 30 min extra de la versión larga son para el lint asistido y preguntas.

## Ejercicios

1. [01-setup.md](ejercicios/01-setup.md) — clonar, configurar Obsidian, primer `git commit`.
2. [02-primer-ingest.md](ejercicios/02-primer-ingest.md) — ingestar `raw/ejemplo-articulo.md` en 1-3 páginas conectadas.
3. [03-pregunta-y-archiva.md](ejercicios/03-pregunta-y-archiva.md) — pregunta al wiki + archivar la respuesta como página.
4. [04-lint-asistido.md](ejercicios/04-lint-asistido.md) — auditoría asistida (huérfanas, contradicciones, data gaps).

## Después del taller

- Una **ingesta semanal de 30 min** mantiene el wiki vivo. Mejor poco y constante que sprints largos.
- Cuando un dominio acumule masa (>10 páginas), crea un **Map of Content** temático (`wiki/<dominio>.md`) con queries Dataview sobre `tags:`.
- Si quieres una **auditoría puntual** del grafo, prueba [Graphify](https://github.com/safishamsi/graphify) sobre `wiki/`. No es necesario para el flujo regular.

## Licencia

MIT — usa este starter para tu propio wiki, para formaciones internas, o como base de tu propia variante.
