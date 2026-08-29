# Central custom SQL package

All authoritative custom SQL files are stored below this directory and are
separated by target database:

- `world/install` and `world/uninstall`
- `characters/install` and `characters/uninstall`
- `world/optional` for legacy or non-TBC files that are not installed by default

Run commands from the TBC-DB repository root. Install the world package:

    mysql -u mangos -p mangos < Custom/SQL/world/install_all.sql

Install the characters package:

    mysql -u mangos -p characters < Custom/SQL/characters/install_all.sql

For removal, run `characters/uninstall_all.sql` and
`world/uninstall_all.sql`. The old paths under `Custom/Modules` and
`Custom/Optional` remain as compatibility wrappers and contain no duplicated
module SQL.

The files in `world/optional` are deliberately excluded from
`install_all.sql`: the Classic training-dummy variant is not valid for TBC,
and the legacy buffer/flag files target an older creature-template layout.
