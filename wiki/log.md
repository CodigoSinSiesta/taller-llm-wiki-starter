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
- Estructura de carpetas: `raw/`, `templates/`, `wiki/{identidad, comunidad,
  proyectos, conceptos, herramientas, referencias, operativa, assets}/`.
- `wiki/index.md` y `wiki/log.md` (este fichero) creados.
- `CLAUDE.md` listo para personalizar con tu perfil y dominio.
- Pendiente: ingestar la primera fuente real desde `raw/` (ver
  [ejercicios/02-primer-ingest.md](../ejercicios/02-primer-ingest.md)).
