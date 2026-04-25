# LLM Wiki Personal

Una base de conocimiento personal mantenida por **tu agente de IA** (Claude
Code, Codex, OpenCode, Copilot, Cursor o el que prefieras), basada en el
patrón **LLM Wiki** popularizado por Andrej Karpathy: markdown plano + LLM
como redactor + humano como editor.

> Este es el `AGENTS.md` del **starter** del taller. La sección *Propósito*
> está intencionalmente vacía: el agente la rellenará contigo durante la
> *Entrevista de finalidad* del Ejercicio 1. Cuando lo hagas, **borra esta
> cita**.

## Compatibilidad de agentes

Este fichero `AGENTS.md` es la convención cross-agent emergente: lo leen
[Codex CLI](https://github.com/openai/codex), [OpenCode](https://opencode.ai),
[Aider](https://aider.chat) y otros agentes modernos. Para Claude Code,
existe `CLAUDE.md` en la raíz que importa este mismo fichero. Si tu agente
usa otra convención (p. ej. `.cursor/rules/` para Cursor), crea el fichero
correspondiente con un puntero a `AGENTS.md` o copia su contenido.

## Propósito

> ⏳ Pendiente de rellenar tras la *Entrevista de finalidad* (ver
> [`ejercicios/01-setup.md`](ejercicios/01-setup.md), Paso 0).

El patrón LLM Wiki es **deliberadamente neutral en cuanto a contenido**: sirve
igual de bien para apuntes de estudio, gestión de fuentes para una tesis,
documentación de un cliente, memoria operativa de un equipo, hobby (cocina,
fotografía, música, finanzas personales…), investigación o knowledge base
profesional. No impone qué debe contener.

Por eso, **antes de empezar**, el agente y tú decidiréis juntos:

- Para qué vas a usar este wiki (la **finalidad**).
- Qué tipo de fuentes vas a meter (artículos, vídeos, libros, transcripts,
  notas propias, screenshots…).
- Qué estructura inicial le viene bien (qué carpetas crear en `wiki/`, qué
  plantillas activar desde `templates/opcionales/`).

Tras la entrevista, el agente actualiza esta sección con tu finalidad concreta
y crea las carpetas + activa las plantillas necesarias. **Borra esta cita
explicativa** y la nota "Pendiente de rellenar".

## Estructura de carpetas

```
raw/                    -- bandeja de entrada (política configurable, ver más abajo)
templates/              -- plantillas universales para crear páginas nuevas
templates/opcionales/   -- plantillas verticales (mover a templates/ si encajan con tu finalidad)
wiki/                   -- páginas markdown mantenidas por el agente
wiki/index.md           -- tabla de contenidos plana de todo el wiki
wiki/log.md             -- registro de solo adición con todas las operaciones
wiki/assets/            -- imágenes y otros adjuntos referenciados desde páginas
```

> ⏳ Las **subcarpetas temáticas** de `wiki/` (p. ej. `wiki/conceptos/`,
> `wiki/recetas/`, `wiki/cliente-acme/`, `wiki/papers/`…) se crean **tras**
> la entrevista de finalidad, no vienen pre-pobladas. Esto evita imponer una
> vertical que igual no encaja con tu caso.

**Reglas de categorización**:

- Una **página = una idea**. Granularidad fina: si una página empieza a
  cubrir dos cosas, divídela.
- Si un mismo concepto aparecería en varias páginas (definición, historia,
  aplicaciones), **una sola página** que las demás enlazan con `[[wikilinks]]`.
- El nombre de las subcarpetas lo decides tú durante la entrevista de
  finalidad. No hay carpetas obligatorias más allá del esqueleto anterior.

## Flujo de ingesta

Cuando el usuario añada una nueva fuente a `raw/` y te pida que la ingestes:

1. Lee el documento fuente completo.
2. **Identifica la fuente original** si la hay (URL, artículo, repo, libro,
   conversación con persona X en fecha Y, transcripción de chat propio…).
   Si la fuente *es* el propio fichero (notas propias, ideas en bruto), el
   fichero raw cuenta como fuente y debes registrarlo en consecuencia.
3. Comenta los puntos clave con el usuario antes de escribir nada.
4. Crea o actualiza páginas de `wiki/` agrupadas **por tema**, no por fichero.
   Una sola fuente puede afectar a varias páginas — es normal.
5. En cada página, cita la **fuente original**:
   - Si es externa (URL, repo, artículo, libro): `fuentes:` apunta a la URL
     real, **nunca** al fichero `raw/`. Citas en cuerpo: `(fuente: …)`.
   - Si la fuente es el propio fichero raw (notas propias): `fuentes:` puede
     apuntar a `raw/<fichero>` o a una nota propia indicando contexto. Esto
     solo aplica si la *Política de raw/* es **conservar** o **archivar**.
6. Añade enlaces wiki (`[[nombre-de-pagina]]`) para conectar páginas
   relacionadas.
7. Actualiza `wiki/index.md` con las páginas nuevas y una descripción de una
   línea.
8. Añade una entrada a `wiki/log.md` con el formato
   `## [YYYY-MM-DD] tipo | Título` (tipos: `setup`, `ingest`, `refactor`,
   `lint`, `meta`), incluyendo nombre del fichero raw, fuente original y qué
   ha cambiado.
9. **Aplica la *Política de raw/*** acordada en la Entrevista de finalidad
   (ver siguiente sección).

## Política de raw/

`raw/` **no es una bandeja efímera por defecto**. Cómo se trata cada fichero
tras ingestar lo decide el usuario en la Entrevista de finalidad del
Ejercicio 1. Hay tres opciones:

- **Conservar (recomendado por defecto)** — el fichero raw se queda donde
  está. Ideal si tiene valor histórico o lo quieres releer/reanalizar:
  notas propias, transcripciones de conversaciones, PDFs de referencia,
  capturas… Las páginas del wiki citan la fuente original cuando sea
  externa, o el propio fichero raw cuando sea producción propia.
- **Archivar** — el fichero raw se mueve a `raw/_archived/<año>/` (o el
  patrón que decidáis) tras ingestar. Lo mantiene accesible pero fuera del
  flujo activo de la bandeja. Útil si quieres tener histórico sin
  contaminar `raw/`.
- **Eliminar (efímero)** — el fichero raw se borra tras ingestar. Solo
  apropiado cuando la fuente real es **externa y recuperable** (URL pública,
  repo, libro) y el fichero raw era solo un contenedor de paso. Nunca para
  notas propias o transcripciones únicas.

La política decidida queda documentada al final de esta sección tras la
entrevista, con una frase del estilo: "Política de raw/ acordada
2026-04-25: **conservar** por defecto, salvo cuando se indique lo contrario
en la conversación de ingesta".

**Reglas que se mantienen siempre**, independientemente de la política:

- El `log.md` registra qué fichero raw produjo qué páginas (auditable).
- Cuando la fuente sea externa (URL, repo, libro), las páginas citan **esa
  fuente**, no el fichero raw — incluso si decides conservar el raw como
  archivo personal.
- El usuario puede sobreescribir la política caso a caso ("este lo borras
  tras ingestar", "este me lo guardas en archivo").

> ⏳ Pendiente de rellenar tras la *Entrevista de finalidad*.

## Plantillas

**Antes de crear una página nueva, parte siempre de la plantilla del tipo
correcto en `templates/`** (ver [`templates/README.md`](templates/README.md)).

El starter trae **tres plantillas universales** que sirven para casi cualquier
caso de uso:

- `templates/concepto.md` → idea reutilizable que merece su propia página.
- `templates/referencia.md` → fuente externa que citas desde varias páginas
  (artículo, paper, vídeo, libro).
- `templates/nota.md` → entrada genérica cuando ni "concepto" ni "referencia"
  encajan. La más flexible.

Y un catálogo de **plantillas opcionales** en
[`templates/opcionales/`](templates/opcionales/) que el agente recomienda
mover a `templates/` durante la entrevista de finalidad si encajan con tu
caso (proyecto, herramienta, identidad, comunidad/marca, operativa…). Si en
algún momento posterior necesitas una más, simplemente muévela.

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
tipo: concepto                    # del catálogo de plantillas activas
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

- `tipo` debe coincidir con la plantilla usada (`concepto`, `referencia`,
  `nota`, o cualquier opcional que hayáis activado).
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
temático en `wiki/<dominio>.md` (p. ej. `wiki/recetas.md`,
`wiki/proyectos.md`, `wiki/cliente-acme.md`) que agrupe el contenido por
sub-tema usando los `tags:` del frontmatter.

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

- Los ficheros en `raw/` no se modifican ni se editan en su lugar — solo se
  leen para ingestar. Tras la ingesta, aplica la *Política de raw/* acordada
  con el usuario (conservar / archivar / eliminar).
- Actualiza siempre `wiki/index.md` y `wiki/log.md` después de cada cambio.
  En `log.md`, cada entrada empieza por `## [YYYY-MM-DD] tipo | Título` para
  permitir `grep "^## \[" wiki/log.md | tail`.
- **Las páginas nuevas se crean siempre desde una plantilla en `templates/`**,
  no desde cero.
- Los nombres de página en minúscula y con guiones (p. ej.
  `aprendizaje-automatico.md`).
- Escribe en un lenguaje claro y sencillo.
- Si tienes dudas sobre cómo categorizar algo, pregunta al usuario.
- **No impongas estructura**: si el usuario no ha hecho aún la entrevista de
  finalidad, propón hacerla antes de crear carpetas o activar plantillas.
- **No elimines ficheros de `raw/` por iniciativa propia** salvo que la
  política acordada sea "eliminar" o el usuario te lo pida explícitamente
  para un fichero concreto.
