<!--
PLANTILLA PARA RAW/

Esta plantilla NO se usa con el plugin Templates. Documenta el formato
esperado en la bandeja de entrada `raw/`. Las fuentes en `raw/` son
**efímeras**: se ingestan, se registran en `wiki/log.md` y se eliminan.

Tres formas habituales de llegar a raw/:

1. **Obsidian Web Clipper** — pega un artículo o vídeo de YouTube desde el
   navegador. Trae frontmatter con `title`, `source`, `author`, `published`,
   `created`, `description`, `tags: [clippings]`. NO lo edites — la ingesta
   leerá `source` como fuente original.
2. **Drag & drop manual** — PDFs, decks, transcripts. El nombre del fichero
   debería incluir un identificador legible. Si no trae fuente original
   embebida, añade un comentario al inicio:

   <!-- fuente-original: https://... -->

3. **Imágenes / assets** — guárdalas en `raw/assets/<batch>/` y, si alguna
   debe quedar en el wiki, muévela a `wiki/assets/<batch>/` durante la
   ingesta.

Reglas:

- No edites el contenido de raw/, solo lee.
- Después de ingerir, ELIMINA el fichero de raw/ y deja constancia en log.md.
- En las páginas del wiki, NUNCA cites el fichero raw — cita la fuente
  externa real (URL, repo, libro).
-->
