# Ejercicio 1 — Setup + Entrevista de finalidad

**Objetivo**: dejar el repo abierto en Obsidian con los plugins correctos,
**la finalidad de tu wiki definida** con una entrevista guiada por el agente
(estructura inicial decidida), y un primer `git commit` hecho.

**Tiempo**: 20-25 min.

> ⚠️ **Importante**: este starter **no impone** una vertical. La estructura
> de carpetas, las plantillas activas y la política de `raw/` se deciden
> durante la *Entrevista de finalidad*, no vienen pre-pobladas. Esto es
> deliberado — el patrón LLM Wiki sirve para casos muy distintos (estudio,
> hobby, trabajo, investigación, equipo…), y forzar una división específica
> termina forzándote a meter contenido a calzador.

## Pasos

### 1. Clona o usa el starter como template

Si te lo han pasado como zip durante el taller, descomprímelo. Si vienes de
GitHub:

```sh
git clone https://github.com/CodigoSinSiesta/taller-llm-wiki-starter mi-wiki
cd mi-wiki
```

Después renombra la carpeta a algo personal (`mi-wiki` es solo un placeholder)
y reinicia el remote si vas a publicarlo:

```sh
git remote remove origin
# git remote add origin git@github.com:<tu-usuario>/<tu-repo>.git   # opcional, después
```

### 2. Abre el repo como vault en Obsidian

1. Abre Obsidian → **File → Open vault → Open folder as vault**.
2. Selecciona la carpeta `mi-wiki/`.
3. Acepta confiar en el vault si te lo pregunta.

Verás `raw/`, `templates/` y `wiki/` (este último con solo `index.md`,
`log.md` y `assets/`) en la barra lateral.

### 3. Activa los plugins recomendados

- **Templates** (core): Settings → *Core plugins* → activa **Templates** →
  Settings → *Templates* → *Template folder location* = `templates`.
- **Dataview** (community): Settings → *Community plugins* → desactiva el
  modo restringido → busca **Dataview** → instalar y activar.

Sin estos dos plugins el frontmatter funciona, pero pierdes la magia.

### 4. (Recomendado) Instala el Web Clipper en tu navegador

Web Clipper es la extensión oficial de Obsidian que clippea cualquier
artículo, paper o post de blog directamente a tu vault como markdown con
frontmatter ya formado. Es **el feed natural de `raw/`** — sin él, cada
ingesta empieza con un copy-paste manual.

Instálala desde [obsidian.md/clipper](https://obsidian.md/clipper) (Chrome,
Brave, Arc, Firefox, Safari, Edge, Vivaldi). Tras la instalación, en sus
ajustes:

1. Apunta el vault al repo que acabas de abrir (`mi-wiki/`).
2. **Default folder** = `raw/`. Así todo lo que clippes cae directamente en
   la bandeja de entrada lista para ingestar.
3. Configura un atajo de teclado (sugerencia: `Cmd/Ctrl+Shift+O`) para
   clippear sin tocar el ratón.

> Si tu wiki no se va a alimentar de internet (notas propias, hobby
> offline, transcripciones de voz…), puedes saltarte este paso.

### 5. Arranca tu agente

Ejemplos:

```sh
claude        # Claude Code
codex         # Codex CLI
opencode      # OpenCode
# o abre el chat de Copilot/Cursor en tu editor
```

### 6. ⭐ Entrevista de finalidad

Este es el paso clave. Pídele al agente literalmente:

> Lee `AGENTS.md` entero. Después hazme una *Entrevista de finalidad*: 5-7
> preguntas cortas para entender para qué voy a usar este wiki. Quiero que
> me preguntes por:
>
> 1. La finalidad principal (estudio, trabajo, hobby, investigación,
>    documentación de cliente/equipo, mezcla de varios…).
> 2. Qué tipos de fuentes voy a meter (artículos web, papers, vídeos,
>    transcripciones, libros, **notas propias, conversaciones de chat**,
>    screenshots…).
> 3. **Política de `raw/`**: ¿qué quiero que pases con los ficheros tras
>    ingestar? Las opciones son:
>    - *Conservar* (recomendado por defecto, ideal si voy a meter notas
>      propias o conversaciones que quiero mantener como archivo personal).
>    - *Archivar* (mover a `raw/_archived/<año>/`).
>    - *Eliminar* (solo si la fuente es externa y recuperable, p. ej. URLs
>      públicas).
>    Puedo también escoger una política mixta — p. ej. conservar todo
>    salvo cuando indique lo contrario en una ingesta concreta.
> 4. **Frontera humano / agente** (decisión arquitectónica):
>    ¿el agente puede tocar mis notas propias o solo el material que él
>    sintetiza? Tres opciones:
>    - **Vault único** (simple): un solo `wiki/` mezclado, el agente lo ve
>      todo. Recomendado si empiezas y tu corpus es <50 páginas o
>      mayoritariamente externas.
>    - **Dos vaults — firewall completo**: separas tus notas humanas en otro
>      repo distinto (este se queda como "LLM vault"). El agente nunca toca
>      lo humano. Recomendado si ya llevas un Zettelkasten / journaling y
>      quieres separación deontológica clara.
>    - **Mismo vault, namespace separado** (recomendado para casos mixtos):
>      `wiki/humano/` (solo lectura para el agente) + `wiki/llm/` (donde
>      sintetiza). Disciplina de namespace al crear cada página, pero un
>      solo repo que mantener.
> 5. Si hay subdominios o categorías obvias dentro de mi finalidad
>    (p. ej. si es estudio, qué asignaturas; si es trabajo, qué clientes o
>    proyectos; si es hobby, qué facetas).
> 6. Si hay alguna plantilla del catálogo `templates/opcionales/` que vaya
>    a usar mucho.
> 7. Cualquier convención propia que quiera mantener (idioma, naming, etc.).
>
> Cuando tengas mis respuestas, propóname:
>
> - **Qué subcarpetas** crear bajo `wiki/` (con nombres concretos basados en
>   mis respuestas, no genéricos). Si elegí *namespace separado*, anida bajo
>   `wiki/humano/` y `wiki/llm/`.
> - **Qué plantillas opcionales** mover desde `templates/opcionales/` a
>   `templates/` (si alguna). Si no hace falta ninguna, dilo.
> - **Qué política de `raw/`** dejarás registrada en `AGENTS.md`.
> - **Qué frontera humano/agente** dejarás registrada en `AGENTS.md`
>   (vault único / firewall completo / namespace separado).
> - **Cualquier ajuste** del vocabulario controlado de tags al inicio de
>   `templates/README.md`.
>
> No escribas nada todavía — solo el plan. Después de que lo apruebe, lo
> ejecutas y actualizas:
> - La sección *Propósito* de `AGENTS.md` con mi finalidad concreta.
> - La sección *Política de raw/* de `AGENTS.md` con la opción escogida.
> - La sección *Frontera humano/agente* de `AGENTS.md` con la opción
>   escogida (vault único, firewall completo o namespace separado) y, si
>   aplica firewall, el listado explícito de carpetas que NO debes tocar.
> - Borra todas las notas "Pendiente de rellenar" y la cita explicativa del
>   starter.
> Documéntalo todo en `wiki/log.md` como una entrada
> `## [YYYY-MM-DD] setup | Entrevista de finalidad`.

Responde a las preguntas. Itera el plan si algo no encaja:

> El subdominio "X" la verdad es que también lo cubre "Y", funde las dos
> carpetas.
>
> No quiero la plantilla "operativa" — yo no llevo roadmap formal.

Cuando estés conforme, dale luz verde:

> Adelante con el plan.

### 7. Primer commit

```sh
git add .
git commit -m "Setup inicial: AGENTS.md personalizado y estructura definida"
```

## Checklist

- [ ] Repo abierto como vault en Obsidian.
- [ ] Plugins Templates y Dataview activos.
- [ ] (Recomendado) Web Clipper instalado y apuntando a `raw/` del vault.
- [ ] *Entrevista de finalidad* completada con tu agente.
- [ ] `wiki/` tiene subcarpetas con nombres concretos a tu caso.
- [ ] `templates/` tiene activadas las plantillas que vas a usar.
- [ ] `AGENTS.md` con las secciones *Propósito*, *Política de raw/* y
      *Frontera humano/agente* rellenadas (sin las notas "Pendiente de
      rellenar").
- [ ] Entrada `setup | Entrevista de finalidad` en `wiki/log.md`.
- [ ] Commit inicial hecho.

## Salida esperada

Tu vault arrancado, `git log` con un commit por encima del setup inicial,
`AGENTS.md` que ya describe **tu** finalidad concreta, y una estructura de
carpetas + plantillas que encaja con cómo vas a usar el wiki — no genérica
ni heredada del starter.

Sigue con [02-primer-ingest.md](02-primer-ingest.md).
