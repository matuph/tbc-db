# TBC-DB – optionale Custom-Erweiterungen

Diese Dateien sind **nicht Bestandteil der normalen TBC-Datenbank**. Sie werden nur installiert, wenn der jeweilige Serverbetreiber sie ausdrücklich importiert.

## Playertreff

`9002_playertreff.sql` richtet den vorhandenen Playertreff ein und lädt zusätzlich die korrekten NPC-Flags.

Es verwendet bewusst `SOURCE Updates/9002_playertreff.sql;`, damit die bereits geprüfte und vollständige Playertreff-SQL nicht dupliziert und später auseinanderentwickelt wird. Die Datei muss aus dem Repository-Hauptverzeichnis mit dem MySQL-Client ausgeführt werden.

## Buffer

`9001_npc_buffer.sql` – Standard-Buffer NPC Entry `90001`.

`9003_premium_buffer.sql` – Premium-Buffbot Entry `90033`, Laufzeitpreis 5 Gold.

## Playertreff-NPCs

Die Playertreff-Erweiterung enthält:

- Dungeon-Set 1 / 2 / 3
- Rüstungshändler Level 1–70
- Waffenhändler
- Juwelier / Edelsteine / Ringe / Schmuck
- Taschenhändler
- Mount-Händler
- Gildenbankier
- Berufsmeister
- getrennte Materialhändler für die Berufe

## Installation

Beispiel aus dem Repository-Hauptverzeichnis:

```text
mysql -u mangos -p mangos < Custom/Optional/9001_npc_buffer.sql
mysql -u mangos -p mangos < Custom/Optional/9002_playertreff.sql
mysql -u mangos -p mangos < Custom/Optional/9003_premium_buffer.sql
```

Alternativ die Dateien einzeln über deinen bevorzugten MySQL/MariaDB-Client importieren.

Die NPCs werden absichtlich **nicht automatisch gespawnt**. Danach kann der GM beispielsweise `.npc add 90001` bzw. `.npc add 90033` verwenden.
