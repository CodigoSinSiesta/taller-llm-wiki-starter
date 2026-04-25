# Registro del Wiki

Registro de solo adición con todas las operaciones realizadas sobre el wiki.
La entrada más reciente va al final.

**Formato**: cada entrada es un encabezado `## [YYYY-MM-DD] tipo | Título`,
donde `tipo` ∈ {`setup`, `ingest`, `refactor`, `lint`, `meta`}. Esto permite
grep rápido:

```sh
grep "^## \[" wiki/log.md | tail -10           # últimas 10 operaciones
grep "^## \[2026-04" wiki/log.md               # todo abril 2026
grep "^## \[.*\] ingest" wiki/log.md           # solo ingestas
```

---

## [2026-04-25] setup | Esqueleto inicial desde el starter

- Repo creado a partir de [`taller-llm-wiki-starter`](https://github.com/CodigoSinSiesta/taller-llm-wiki-starter).
- Estructura mínima de carpetas: `raw/`, `templates/` (con tres plantillas
  universales `concepto`, `referencia`, `nota` + catálogo opcional en
  `templates/opcionales/`), `wiki/` (con `index.md`, `log.md` y `assets/`).
- `AGENTS.md` listo para personalizar tras la *Entrevista de finalidad*
  (`CLAUDE.md` es un wrapper que lo importa para Claude Code).
- **Pendiente**: hacer la *Entrevista de finalidad* del Ejercicio 1 para
  decidir qué subcarpetas crear en `wiki/` y qué plantillas activar desde
  `templates/opcionales/`.
