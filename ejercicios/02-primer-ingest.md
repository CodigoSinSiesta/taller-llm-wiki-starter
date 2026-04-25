# Ejercicio 2 — Primer ingest

**Objetivo**: convertir una fuente bruta (`raw/ejemplo-articulo.md`) en 1-3
páginas conectadas con frontmatter completo, citas a la fuente original y
entrada en `wiki/log.md`.

**Tiempo**: 20-25 min.

## Pre-requisitos

- Ejercicio 1 terminado (`AGENTS.md` personalizado, plugins activos).
- Tu agente (Claude Code, Codex, OpenCode, Copilot, Cursor…) corriendo en la raíz del repo.

## Pasos

### 1. Lee el documento fuente

Abre [`raw/ejemplo-articulo.md`](../raw/ejemplo-articulo.md) en Obsidian.
Léelo entero. Identifica:

- ¿Cuál es la fuente original (URL real al final del fichero o en
  frontmatter)?
- ¿Qué conceptos reutilizables aparecen?
- ¿Qué herramientas se mencionan?
- ¿Hay datos / cifras citables?

### 2. Pídele a tu agente que comente antes de escribir

> Acabo de añadir `raw/ejemplo-articulo.md`. Léelo entero, identifica la
> fuente original y proponme un plan: qué páginas crearías o actualizarías
> en `wiki/`, agrupadas por tema (no por fichero). No escribas nada todavía.

El agente responde con un plan tipo:

> Propongo:
> 1. `wiki/conceptos/<concepto-1>.md` — definición + por qué importa.
> 2. `wiki/conceptos/<concepto-2>.md` — definición + cómo se aplica.
> 3. `wiki/herramientas/<herramienta-x>.md` — qué hace y cuándo usarla.
> Fuente original: <URL>.

### 3. Itera el plan si hace falta

Si te parece poco o demasiado:

> El concepto-2 ya lo cubre el concepto-1, fusiónalos en una sola página.
> Sí crea la página de la herramienta.

### 4. Dale luz verde para escribir

> Adelante. Recuerda partir siempre de `templates/<tipo>.md`, citar la fuente
> original (no el fichero raw), enlazar entre páginas con `[[wikilinks]]`,
> actualizar `wiki/index.md` con una línea por página nueva, y añadir una
> entrada `## [YYYY-MM-DD] ingest | …` a `wiki/log.md`.

El agente crea las páginas. Revisa con `git diff` lo que ha escrito.

### 5. Elimina el fichero raw

Cuando estés conforme con las páginas:

> Elimina `raw/ejemplo-articulo.md` y confirma que la entrada del log
> registra el nombre del fichero raw, la fuente original y las páginas
> creadas/actualizadas.

### 6. Commit

```sh
git add .
git commit -m "Ingest: ejemplo-articulo"
```

## Checklist

- [ ] 1-3 páginas nuevas en `wiki/` con frontmatter YAML completo.
- [ ] Cada página enlaza con al menos otra usando `[[wikilinks]]`.
- [ ] Las citas a la fuente apuntan a la URL externa, **nunca** al fichero
      `raw/`.
- [ ] `wiki/index.md` listando las páginas nuevas.
- [ ] Entrada `## [YYYY-MM-DD] ingest | …` en `wiki/log.md`.
- [ ] `raw/ejemplo-articulo.md` eliminado.
- [ ] Commit hecho.

## Salida esperada

`raw/` vacía. `wiki/conceptos/` y/o `wiki/herramientas/` con las primeras
páginas reales. `wiki/index.md` y `wiki/log.md` actualizados. La estructura
de tu wiki ya tiene **forma**.

Sigue con [03-pregunta-y-archiva.md](03-pregunta-y-archiva.md).
