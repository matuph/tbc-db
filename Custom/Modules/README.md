# Optional Flekz TBC modules

This directory mirrors the SQL shipped with the local CMaNGOS TBC modules. It is intentionally excluded from the normal TBC-DB update chain and must be imported explicitly.

Install world SQL from each selected module's `sql/install/world` directory. Hardcore additionally requires its `sql/install/characters/characters.sql` in the characters database. For TrainingDummies on TBC, use only `world_tbc.sql`.

The matching uninstall statements are under `sql/uninstall`. The authoritative runtime code and module documentation live in the Core repository under `src/modules/<module>`.

Synchronized against official `cmangos/tbc-db` master commit `da2de07e` on 2026-08-22.
