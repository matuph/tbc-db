# Development and custom SQL

Set `DEV_UPDATES="YES"` in `InstallFullDB.config` to install these files automatically after the regular TBC-DB updates.

- `world/*.sql` is imported into the configured world database.
- `characters/*.sql` is imported into the configured characters database.
- SQL files directly below `dev/` and in other first-level folders retain the historical behaviour and are imported into the world database.

The generated `9000_custom_*.sql` bundles contain the complete custom module SQL and do not depend on MySQL `SOURCE` paths. Rebuild them after changing an authoritative file under `Custom/SQL/*/install/`:

```bash
./dev/build-custom-bundles.sh
```

The bundles currently include Hardcore, Training Dummies (TBC), Level58 Upgrade and Playertreff. The characters bundle contains the Hardcore character tables.
