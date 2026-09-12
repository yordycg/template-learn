# Status — Cockpit Operativo

> **Estado operativo SOLO.** Conceptos → Obsidian · Historia → [`session-log.md`](session-log.md). Iniciar cada sesión con: `status.md` + `git log -1`.

## Cómo operar este archivo
- "¿Qué toca hoy?" → Se responde con la fila de hoy de *Current Week* + el **Contrato de la Kata Diaria** de abajo.
- Al cierre de sesión: `[ ]` → `[x]` en la fila del día + entrada al `session-log.md` + resumen en Historial.
- Al cerrar la semana (Dom): archivar las filas en `session-log.md`, abrir la siguiente semana y dejar resumen de 2 líneas.
- **Code-First:** Cada día empieza con el reto en código. El recurso just-in-time se consulta SOLO si el código falla o falta la firma.

---

## Contrato diario de respuesta (obligatorio para la IA)

Al pedir "¿qué toca hoy?", responder siempre con **La Kata del Día (Reto Único Ejecutable)**:
1. **Árbol de contexto:** Cadena jerárquica (ej. `Área → Módulo → Concepto → Meta`).
2. **La Kata del Día (Reto Principal):** Objetivo preciso en 1 oración + archivo a crear/editar con ruta exacta + comando de compilación estricto (`gcc -Wall -Wextra -Werror -pedantic -g -fsanitize=address,undefined` o comando del runtime).
3. **Especificación Técnica (Contrato de Aceptación):** Syscalls/APIs clave requeridas + flujo de ejecución esperado + salida esperada en terminal y código de retorno (`echo $?`) + comando de prueba en 1 línea.
4. **Recurso Just-in-Time (JIT):** Nombre + link, se abre **SOLO** si el código falla o falta la firma.
5. **Plantilla de comentarios estructurada:** Cabecera con `@title`, `@phase`, `@learn`, `@open_questions` (dudas que la IA resuelve) y `@connect_with` (enlaces MOC).
6. *(Opcional)* **Stretch Goal (Romper el Código):** 1 caso de borde para experimentar solo tras superar la Kata principal.

> **Reglas de Interacción:** Single-Focus (1 sola pregunta a la vez). Si el desarrollador modifica código o ejecuta comandos, el código **ES** la respuesta (anular preguntas previas sin acumular deuda). Diagramas en el chat en **cajas ASCII nativas**; el Zettel de Obsidian lo genera la IA al cierre con sintaxis Mermaid.

---

## Estado actual — Semana 1

> Enfoque de la semana: [Definir objetivo de la semana]

| Día | Tema | Archivo (intento code-first) | Recurso JIT | Zettel al cierre (IA) | Estado |
| :--- | :--- | :--- | :--- | :--- | :--- |
| Lun 1 | **[Tema Día 1]** | `exercises/01-[nombre].c` | [Link / Man page] | `[Tema] - [Ámbito].md` | [ ] |
| Mar 2 | **[Tema Día 2]** | `exercises/02-[nombre].c` | [Link / Man page] | `[Tema] - [Ámbito].md` | [ ] |
| Mié 3 | **[Tema Día 3]** | `exercises/03-[nombre].c` | [Link / Man page] | `[Tema] - [Ámbito].md` | [ ] |
| Jue 4 | **[Tema Día 4]** | `exercises/04-[nombre].c` | [Link / Man page] | `[Tema] - [Ámbito].md` | [ ] |
| Vie 5 | **[Refuerzo / Gotchas]** | `exercises/05-[nombre].c` | [Link / Man page] | `[Tema] - [Ámbito].md` | [ ] |
| Sáb 6 | **[Milestone / Proyecto]** | `projects/[nombre]/` | [Link / Man page] | `[Tema] - [Ámbito].md` | [ ] |
| Dom 7 | Cierre semanal + Tick | — | — | Revisión Zettels + abrir S2 | [ ] |

- **Blockers:** Ninguno.

---

## Próxima sesión — TODO
- **Día 1 — [Tema de Inicio]:** [Descripción breve del hito inicial].

---

## Historial
- (Sin sesiones previas — repositorio recién inicializado).
