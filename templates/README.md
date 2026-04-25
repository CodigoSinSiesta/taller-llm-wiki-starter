# Plantillas del wiki

Plantillas listas para usar al crear páginas nuevas. Una por `tipo` del
frontmatter.

## Cómo usarlas

### Vía plugin Templates de Obsidian (recomendado)

1. Settings → Core plugins → activa **Templates**.
2. Settings → Templates → *Template folder location* = `templates`.
3. Crea la nueva página vacía en la carpeta correcta del wiki.
4. `Cmd/Ctrl+P` → **Templates: Insert template** → elige la que toca.
5. Rellena los `<!-- TODO -->` y los `[]` del frontmatter.

Las plantillas usan los placeholders nativos del plugin:

- `{{title}}` — nombre del fichero (sin extensión).
- `{{date:YYYY-MM-DD}}` — fecha actual ISO.

### Vía tu agente (Claude Code, Codex, OpenCode, Copilot, Cursor…)

Si el agente crea la página por ti durante una ingesta, le pides que parta de
`templates/<tipo>.md` y rellene los huecos. Así no se le olvida ningún campo
del frontmatter ni la sección de *Páginas relacionadas*.

## Plantillas disponibles

| Plantilla | Para páginas en | Sección típica |
|-----------|-----------------|----------------|
| [`concepto.md`](concepto.md) | `wiki/conceptos/` | Idea reutilizable entre proyectos |
| [`herramienta.md`](herramienta.md) | `wiki/herramientas/` | Una herramienta concreta |
| [`proyecto.md`](proyecto.md) | `wiki/proyectos/` | Un proyecto / repo |
| [`identidad.md`](identidad.md) | `wiki/identidad/` | Perfil, trayectoria, stack… |
| [`comunidad.md`](comunidad.md) | `wiki/comunidad/` | Marca, audiencia, canales… |
| [`referencia.md`](referencia.md) | `wiki/referencias/` | Fuente externa (artículo, vídeo, paper) |
| [`operativa.md`](operativa.md) | `wiki/operativa/` | Roadmap, idea, playbook, ADR |
| [`raw-fuente.md`](raw-fuente.md) | `raw/` | Documenta el formato esperado en la bandeja |

## Vocabulario controlado de tags

Para que las queries Dataview funcionen, los tags siguen un vocabulario común.
**Empieza con pocos** y conviértelos a vocabulario controlado a medida que
crezca tu wiki. Algunos sugeridos como punto de partida:

**Temáticos genéricos**: `aprendizaje`, `producto`, `cliente`, `personal`,
`tecnico`, `proceso`.

**Específicos** (añade los tuyos según el dominio): si tu wiki es de IA,
`agentes`, `mcp`, `sdd`, `evaluacion`. Si es de cocina, `recetas`,
`tecnicas`, `ingredientes`. Lo importante es **convergencia**: cada nuevo
tag debería aparecer en al menos 2-3 páginas para ganarse su sitio.

**Categoriales** (heredados del tipo): `referencia`, `proyecto`, `comunidad`,
`identidad`, `operativa`. No los añadas si ya hay un `tipo: <esos>` en el
frontmatter — son redundantes.

**Cuando dudes**: añade un tag genérico existente antes que inventar uno
nuevo. El wiki prefiere convergencia sobre exhaustividad.

## Mantenimiento

Si añades un tipo nuevo (p.ej. `playbook` separado de `operativa`):

1. Crea su plantilla en `templates/`.
2. Añade el tipo a la lista en `AGENTS.md` (sección *Formato de página*).
3. Crea la carpeta `wiki/<tipo>/` o documenta dónde viven las páginas.
4. Actualiza esta tabla.
