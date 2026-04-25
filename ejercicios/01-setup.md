# Ejercicio 1 — Setup

**Objetivo**: dejar el repo abierto en Obsidian con los plugins correctos,
`AGENTS.md` personalizado a tu perfil, y un primer `git commit` hecho.

**Tiempo**: 15-20 min.

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

Verás la estructura `raw/`, `templates/`, `wiki/` en la barra lateral.

### 3. Activa los plugins recomendados

- **Templates** (core): Settings → *Core plugins* → activa **Templates** →
  Settings → *Templates* → *Template folder location* = `templates`.
- **Dataview** (community): Settings → *Community plugins* → desactiva el modo
  restringido → busca **Dataview** → instalar y activar.

Sin estos dos plugins el frontmatter funciona, pero pierdes la magia.

### 4. Personaliza `AGENTS.md`

Arranca tu agente en la raíz del repo. Ejemplos:

```sh
claude        # Claude Code
codex         # Codex CLI
opencode      # OpenCode
# o abre el chat de Copilot/Cursor en tu editor
```

Pídele literalmente:

> Lee `AGENTS.md` y la sección *Propósito*. Hazme 3-5 preguntas cortas para
> rellenar `<TU NOMBRE>`, `<TU ROL>` y los frentes del wiki. Cuando tengas
> las respuestas, edita `AGENTS.md` y borra esta misma cita explicativa del
> starter. No toques nada más.

Responde a las preguntas. El agente actualiza `AGENTS.md` con tu información.

> ℹ️ Si tu agente es Claude Code, también lee `CLAUDE.md` automáticamente —
> ese fichero solo contiene `@AGENTS.md`, así que importa el principal y no
> necesitas tocarlo. Si tu agente usa otra convención (p. ej. Cursor con
> `.cursor/rules/`), añade un puntero a `AGENTS.md` desde donde tu agente lo
> lea.

### 5. (Opcional) Renombra `comunidad/` si no aplica

Si tu wiki no es comunitario, dile a tu agente:

> Renombra `wiki/comunidad/` a `wiki/<dominio>/` y actualiza las referencias
> en `wiki/index.md`, `AGENTS.md` y `templates/comunidad.md` (incluido el
> `tipo:` en su frontmatter). Documéntalo en `wiki/log.md` como una entrada
> `meta`.

Sustituye `<dominio>` por lo que aplique (`cliente`, `tesis`, `producto`,
`hacienda`…). Si dudas, déjalo como está y renombra más adelante.

### 6. Primer commit

```sh
git add .
git commit -m "Personalizo AGENTS.md y arranco mi wiki"
```

## Checklist

- [ ] Repo abierto como vault en Obsidian.
- [ ] Plugins Templates y Dataview activos.
- [ ] `AGENTS.md` sin la cita explicativa del starter y con tu información.
- [ ] (Opcional) `comunidad/` renombrada si no aplica.
- [ ] Commit inicial hecho.

## Salida esperada

Tu vault arrancado, `git log` con un commit por encima del setup inicial, y
`AGENTS.md` que ya habla de **ti** y no del placeholder.

Sigue con [02-primer-ingest.md](02-primer-ingest.md).
