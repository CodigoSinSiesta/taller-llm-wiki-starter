<!--
PLANTILLA PARA RAW/

Esta plantilla NO se usa con el plugin Templates. Documenta el formato
esperado en la bandeja de entrada `raw/` y la política de qué hacer con los
ficheros tras ingestar.

Formas habituales de llegar a raw/:

1. **Obsidian Web Clipper** — pega un artículo o vídeo de YouTube desde el
   navegador. Trae frontmatter con `title`, `source`, `author`, `published`,
   `created`, `description`, `tags: [clippings]`. NO lo edites — la ingesta
   leerá `source` como fuente original.

2. **Drag & drop manual** — PDFs, decks, transcripts. El nombre del fichero
   debería incluir un identificador legible. Si no trae fuente original
   embebida, añade un comentario al inicio:

   <!-- fuente-original: https://... -->

3. **Notas propias / conversaciones** — apuntes manuscritos, exports de
   chats, transcripciones de llamadas, ideas en bruto. **No tienen fuente
   externa**: el propio fichero raw es la fuente. Suele tener sentido
   conservarlos como archivo personal (ver Política de raw/).

4. **Imágenes / assets** — guárdalas en `raw/assets/<batch>/` y, si alguna
   debe quedar en el wiki, muévela a `wiki/assets/<batch>/` durante la
   ingesta.

Política de raw/ (decidida en la Entrevista de finalidad, ver AGENTS.md):

- **Conservar (recomendado por defecto)** — tras ingestar, el fichero raw
  se queda donde está. Útil para notas propias, transcripciones únicas,
  PDFs que pueden necesitar reanalizarse. La fuente puede ser el propio
  fichero raw cuando la producción es propia.

- **Archivar** — tras ingestar, el fichero se mueve a `raw/_archived/<año>/`
  (o el patrón que decidáis). Lo mantiene accesible pero fuera del flujo
  activo.

- **Eliminar (efímero)** — tras ingestar, el fichero se borra. Solo
  apropiado cuando la fuente real es **externa y recuperable** (URL pública,
  repo, libro) y el fichero raw era solo un contenedor de paso. **Nunca**
  para notas propias o transcripciones únicas.

Reglas que se mantienen siempre:

- No se edita el contenido de raw/, solo se lee.
- En las páginas del wiki, cuando la fuente sea **externa** (URL/repo/libro),
  cita esa fuente original — nunca el fichero raw — incluso si conservas el
  raw como archivo personal.
- En las páginas del wiki, cuando la fuente sea el **propio fichero raw**
  (notas propias), cita el fichero raw como fuente solo si la política es
  conservar o archivar (porque el fichero seguirá existiendo).
- El log.md siempre registra qué fichero raw produjo qué páginas.
-->
