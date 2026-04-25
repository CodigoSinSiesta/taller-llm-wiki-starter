# taller-llm-wiki-starter

Repo de partida para el taller **LLM Wiki: tu baúl de conocimiento mantenido por tu agente de IA** ([Código Sin Siesta](https://codigosinsiesta.github.io)).

Al final del taller te llevas tu propia wiki personal funcionando: estructura adaptada a **tu finalidad concreta** (no genérica), plantillas con frontmatter YAML, flujo `raw/` → `wiki/` y `AGENTS.md` personalizado.

## Inspiración

Patrón **LLM Wiki** popularizado por Andrej Karpathy: markdown plano + LLM como redactor + humano como editor. Es un patrón **deliberadamente neutral**: sirve igual para apuntes de estudio, gestión de fuentes para una tesis, documentación de un cliente, memoria operativa de un equipo, hobby (cocina, fotografía, finanzas…) o knowledge base profesional. No impone qué debes guardar — el starter te guía a decidirlo en una *Entrevista de finalidad* al inicio.

## Requisitos

- **Un agente de IA con acceso al sistema de ficheros**. Funciona indistintamente con:
  - [Claude Code](https://docs.claude.com/en/docs/claude-code) — lee `CLAUDE.md` (que importa `AGENTS.md`).
  - [Codex CLI](https://github.com/openai/codex) — lee `AGENTS.md`.
  - [OpenCode](https://opencode.ai) — lee `AGENTS.md`.
  - [GitHub Copilot](https://github.com/features/copilot) (chat en el editor).
  - [Cursor](https://cursor.com) — añade `.cursor/rules/agents.mdc` apuntando a `AGENTS.md`.
  - Cualquier otro agente que sepa leer ficheros markdown del workspace.
- [Obsidian](https://obsidian.md/) (gratis) para visualizar el vault.
- [Obsidian Web Clipper](https://obsidian.md/clipper) (extensión de navegador, recomendado) — captura artículos web directamente en `raw/` como markdown con frontmatter YAML, sin pasar por copy-paste. Disponible para Chrome/Brave/Arc/Edge/Vivaldi, Firefox y Safari.
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

# 5. Haz la Entrevista de finalidad (Paso 0 del Ejercicio 1)
#    El agente te pregunta para qué quieres el wiki y propone la
#    estructura inicial — carpetas y plantillas — adaptada a tu caso.
```

## Estructura

```
taller-llm-wiki-starter/
├── AGENTS.md            -- instrucciones que lee tu agente al arrancar
├── CLAUDE.md            -- wrapper que importa AGENTS.md (para Claude Code)
├── README.md            -- este fichero
├── templates/           -- plantillas con frontmatter YAML
│   ├── concepto.md      --   universal: idea reutilizable
│   ├── referencia.md    --   universal: fuente externa
│   ├── nota.md          --   universal: entrada genérica (la más flexible)
│   ├── raw-fuente.md    --   formato esperado en raw/
│   └── opcionales/      --   menú de plantillas verticales (proyecto,
│                        --   herramienta, identidad, comunidad, operativa)
│                        --   que activas durante la entrevista de finalidad
├── raw/                 -- bandeja de entrada (incluye un ejemplo). Política de
│                        --   conservar/archivar/eliminar la decides en la
│                        --   Entrevista de finalidad. Por defecto: conservar.
├── wiki/                -- páginas markdown que mantiene el agente
│   ├── index.md         --   tabla de contenidos plana
│   ├── log.md           --   registro append-only de operaciones
│   ├── assets/          --   imágenes y otros adjuntos
│   └── <subcarpetas>    --   se crean tras la entrevista de finalidad
│                        --   con nombres adaptados a tu caso
└── ejercicios/          -- guía paso a paso del taller
```

> ⚠️ A diferencia de muchos starters de wiki, **no hay subcarpetas
> pre-creadas en `wiki/`** ni más plantillas activas que las tres
> universales. Esto es deliberado — la estructura emerge de la *Entrevista
> de finalidad* del Ejercicio 1, no se impone.

## Agenda del taller (90-120 min)

| Bloque | Tiempo | Contenido |
|--------|--------|-----------|
| 0 | 10 min | Bienvenida + el problema del conocimiento que se evapora |
| 1 | 15 min | Anatomía del wiki: piezas universales (frontmatter, MOCs, `raw/` efímera, index, log) |
| 2 | 10 min | Plantillas universales + catálogo opcional + vocabulario de tags |
| 3 | 15 min | Flujo de ingesta y regla de citación |
| 4 | 25 min | **Hands-on 1** — [Setup + Entrevista de finalidad](ejercicios/01-setup.md) + primer commit |
| 5 | 25 min | **Hands-on 2** — [Primer ingest](ejercicios/02-primer-ingest.md) + [archivado de respuesta](ejercicios/03-pregunta-y-archiva.md) |
| 6 | 15 min | **Hands-on 3** (opcional, versión 120 min) — [Lint asistido](ejercicios/04-lint-asistido.md) |
| 7 | 5 min | Cierre: takeaways + ingesta semanal de 30 min |

Si vas a ritmo cómodo, la versión 90 min cubre los hands-on 1 y 2. Los 30 min extra de la versión larga son para el lint asistido y preguntas.

## Ejercicios

1. [01-setup.md](ejercicios/01-setup.md) — clonar, configurar Obsidian, **Entrevista de finalidad** con el agente, primer `git commit`.
2. [02-primer-ingest.md](ejercicios/02-primer-ingest.md) — ingestar `raw/ejemplo-articulo.md` en 1-3 páginas conectadas.
3. [03-pregunta-y-archiva.md](ejercicios/03-pregunta-y-archiva.md) — pregunta al wiki + archivar la respuesta como página.
4. [04-lint-asistido.md](ejercicios/04-lint-asistido.md) — auditoría asistida (huérfanas, contradicciones, data gaps).

## Después del taller

- Una **ingesta semanal de 30 min** mantiene el wiki vivo. Mejor poco y constante que sprints largos.
- Cuando un dominio acumule masa (>10 páginas), crea un **Map of Content** temático (`wiki/<dominio>.md`) con queries Dataview sobre `tags:`.
- Si quieres una **auditoría puntual** del grafo, prueba [Graphify](https://github.com/safishamsi/graphify) sobre `wiki/`. No es necesario para el flujo regular.

## Licencia

MIT — usa este starter para tu propio wiki, para formaciones internas, o como base de tu propia variante.
