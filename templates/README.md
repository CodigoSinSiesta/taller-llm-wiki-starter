# Plantillas del wiki

Plantillas listas para usar al crear páginas nuevas. Una por valor de `tipo`
del frontmatter.

## Catálogo

### Universales — siempre activas

Tres plantillas que sirven para casi cualquier caso de uso. Vienen activas
desde el primer momento:

| Plantilla | `tipo:` | Cuándo usarla |
|-----------|---------|---------------|
| [`concepto.md`](concepto.md) | `concepto` | Idea reutilizable que se cita desde varias páginas |
| [`referencia.md`](referencia.md) | `referencia` | Fuente externa (artículo, paper, vídeo, libro, repo) |
| [`nota.md`](nota.md) | `nota` | Entrada genérica cuando ni concepto ni referencia encajan — la más flexible |

Y un fichero auxiliar:

| Plantilla | Para |
|-----------|------|
| [`raw-fuente.md`](raw-fuente.md) | Documenta el formato esperado de los ficheros en `raw/` |

### Opcionales — actívalas según tu finalidad

En [`opcionales/`](opcionales/) hay un menú de plantillas verticales que el
agente recomienda activar tras la *Entrevista de finalidad* del Ejercicio 1,
si encajan con tu caso. Activarlas significa **moverlas a `templates/`**:

| Plantilla | `tipo:` | Cuándo encaja |
|-----------|---------|---------------|
| [`opcionales/proyecto.md`](opcionales/proyecto.md) | `proyecto` | Una página por proyecto, repo, cliente o iniciativa |
| [`opcionales/herramienta.md`](opcionales/herramienta.md) | `herramienta` | Una herramienta concreta del stack que usas |
| [`opcionales/identidad.md`](opcionales/identidad.md) | `identidad` | Perfil profesional, trayectoria, valores (si tu wiki incluye marca personal) |
| [`opcionales/comunidad.md`](opcionales/comunidad.md) | `comunidad` | Marca, audiencia, canales (si gestionas una comunidad o producto) |
| [`opcionales/operativa.md`](opcionales/operativa.md) | `operativa` | Roadmap, ideas, playbooks, ADRs (decisiones documentadas) |

Si necesitas una plantilla que no está en este catálogo (p. ej. `receta`,
`paper`, `entrevista`, `cliente`, `experimento`, `playbook`…), **créala** en
`templates/` siguiendo el mismo formato que las existentes y documenta el
nuevo `tipo:` en `AGENTS.md` (sección *Formato de página*).

## Cómo usarlas

### Vía plugin Templates de Obsidian (recomendado)

1. Settings → Core plugins → activa **Templates**.
2. Settings → Templates → *Template folder location* = `templates`.
3. Crea la nueva página vacía en la carpeta correcta del wiki.
4. `Cmd/Ctrl+P` → **Templates: Insert template** → elige la que toca.
5. Rellena los `<!-- TODO -->` y los `[]` del frontmatter.

> Las plantillas de `templates/opcionales/` no se ofrecen en el menú del
> plugin a menos que las muevas a `templates/`. Esto es deliberado — fuerza
> la decisión consciente.

Las plantillas usan los placeholders nativos del plugin:

- `{{title}}` — nombre del fichero (sin extensión).
- `{{date:YYYY-MM-DD}}` — fecha actual ISO.

### Vía tu agente (Claude Code, Codex, OpenCode, Copilot, Cursor…)

Si el agente crea la página por ti durante una ingesta, le pides que parta de
`templates/<tipo>.md` y rellene los huecos. Así no se le olvida ningún campo
del frontmatter ni la sección de *Páginas relacionadas*.

## Vocabulario controlado de tags

Para que las queries Dataview funcionen, los tags siguen un vocabulario
común. **Empieza con pocos** y conviértelos a vocabulario controlado a medida
que crezca tu wiki. Algunos sugeridos como punto de partida según finalidad:

- **Estudio / aprendizaje**: `tema`, `examen`, `bibliografia`, `apuntes`.
- **Investigación / tesis**: `paper`, `dataset`, `metodologia`, `hipotesis`.
- **Trabajo / cliente**: `cliente`, `requisito`, `incidencia`, `decision`.
- **Hobby**: ajústalo a tu dominio (recetas → `tecnica`, `ingrediente`,
  `temporada`; música → `artista`, `album`, `genero`; finanzas → `gasto`,
  `inversion`, `impuesto`).

Lo importante es **convergencia**: cada nuevo tag debería aparecer en al
menos 2-3 páginas para ganarse su sitio.

**Categoriales** (heredados de la plantilla): `concepto`, `referencia`,
`nota`, `proyecto`, etc. No los añadas si ya hay un `tipo: <esos>` en el
frontmatter — son redundantes.

**Cuando dudes**: añade un tag genérico existente antes que inventar uno
nuevo. El wiki prefiere convergencia sobre exhaustividad.

## Mantenimiento

Si añades un tipo nuevo (p. ej. `playbook` separado de `operativa`):

1. Crea su plantilla en `templates/` partiendo de `nota.md` como base.
2. Añade el tipo a la lista en `AGENTS.md` (sección *Formato de página*).
3. Documéntalo aquí (sección *Catálogo > Opcionales* o crea una nueva).
