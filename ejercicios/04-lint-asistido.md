# Ejercicio 4 — Lint asistido

**Objetivo**: ejecutar una auditoría con tu agente sobre tu wiki recién
montado y obtener un plan corto de correcciones priorizado.

**Tiempo**: 15 min.

**Disponible solo en la versión 120 min del taller** (en la versión 90 min se
deja como deberes).

## Pre-requisitos

- Ejercicios 1-3 terminados. El wiki tiene 3-5 páginas y un par de entradas
  en `log.md`.

## Pasos

### 1. Pídele a tu agente el lint

> Haz un lint del wiki. Reporta como lista numerada con soluciones
> sugeridas. Cubre:
>
> 1. Páginas huérfanas (sin enlaces entrantes desde otras páginas).
> 2. Conceptos mencionados en alguna página que merecerían su propia página.
> 3. Páginas sin frontmatter completo o con `tipo` que no coincide con la
>    carpeta.
> 4. Tags inconsistentes (singular vs plural, sinónimos, mayúsculas).
> 5. Citas a fuentes que no son la fuente original (p.ej. apuntan a un
>    fichero `raw/`, lo cual está prohibido).
> 6. Data gaps: huecos factuales (fecha, versión, autor, URL oficial) que se
>    podrían rellenar con búsqueda web. Propón las consultas concretas.
> 7. Preguntas abiertas que el wiki no responde y sugiere fuentes candidatas
>    para próximas ingestas.
>
> No corrijas nada todavía, solo reporta.

### 2. Decide qué arreglar ahora

Hay 3 categorías típicas:

- **Trivial**: tag mal escrito, falta `actualizado`, falta una línea en
  `index.md`. Pide a tu agente que lo corrija de una.
- **Estructural**: una página huérfana porque le falta entrar en un MOC, un
  concepto nuevo que merece página. Decide si lo haces ahora o lo dejas en
  `wiki/operativa/ideas-pendientes.md`.
- **Externo**: data gap rellenable solo con búsqueda. Anótalo como TODO.

### 3. Aplica las correcciones triviales

> Aplica las correcciones de los puntos 3 y 4 (frontmatter + tags). Para los
> demás, anótalos en `wiki/operativa/ideas-pendientes.md` como una lista de
> TODOs. Crea esa página desde `templates/operativa.md` si no existe.

### 4. Commit

```sh
git add .
git commit -m "Lint: corrijo frontmatter/tags y anoto pendientes"
```

## Checklist

- [ ] Reporte de lint en pantalla con lista numerada.
- [ ] Triviales aplicadas.
- [ ] `wiki/operativa/ideas-pendientes.md` con los pendientes estructurales y
      externos.
- [ ] Commit hecho.

## Por qué importa

El lint asistido es la **válvula de calidad** del wiki. Hazlo cada 2-4 semanas
o tras una ingesta grande. Sin él, el wiki acumula entropía silenciosa
(huérfanas, tags incoherentes, frontmatter incompleto) y termina siendo difícil
de consultar.

## Fin del taller

Tu wiki está vivo. La siguiente fase es la **ingesta semanal de 30 min** —
ver el README del repo. Buen viaje.
