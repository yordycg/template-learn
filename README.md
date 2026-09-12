# Learning Cockpit Template (Pilar 1: Learn)

Plantilla oficial para repositorios de estudio y asimilación técnica guiada por IA en la arquitectura de 2 Pilares.

## 🏛️ Filosofía
- **Code-First:** Produce código antes de consumir teoría; el recurso just-in-time se abre solo si el intento falla.
- **Inverted Project-Based Learning (PBL):** De lunes a viernes se dominan conceptos diarios para desbloquear el proyecto integrador en `projects/` los sábados.
- **Notas en Código (`@annotations`):** El código es la fuente de verdad. Las anotaciones estructuradas se extraen automáticamente a Obsidian al cerrar sesión.
- **Cajas ASCII en Terminal:** Grafos y dependencias visuales legibles directamente en el CLI.

## 📂 Estructura del Repositorio
```text
├── 1-basics/                                # Nivel inicial o Bloque Temático
│   └── 01-starter-concept/                  # Unidad atómica de concepto
│       ├── 1-concept-demo.c                 # Código de estudio con cabecera @annotations
│       └── exercises/                       # Katas complementarias y stretch goals del concepto
│           └── 01-drill.c
├── 2-advanced/                              # Nivel intermedio
├── 3-expert/                                # Nivel avanzado
├── projects/                                # Inverted PBL (milestone de integración)
│   └── starter-project/                     # Proyecto construido semana a semana
│       ├── docs/
│       └── src/
├── docs/
│   └── roadmap.md                           # Roadmap estratégico de la disciplina
├── .agents/
│   └── learnings.md                         # Memoria cross-cliente persistente
├── AGENTS.md                                # Reglas de mentoría, Single-Focus y anotaciones
├── status.md                                # Panel operativo semanal y Contrato de la Kata
├── session-log.md                           # Historial permanente de sesiones
├── calendario.md                            # Ritmo y bloques estacionales
└── README.md
```

## 🚀 Cómo operar con IA en este repositorio
1. Abre tu terminal en este directorio (`cd <repo>`).
2. Inicia tu agente preferido (`pi`, `opencode` o `agy`).
3. Pregunta: **"¿Qué toca hoy?"** $\to$ El agente leerá `status.md` y te entregará **La Kata del Día**.
4. Escribe tu intento code-first en el archivo indicado dentro de la carpeta del concepto.
5. Documenta tus descubrimientos y dudas en la cabecera estructurada (`@title`, `@learn`, `@open_questions`, `@connect_with`).
6. Cierra la sesión: el agente responderá tus `@open_questions`, registrará el avance en `status.md` / `session-log.md` y generará la nota permanente en tu bóveda de Obsidian Zettelkasten.
