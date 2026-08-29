# Optional Flekz TBC modules

This directory mirrors the SQL shipped with the local CMaNGOS TBC modules. It is intentionally excluded from the normal TBC-DB update chain and must be imported explicitly.

The authoritative SQL is centralized under `Custom/SQL` and separated into
`world` and `characters`. Install all selected TBC modules with the two
`install_all.sql` files documented in `Custom/SQL/README.md`.

The former module paths remain as compatibility wrappers. Hardcore additionally
requires the characters package. The Classic TrainingDummies SQL is optional
and is never loaded by the TBC aggregate installer.

The matching uninstall statements are under `sql/uninstall`. The authoritative runtime code and module documentation live in the Core repository under `src/modules/<module>`.

Synchronized against official `cmangos/tbc-db` master commit `da2de07e` on 2026-08-22.
