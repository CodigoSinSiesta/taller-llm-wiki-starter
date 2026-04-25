# Ejercicio 1 — Setup

**Objetivo**: dejar el repo abierto en Obsidian con los plugins correctos,
`CLAUDE.md` personalizado a tu perfil, y un primer `git commit` hecho.

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

### 4. Personaliza `CLAUDE.md`

Lanza Claude Code en la raíz del repo:

```sh
claude
```

Pídele literalmente:

> Lee `CLAUDE.md` y la sección *Propósito*. Hazme 3-5 preguntas cortas para
> rellenar `<TU NOMBRE>`, `<TU ROL>` y los frentes del wiki. Cuando tenga las
> respuestas, edita `CLAUDE.md` y borra esta misma cita explicativa del
> starter. No toques nada más.

Responde a las preguntas. Claude actualiza `CLAUDE.md` con tu información.

### 5. (Opcional) Renombra `comunidad/` si no aplica

Si tu wiki no es comunitario, dile a Claude:

> Renombra `wiki/comunidad/` a `wiki/<dominio>/` y actualiza las referencias
> en `wiki/index.md`, `CLAUDE.md` y `templates/comunidad.md` (incluido el
> `tipo:` en su frontmatter). Documéntalo en `wiki/log.md` como una entrada
> `meta`.

Sustituye `<dominio>` por lo que aplique (`cliente`, `tesis`, `producto`,
`hacienda`…). Si dudas, déjalo como está y renombra más adelante.

### 6. Primer commit

```sh
git add .
git commit -m "Personalizo CLAUDE.md y arranco mi wiki"
```

## Checklist

- [ ] Repo abierto como vault en Obsidian.
- [ ] Plugins Templates y Dataview activos.
- [ ] `CLAUDE.md` sin la cita explicativa del starter y con tu información.
- [ ] (Opcional) `comunidad/` renombrada si no aplica.
- [ ] Commit inicial hecho.

## Salida esperada

Tu vault arrancado, `git log` con un commit por encima del setup inicial, y
`CLAUDE.md` que ya habla de **ti** y no del placeholder.

Sigue con [02-primer-ingest.md](02-primer-ingest.md).
