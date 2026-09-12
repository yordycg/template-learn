# Justfile — Learning Cockpit (Pilar 1: Learn)
# Automatización ligera y ergonómica para el desarrollador y los agentes de IA.

set shell := ["bash", "-uc"]

default:
    @just --list

# Muestra el panel operativo y la semana actual de status.md
status:
    @head -n 50 status.md

# Compila y ejecuta el archivo con flags estrictos según su lenguaje
run FILE:
    #!/usr/bin/env bash
    set -euo pipefail
    FILE="{{FILE}}"
    if [ ! -f "$FILE" ]; then
        echo "Error: archivo '$FILE' no encontrado."
        exit 1
    fi
    mkdir -p build
    case "$FILE" in
        *.c)
            echo "==> Compilando C con ASan + UBSan..."
            gcc -Wall -Wextra -Werror -pedantic -g -fsanitize=address,undefined "$FILE" -o build/out
            echo "==> Ejecutando build/out..."
            ./build/out
            ;;
        *.go)
            echo "==> Ejecutando Go con race detector..."
            go run -race "$FILE"
            ;;
        *.py)
            echo "==> Ejecutando Python..."
            python3 "$FILE"
            ;;
        *.rs)
            echo "==> Compilando Rust con debug symbols..."
            rustc -g "$FILE" -o build/out
            echo "==> Ejecutando build/out..."
            ./build/out
            ;;
        *.sql)
            echo "==> Mostrando script SQL..."
            cat "$FILE"
            ;;
        *)
            echo "Extensión no reconocida para ejecución automática: $FILE"
            exit 1
            ;;
    esac

# Ejecuta el archivo y reporta el código de retorno exacto ($?)
test FILE:
    #!/usr/bin/env bash
    set -euo pipefail
    FILE="{{FILE}}"
    echo "==> Testeando $FILE..."
    just run "$FILE"
    RET=$?
    echo "==> Código de retorno (exit code): $RET"
    exit $RET

# Comprobación de sintaxis / análisis estático rápido
check FILE:
    #!/usr/bin/env bash
    set -euo pipefail
    FILE="{{FILE}}"
    case "$FILE" in
        *.c)
            gcc -fsyntax-only -Wall -Wextra -Werror -pedantic "$FILE"
            echo "✓ Sintaxis C correcta."
            ;;
        *.go)
            go vet "$FILE"
            echo "✓ Sintaxis Go correcta."
            ;;
        *.py)
            python3 -m py_compile "$FILE"
            echo "✓ Sintaxis Python correcta."
            ;;
        *)
            echo "No hay linter configurado para este tipo de archivo."
            ;;
    esac

# Limpia los binarios y artefactos generados en build/
clean:
    @rm -rf build/ *.out
    @echo "✓ Artefactos de compilación eliminados."
