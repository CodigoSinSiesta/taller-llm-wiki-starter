# Ejercicio 3 — Pregunta y archiva

**Objetivo**: usar el wiki como base de respuesta a una pregunta tuya, y
después archivar la respuesta como página nueva o sección. Es el segundo
mecanismo de crecimiento del wiki, al lado de la ingesta.

Funciona indistintamente con cualquier agente (Claude Code, Codex, OpenCode,
Copilot, Cursor…).

**Tiempo**: 10-15 min.

## Pre-requisitos

- Ejercicios 1 y 2 terminados (al menos 1 página creada en el Ejercicio 2,
  en las subcarpetas que definiste en tu *Entrevista de finalidad*).

## Pasos

### 1. Pregunta algo cuya respuesta esté parcialmente en el wiki

Ejemplo (adáptalo a tu dominio):

> ¿Cuándo recomiendas usar `<concepto-X>` y cuándo no? Mira primero
> `wiki/index.md` y las páginas que creé en el ejercicio anterior. Si la
> respuesta no está completa en el wiki, aporta lo que falta razonando con
> tu conocimiento general, pero **señala qué partes son del wiki y qué
> partes vienen de fuera**.

### 2. Lee la respuesta y aporta contexto propio

Probablemente el agente responda combinando lo que está en tus páginas con
generalidades. Aporta tú algo que **sí** sabes y que no está en el wiki:

> Mi caso real es que en `<contexto>` lo uso así: `<descripción>`. Eso no
> está en ninguna página. ¿Cómo lo archivarías?

### 3. Archiva la respuesta

> Esa respuesta junto con mi caso es valiosa. Propóname dónde guardarla:
> ¿página nueva, o sección de una existente? Si es sección, dime de qué
> página y qué encabezado pondrías. Si es página nueva, dime qué `tipo` y
> qué plantilla usarías.

### 4. Aplica la decisión

> Adelante con tu propuesta. Recuerda actualizar `wiki/index.md` (si es
> página nueva) y añadir una entrada `## [YYYY-MM-DD] meta | Archivado de
> respuesta: …` a `wiki/log.md`.



### 5. Commit

```sh
git add .
git commit -m "Archiva respuesta sobre <tema>"
```

## Checklist

- [ ] Pregunta hecha al wiki con respuesta clara.
- [ ] Aportaste al menos un dato propio que no estaba.
- [ ] Decidiste página nueva vs sección razonando con tu agente.
- [ ] Cambio aplicado y commit hecho.
- [ ] Entrada `meta` en `wiki/log.md`.

## Por qué importa

El wiki **no solo crece por ingesta de `raw/`**. Cada conversación útil con
tu agente es conocimiento candidato a guardarse. Si no lo archivas, lo pierdes
en la próxima sesión. Convierte el archivado en costumbre desde el principio.

Sigue (versión 120 min) con [04-lint-asistido.md](04-lint-asistido.md), o da
el taller por hecho aquí.
