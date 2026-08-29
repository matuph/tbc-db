# Playertreff module

Install the world SQL from the repository root:

    mysql -u mangos -p mangos < Custom/Modules/playertreff/sql/install/world/playertreff.sql

The module creates service NPC templates but does not force a spawn location.
Place the desired NPCs with `.npc add <entry>`.

Equipment vendors:

- 90013-90017: compatible general equipment vendors
- 90063-90066: one-hand, two-hand, ranged and caster/off-hand weapons
- 90067-90075: armor from head through boots, wrists, gloves and cloaks
- 90076-90079: rings, necklaces, trinkets, shields and off-hands
- 90080: strong existing items that can genuinely be equipped at level 1

The module does not lower item requirements or create fake item IDs. Vendor
contents are selected from the installed TBC `item_template` table, so missing
items cannot create broken vendor rows. Each dedicated inventory is capped at
250 entries for the TBC client vendor-list limit.

Uninstall with:

    mysql -u mangos -p mangos < Custom/Modules/playertreff/sql/uninstall/world/playertreff.sql
