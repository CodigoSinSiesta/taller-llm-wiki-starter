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

El agente responde con un plan adaptado a las **carpetas y plantillas que
activaste en el Ejercicio 1**. Un ejemplo (las rutas concretas dependerán de
tu finalidad):

> Propongo:
> 1. `wiki/<tu-carpeta>/<concepto-1>.md` (plantilla `concepto`) — definición + por qué importa.
> 2. `wiki/<tu-carpeta>/<concepto-2>.md` (plantilla `concepto`) — definición + cómo se aplica.
> 3. `wiki/<otra-carpeta>/<entrada>.md` (plantilla `nota` o la opcional que activaste).
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

### 5. Aplica la política de `raw/` que decidiste

Cuando estés conforme con las páginas, dile al agente que aplique la
*Política de raw/* acordada en el Ejercicio 1:

> Aplica la política de raw/ que dejamos en AGENTS.md sobre
> `raw/ejemplo-articulo.md` y confirma que la entrada del log registra el
> nombre del fichero raw, la fuente original y las páginas
> creadas/actualizadas.

Según hayas decidido en la *Entrevista de finalidad*:

- **Conservar** → el fichero se queda en `raw/`. La salida esperada de este
  ejercicio mantiene `raw/ejemplo-articulo.md` ahí.
- **Archivar** → el fichero se mueve a `raw/_archived/2026/`.
- **Eliminar** → el fichero se borra (esta es la única opción donde `raw/`
  queda totalmente vacía tras el ejercicio).

> ℹ️ Si no decidiste política o no recuerdas cuál era, vale lo que diga la
> sección *Política de raw/* de `AGENTS.md`. Si está pendiente de rellenar,
> vuelve un momento al Ejercicio 1.

### 6. Commit

```sh
git add .
git commit -m "Ingest: ejemplo-articulo"
```

## Checklist

- [ ] 1-3 páginas nuevas en `wiki/` con frontmatter YAML completo.
- [ ] Cada página enlaza con al menos otra usando `[[wikilinks]]`.
- [ ] Las citas a la fuente apuntan a la URL externa
      (`https://example.com/...` del frontmatter del raw), **nunca** al
      fichero `raw/`.
- [ ] `wiki/index.md` listando las páginas nuevas.
- [ ] Entrada `## [YYYY-MM-DD] ingest | …` en `wiki/log.md`.
- [ ] `raw/ejemplo-articulo.md` tratado según tu *Política de raw/*
      (conservado, archivado o eliminado — coherente con `AGENTS.md`).
- [ ] Commit hecho.

## Salida esperada

Las subcarpetas que decidiste en el Ejercicio 1 con sus primeras páginas
reales. `wiki/index.md` y `wiki/log.md` actualizados. La estructura de tu
wiki ya tiene **contenido**.

El estado de `raw/` depende de tu política:

- *Conservar* → `raw/ejemplo-articulo.md` sigue ahí (la fuente externa real
  es la que se cita, no el fichero, así que mantenerlo solo es un archivo
  personal).
- *Archivar* → el fichero está en `raw/_archived/2026/`.
- *Eliminar* → `raw/` queda vacía.

Sigue con [03-pregunta-y-archiva.md](03-pregunta-y-archiva.md).
