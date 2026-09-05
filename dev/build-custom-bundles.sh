#!/usr/bin/env bash

set -euo pipefail

REPO_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/.." && pwd -P)"
WORLD_OUTPUT="$REPO_DIR/dev/world/9000_custom_world.sql"
CHARACTERS_OUTPUT="$REPO_DIR/dev/characters/9000_custom_characters.sql"

mkdir -p "$(dirname "$WORLD_OUTPUT")" "$(dirname "$CHARACTERS_OUTPUT")"

write_bundle()
{
    local output="$1"
    local database="$2"
    shift 2

    {
        echo "-- Generated custom CMaNGOS TBC $database bundle."
        echo "-- Source files are listed before each section."
        echo "-- Regenerate with: ./dev/build-custom-bundles.sh"
        echo
        for source_file in "$@"; do
            echo "-- ============================================================================"
            echo "-- SOURCE: ${source_file#$REPO_DIR/}"
            echo "-- ============================================================================"
            cat "$source_file"
            echo
        done
    } > "$output"
}

write_bundle "$WORLD_OUTPUT" world \
    "$REPO_DIR/Custom/SQL/world/install/hardcore.sql" \
    "$REPO_DIR/Custom/SQL/world/install/trainingdummies_tbc.sql" \
    "$REPO_DIR/Custom/SQL/world/install/level58upgrade.sql" \
    "$REPO_DIR/Custom/SQL/world/install/playertreff.sql"

write_bundle "$CHARACTERS_OUTPUT" characters \
    "$REPO_DIR/Custom/SQL/characters/install/hardcore.sql"

echo "Created $WORLD_OUTPUT"
echo "Created $CHARACTERS_OUTPUT"
