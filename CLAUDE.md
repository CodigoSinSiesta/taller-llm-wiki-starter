# LLM Wiki Personal

Una base de conocimiento personal mantenida por Claude Code, basada en el patrón
**LLM Wiki** popularizado por Andrej Karpathy: markdown plano + LLM como redactor
+ humano como editor.

> Esto es el `CLAUDE.md` del **starter** del taller. Cuando hagas tuyo el repo,
> sustituye los placeholders `<TU NOMBRE>`, `<TU ROL>`, etc. en la sección
> *Propósito*, y borra esta cita.

## Propósito

Este wiki es el baúl de conocimiento personal de **`<TU NOMBRE>`**. Cubre los
frentes que tú decidas. Una división razonable para empezar:

1. **Identidad profesional** — quién eres, trayectoria, stack, valores.
2. **Dominio principal** — el área en la que trabajas (proyectos cliente, una
   comunidad, un producto, una tesis…).
3. **Operativa** — roadmap, ideas, playbooks, decisiones.

Claude mantiene el wiki. La persona usuaria aporta las fuentes, hace preguntas
y guía el análisis.

## Estructura de carpetas

```
raw/                    -- bandeja de entrada efímera (se eliminan tras ingestar)
templates/              -- plantillas por tipo de página — usar SIEMPRE al crear una página nueva
wiki/                   -- páginas markdown mantenidas por Claude
wiki/index.md           -- tabla de contenidos plana de todo el wiki
wiki/log.md             -- registro de solo adición con todas las operaciones
wiki/identidad/         -- perfil, trayectoria, stack, valores, certificaciones
wiki/comunidad/         -- (renombra a tu dominio si aplica) misión, marca, audiencia
wiki/proyectos/         -- una página por proyecto/repo
wiki/conceptos/         -- ideas reutilizables (definiciones, frameworks, patrones)
wiki/herramientas/      -- tooling con página propia
wiki/referencias/       -- estudios externos, artículos y casos de estudio citados
wiki/operativa/         -- roadmap, ideas, playbooks, decisiones
```

**Reglas de categorización**:

- Un concepto reutilizable entre varios proyectos va en `conceptos/`, no
  duplicado en cada proyecto.
- Si una carpeta no encaja con tu dominio, **renómbrala** o sustitúyela. Por
  ejemplo, `comunidad/` puede pasar a `cliente/`, `tesis/`, `producto/`, etc.
  Ajusta también las plantillas y este `CLAUDE.md` si lo haces.

## Flujo de ingesta

Cuando el usuario añada una nueva fuente a `raw/` y te pida que la ingestes:

1. Lee el documento fuente completo.
2. **Identifica la fuente original** (URL, artículo, repo, etc.) — el fichero
   en `raw/` es solo un contenedor efímero.
3. Comenta los puntos clave con el usuario antes de escribir nada.
4. Crea o actualiza páginas de `wiki/` agrupadas **por tema**, no por fichero.
   Una sola fuente puede afectar a varias páginas — es normal.
5. En cada página, cita la **fuente original** (no el fichero `raw/`) tanto en
   `fuentes:` del frontmatter como en las citas en cuerpo `(fuente: …)`.
6. Añade enlaces wiki (`[[nombre-de-pagina]]`) para conectar páginas
   relacionadas.
7. Actualiza `wiki/index.md` con las páginas nuevas y una descripción de una
   línea.
8. Añade una entrada a `wiki/log.md` con el formato
   `## [YYYY-MM-DD] tipo | Título` (tipos: `setup`, `ingest`, `refactor`,
   `lint`, `meta`), incluyendo nombre del fichero raw, fuente original y qué
   ha cambiado.
9. **Elimina el archivo original de `raw/`** una vez completada la ingesta y
   registrado el cambio en el log.

**Regla de citación**: las páginas del wiki **nunca** referencian ficheros de
`raw/`. `raw/` es una bandeja efímera; la cita debe apuntar a la fuente
externa real (URL, repo, artículo, libro). El `log.md` es el único sitio donde
queda traza del fichero raw intermedio.

## Plantillas

**Antes de crear una página nueva, parte siempre de la plantilla del tipo
correcto en `templates/`** (ver [`templates/README.md`](templates/README.md)).

Hay una plantilla por valor de `tipo`:

- `templates/concepto.md` → `wiki/conceptos/`
- `templates/herramienta.md` → `wiki/herramientas/`
- `templates/proyecto.md` → `wiki/proyectos/`
- `templates/identidad.md` → `wiki/identidad/`
- `templates/comunidad.md` → `wiki/comunidad/`
- `templates/referencia.md` → `wiki/referencias/`
- `templates/operativa.md` → `wiki/operativa/`
- `templates/raw-fuente.md` → documenta el formato esperado en `raw/`

Si abres una plantilla y no usas algún hueco, **borra los `<!-- TODO -->` y
los placeholders sin rellenar** — no los dejes flotando en la página final.

## Formato de página

Toda página del wiki debe seguir esta estructura: **YAML frontmatter + cuerpo
markdown**. Los metadatos van en el frontmatter, no en el cuerpo — así
Obsidian los renderiza como Properties y
[Dataview](https://blacksmithgu.github.io/obsidian-dataview/) puede
consultarlos.

```markdown
---
tipo: concepto                    # concepto | herramienta | proyecto | identidad | comunidad | referencia | operativa
resumen: "Una o dos frases que describen esta página."
fuentes:
  - nombre: "Nombre legible"
    url: https://dominio.com/ruta
actualizado: 2026-04-25
tags: [tema-1, tema-2]            # del vocabulario controlado
---

# Título de la página

El contenido principal va aquí. Usa encabezados claros y párrafos cortos.

Enlaza con conceptos relacionados usando [[enlaces-wiki]] a lo largo del texto.

## Páginas relacionadas

- [[concepto-relacionado-1]]
- [[concepto-relacionado-2]]
```

**Reglas del frontmatter**:

- `tipo` debe coincidir con la carpeta (`conceptos/` → `tipo: concepto`).
- `actualizado` en formato ISO `YYYY-MM-DD`; actualízalo en cada edición.
- `fuentes` es una lista de objetos `{nombre, url}`. Nunca apunta a un fichero
  `raw/`.
- `tags` es **obligatorio** y usa el vocabulario controlado documentado en
  [`templates/README.md`](templates/README.md). Ante la duda, prefiere un tag
  existente antes que inventar uno nuevo.
- No dupliques `**Resumen**:` / `**Fuentes**:` en el cuerpo — ya están en el
  frontmatter.
- `wiki/index.md` y `wiki/log.md` están exentos: son índices, no páginas de
  contenido.

## Map of Content (MOCs)

Cuando un dominio acumule >10 páginas, considera crear un **Map of Content**
temático en `wiki/<dominio>.md` (p. ej. `wiki/ia.md`, `wiki/hacienda.md`,
`wiki/cliente-acme.md`) que agrupe el contenido por sub-tema usando los
`tags:` del frontmatter.

Reglas de los MOCs:

- **No son páginas de contenido**, son índices vivos. No duplican texto.
- **Las queries Dataview son la fuente de verdad** (qué páginas pertenecen a
  cada sub-tema). Las listas manuales son fallback si Dataview no está activo.
- **Si una página debería aparecer y no aparece, lo más probable es que le
  falten tags.** Es preferible añadir tags antes que listarla manualmente.

## Reglas de citación

- Toda afirmación factual debe hacer referencia a su fuente original (URL,
  repo, artículo, libro).
- Usa `(fuente: dominio.com)` o `(fuente: artículo X)` después de la
  afirmación — **nunca** `(fuente: fichero-raw.md)`.
- En el frontmatter, `fuentes[].url` debe ser la URL externa real.
- Si dos fuentes se contradicen, señala la contradicción de forma explícita.
- Si una afirmación no tiene fuente, márcala como pendiente de verificar.

## Respuesta a preguntas

Cuando el usuario haga una pregunta:

1. Lee primero `wiki/index.md` para localizar las páginas relevantes.
2. Lee esas páginas y sintetiza una respuesta.
3. Cita páginas concretas del wiki en tu respuesta (enlaces `[[nombre]]`).
4. Si la respuesta no está en el wiki, dilo con claridad — y propón añadirla.
5. **Archivado de respuestas (mecanismo principal de acumulación)**: si la
   respuesta es valiosa o el usuario ha aportado información nueva durante el
   hilo, **propón activamente** guardarla como página nueva o como sección de
   una página existente. Una buena respuesta no guardada es conocimiento
   perdido. El wiki no solo crece por ingesta de `raw/`; crece también por
   preguntas del usuario.

## Lint

Cuando el usuario te pida hacer lint o auditar el wiki:

- Busca contradicciones entre páginas.
- Localiza páginas huérfanas (sin enlaces entrantes desde otras páginas).
- Identifica conceptos mencionados que no tienen su propia página.
- Señala afirmaciones que puedan estar desactualizadas según fuentes más
  recientes.
- Comprueba que todas las páginas siguen el formato anterior.
- **Data gaps**: detecta huecos factuales que podrían rellenarse con búsqueda
  web (fechas, versiones, autores, URLs oficiales). Propón las consultas
  concretas a hacer.
- **Preguntas abiertas y fuentes sugeridas**: identifica preguntas que el
  wiki no responde y sugiere fuentes candidatas para próximas ingestas.
- Reporta los hallazgos como una lista numerada con soluciones sugeridas.

## Reglas

- Las fuentes en `raw/` son **efímeras**: se leen, se ingestan, se registran
  en el log y se eliminan. No se modifican ni se editan en su lugar.
- Actualiza siempre `wiki/index.md` y `wiki/log.md` después de cada cambio.
  En `log.md`, cada entrada empieza por `## [YYYY-MM-DD] tipo | Título` para
  permitir `grep "^## \[" wiki/log.md | tail`.
- **Las páginas nuevas se crean siempre desde una plantilla en `templates/`**,
  no desde cero.
- Los nombres de página en minúscula y con guiones (p. ej.
  `aprendizaje-automatico.md`).
- Escribe en un lenguaje claro y sencillo.
- Si tienes dudas sobre cómo categorizar algo, pregunta al usuario.
