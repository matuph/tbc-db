-- Generated custom CMaNGOS TBC world bundle.
-- Source files are listed before each section.
-- Regenerate with: ./dev/build-custom-bundles.sh

-- ============================================================================
-- SOURCE: Custom/SQL/world/install/hardcore.sql
-- ============================================================================
DELETE FROM gameobject_template WHERE `type`=2 AND `CustomData1`=3643;

SET @Entry := 190011;

DELETE FROM `creature_template` WHERE `entry` = @Entry;
INSERT INTO `creature_template` (`entry`, `DisplayId1`, `DisplayIdProbability1`, `name`, `subname`, `GossipMenuId`, `minlevel`, `maxlevel`, `faction`, `NpcFlags`, `scale`, `rank`, `DamageSchool`, `MeleeBaseAttackTime`, `RangedBaseAttackTime`, `unitClass`, `unitFlags`, `CreatureType`, `CreatureTypeFlags`, `lootid`, `PickpocketLootId`, `SkinningLootId`, `AIName`, `MovementType`, `RacialLeader`, `RegenerateStats`, `MechanicImmuneMask`, `ExtraFlags`) VALUES
(@Entry, 1403, 100, "\"Masochist\" Pete", "Challenge Advisor", 0, 60, 60, 35, 1, 1, 0, 0, 2000, 0, 1, 0, 7, 138936390, 0, 0, 0, '', 0, 0, 1, 0, 0);

DELETE FROM `locales_creature` WHERE `entry` = @Entry;
INSERT INTO `locales_creature` (`entry`, `name_loc6`, `subname_loc6`) VALUES (@Entry, "Pedro \"El Masoca\"", 'Asesor de Desafios');

DELETE FROM `creature` WHERE `id` = @Entry;
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES (@Entry, 0, 1, -8999.00000000000000000000, 851.19100000000000000000, 29.62100000000000000000, 3.88538000000000000000, 25, 25, 0, 0);
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES (@Entry, 1, 1, 1467.40000000000000000000, -4226.33000000000000000000, 58.99390000000000000000, 1.19063000000000000000, 25, 25, 0, 0);
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES (@Entry, 0, 1, -8903.58000000000000000000, -108.40100000000000000000, 81.84860000000000000000, 4.08677000000000000000, 25, 25, 0, 0);
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES (@Entry, 0, 1, -6213.26000000000000000000, 330.66400000000000000000, 383.71900000000000000000, 2.89842000000000000000, 25, 25, 0, 0);
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES (@Entry, 1, 1, 10327.10000000000000000000, 822.52100000000000000000, 1326.43000000000000000000, 2.53681000000000000000, 25, 25, 0, 0);
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES (@Entry, 1, 1, -638.98100000000000000000, -4227.08000000000000000000, 38.13420000000000000000, 5.47014000000000000000, 25, 25, 0, 0);
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES (@Entry, 0, 1, 1859.94000000000000000000, 1560.67000000000000000000, 99.07910000000000000000, 1.57723000000000000000, 25, 25, 0, 0);
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES (@Entry, 1, 1, -2882.11000000000000000000, -277.04500000000000000000, 53.91540000000000000000, 2.37644000000000000000, 25, 25, 0, 0);

SET @TEXT_ID := 50900;
DELETE FROM `npc_text` WHERE `ID` BETWEEN @TEXT_ID AND @TEXT_ID+16;
INSERT INTO `npc_text` (`ID`, `text0_0`) VALUES
(@TEXT_ID,    "Ahoy, $N. If you are looking for a challenge you have come to the right place. Tell me, what challenge are you interested in?"),
(@TEXT_ID+1,  "Appologies $N. I can't provide you with any challenges at the moment."),
(@TEXT_ID+2,  "Oh, the hardcore challenge you say? I thought you'd never ask... If you accept this challenge, it means you will only have one life and if you die, that's it, no more retries. Are you up for it?"),
(@TEXT_ID+3,  "Hmm, the drop loot challenge? This challenge will make you drop some of your belongings every time you die, including gear and gold. What do you say?"),
(@TEXT_ID+4,  "Ah, the classic lose experience challenge. This challenge will make you lose some experience every time you die, and if you die enough you can even lose levels. Interested?"),
(@TEXT_ID+5,  "The self found challenge... I see you are a lone wolf like me. Just to clarify, this means you won't be able to use any help from any other adventurer, unless they are in the same challenge as you. Ready for it?"),
(@TEXT_ID+6,  "Hold your horses cowboy! It seems like your journey has already taken its course. To start this challenge you must speak with me with a fresh start, if you know what I mean..."),
(@TEXT_ID+7,  "I know you are excited about this challenge, but you seem like you already accepted it. What do you want, to double accept it?"),
(@TEXT_ID+8,  "Hahaha! That's what I'm talking about! Good luck! You will need it..."),
(@TEXT_ID+9,  "Oh, so you don’t want people attacking you during the challenge? That’s cute... But hey, who am I to judge..."),
(@TEXT_ID+10, "All right then... Consider it done. Careful not to break a nail out there."),
(@TEXT_ID+11, "Are you sure? You won't be able to retake the challenge if you drop it now."),
(@TEXT_ID+12, "Oh! That is such a relieve! I was wondering how long were you going to keep joking around..."),
(@TEXT_ID+13, "All done! Enemies will be able to attack you now."),
(@TEXT_ID+14, "All done! You are no longer doing the challenge."),
(@TEXT_ID+15, "Which XP rate would you like to have?"),
(@TEXT_ID+16, "All done! You xp rate has been changed.");

DELETE FROM `locales_npc_text` WHERE `entry` BETWEEN @TEXT_ID AND @TEXT_ID+14;
INSERT INTO `locales_npc_text` (`entry`, `text0_0_loc6`) VALUES
(@TEXT_ID,    "¡Hola, $N! Si estas buscando un reto, estás en el lugar indicado. Dime, ¿qué reto te interesa?"),
(@TEXT_ID+1,  "Mis disculpas $N. No tengo ningun desafío disponible en estos momentos."),
(@TEXT_ID+2,  "¿El desafío hardcore dices? Creí que nunca me lo preguntarías... Si aceptas este desafío, significa que solo tendrás una vida y, si mueres, se acabó, no habrá más reintentos. ¿Te animas?"),
(@TEXT_ID+3,  "Mmm, ¿el desafío de perder posesiones? Este desafío te hará soltar algunas de tus pertenencias cada vez que mueras, incluyendo equipo y oro. ¿Qué me dices?"),
(@TEXT_ID+4,  "Ah, el clásico desafío de perder experiencia. Este desafío te hará perder experiencia cada vez que mueras, y si mueres lo suficiente, incluso puedes perder niveles. ¿Te interesa?"),
(@TEXT_ID+5,  "El desafío del lobo solitario... Supongo que eres de los que prefiere ir solo que mal acompañado, eh?. Solo para aclarar, esto significa que no podrás usar la ayuda de ningún otro aventurero, a menos que esté en el mismo desafío que tú. ¿Estas listo?"),
(@TEXT_ID+6,  "¡Calma, vaquero! Parece que tu viaje ya ha tomado su curso. Para empezar este reto, debes hablar conmigo desde el principio, si sabes a que me refiero..."),
(@TEXT_ID+7,  "Sé que estás entusiasmado con este reto, pero parece que ya lo has aceptado. ¿Qué quieres, aceptarlo dos veces?"),
(@TEXT_ID+8,  "¡Jajaja! ¡Eso es lo que queria escuchar! ¡Mucha suerte! La necesitarás..."),
(@TEXT_ID+9,  "¿Ah, entonces no quieres que otras personas te ataquen durante el desafío? Qué monada... Pero bueno, ¿quién soy yo para juzgar?"),
(@TEXT_ID+10, "De acuerdo, ya estas listo. Ve con cuidado por ahi, no vaya a ser que te rompas una uña."),
(@TEXT_ID+11, "¿Estas seguro? No podras retomar el desafío si lo terminas ahora."),
(@TEXT_ID+12, "Ah! Que alivio! Ya estaba pensando que de verdad ibas en serio..."),
(@TEXT_ID+13, "¡Listo! Los enemigos podrán combatir contigo ahora."),
(@TEXT_ID+14, "¡Listo! Ya no estas realizando el desafío."),
(@TEXT_ID+15, "¿Que ratio de XP te gustaria tener?"),
(@TEXT_ID+16, "¡Listo! He cambiado tu ratio de XP");

SET @STRING_ENTRY := 12200;
DELETE FROM `mangos_string` WHERE `entry` BETWEEN @STRING_ENTRY AND @STRING_ENTRY+14;
INSERT INTO `mangos_string` (`entry`, `content_default`, `content_loc6`) VALUES
(@STRING_ENTRY,    "I'm interested in the hardcore challenge", "Estoy interesado en el desafío hardcore"),
(@STRING_ENTRY+1,  "I would like to stop doing the hardcore challenge", "Me gustaria terminar el desafío hardcore"),
(@STRING_ENTRY+2,  "I'm interested in the drop loot challenge", 'Estoy interesado en el desafío de perder posesiones'),
(@STRING_ENTRY+3,  "I would like to stop doing the drop loot challenge", 'Me gustaria terminar el desafío de perder posesiones'),
(@STRING_ENTRY+4,  "I'm interested in the lose experience challenge", 'Estoy interesado en el desafío de perder experiencia'),
(@STRING_ENTRY+5,  "I would like to stop doing the lose experience challenge", 'Me gustaria terminar el desafío de perder experiencia'),
(@STRING_ENTRY+6,  "I'm interested in the self found challenge", 'Estoy interesado en el desafío del lobo solitario'),
(@STRING_ENTRY+7,  "I would like to stop doing the self found challenge", 'Me gustaria terminar el desafío del lobo solitario'),
(@STRING_ENTRY+8,  "I would like to change my xp rate", 'Me gustaria cambiar el ratio de XP'),
(@STRING_ENTRY+9,  "I accept the challenge!", '¡Acepto el desafío!'),
(@STRING_ENTRY+10,  "Maybe later...", 'Quizas mas tarde...'),
(@STRING_ENTRY+11, "I would like to disable pvp fights", 'Me gustaria desactivar el combate pvp'),
(@STRING_ENTRY+12, "I would like to enable pvp fights", 'Me gustaria activat el combate pvp'),
(@STRING_ENTRY+13, "Yes, please!", '¡Si, por favor!'),
(@STRING_ENTRY+14, "Maybe not...", 'Quizas no...');

SET @START_SPELL_ID := 33500;
SET @END_SPELL_ID := @START_SPELL_ID+1;
DELETE FROM `spell_template` WHERE `id` BETWEEN @START_SPELL_ID AND @END_SPELL_ID;

-- TBC-DB Full_DB can still use the legacy full Spell.dbc schema, while a
-- migrated Core database uses the compact server-side spell override schema.
-- Detect the installed layout and create the same permanent dummy auras in it.
SET @COMPACT_SPELL_SCHEMA := (
    SELECT COUNT(*) FROM `information_schema`.`COLUMNS`
    WHERE `TABLE_SCHEMA` = DATABASE()
      AND `TABLE_NAME` = 'spell_template'
      AND `COLUMN_NAME` = 'proc_flags'
);
SET @HARDCORE_SPELL_SQL := IF(@COMPACT_SPELL_SCHEMA > 0,
    'INSERT INTO `spell_template` (`id`,`proc_flags`,`proc_chance`,`duration_index`,`effect0`,`effect0_implicit_target_a`,`effect0_radius_idx`,`effect0_apply_aura_name`,`effect0_misc_value`,`effect0_misc_value_b`,`effect0_trigger_spell`,`comments`) VALUES (33500,0,101,21,6,1,0,4,0,0,0,''Hardcore Challenge''),(33501,0,101,21,6,1,0,4,0,0,0,''Self Found Challenge'')',
    'INSERT INTO `spell_template` (`Id`,`Attributes`,`AttributesEx3`,`ProcFlags`,`ProcChance`,`BaseLevel`,`SpellLevel`,`DurationIndex`,`RangeIndex`,`EquippedItemClass`,`EquippedItemSubClassMask`,`Effect1`,`EffectDieSides1`,`EffectBaseDice1`,`EffectImplicitTargetA1`,`EffectApplyAuraName1`,`SpellVisual`,`SpellIconID`,`SpellName`,`DmgMultiplier1`,`DmgMultiplier2`,`DmgMultiplier3`,`SchoolMask`,`IsServerSide`,`AttributesServerside`) VALUES (33500,2147483648,1048576,0,101,1,1,21,13,-1,-1,6,1,1,1,4,222,61,''Hardcore Challenge'',1,1,1,1,1,0),(33501,2147483648,1048576,0,101,1,1,21,13,-1,-1,6,1,1,1,4,222,1573,''Self Found Challenge'',1,1,1,1,1,0)'
);
PREPARE hardcore_spell_stmt FROM @HARDCORE_SPELL_SQL;
EXECUTE hardcore_spell_stmt;
DEALLOCATE PREPARE hardcore_spell_stmt;

-- ============================================================================
-- SOURCE: Custom/SQL/world/install/trainingdummies_tbc.sql
-- ============================================================================
DELETE FROM creature_template WHERE entry IN (190013, 190014, 190015);
INSERT INTO creature_template (Entry, Name, SubName, IconName, MinLevel, MaxLevel, HeroicEntry, DisplayId1, DisplayIdProbability1, Faction, Scale, Family, CreatureType, InhabitType, RegenerateStats, RacialLeader, NpcFlags, UnitFlags, DynamicFlags, ExtraFlags, CreatureTypeFlags, SpeedWalk, SpeedRun, Detection, CallForHelp, Pursuit, Leash, Timeout, UnitClass, `Rank`, Expansion, HealthMultiplier, PowerMultiplier, DamageMultiplier, DamageVariance, ArmorMultiplier, ExperienceMultiplier, MinLevelHealth, MaxLevelHealth, MinLevelMana, MaxLevelMana, MinMeleeDmg, MaxMeleeDmg, MinRangedDmg, MaxRangedDmg, Armor, MeleeAttackPower, RangedAttackPower, MeleeBaseAttackTime, RangedBaseAttackTime, DamageSchool, MinLootGold, MaxLootGold, LootId, PickpocketLootId, SkinningLootId, KillCredit1, KillCredit2, MechanicImmuneMask, SchoolImmuneMask, ResistanceHoly, ResistanceFire, ResistanceNature, ResistanceFrost, ResistanceShadow, ResistanceArcane, PetSpellDataId, MovementType, TrainerType, TrainerSpell, TrainerClass, TrainerRace, TrainerTemplateId, VendorTemplateId, EquipmentTemplateId, GossipMenuId, AIName, ScriptName) VALUES
(190013, 'Grandmaster''s Training Dummy', '', '', 73, 73, 0, 16074, 100, 7, 2.2, 0, 9, 3, 0, 0, 0, 32768, 0, 64, 4, 1, 1.14286, 20, 0, 0, 0, 0, 1, 3, 1, 1000, 1, 1, 1, 1, 1, 7888000, 7888000, 0, 0, 0, 0, 0, 0, 7684, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8585235, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
(190014, 'Advanced Training Dummy', '', '', 70, 70, 0, 3019, 100, 7, 1.8, 0, 9, 3, 3, 0, 0, 0, 0, 64, 0, 1, 1.14286, 20, 0, 0, 0, 0, 1, 1, 1, 200, 1, 1, 1, 1, 1, 1397200, 1397200, 0, 0, 2, 2, 0, 0, 4691, 0, 0, 2000, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 8585235, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
(190015, 'Beginner Training Dummy', '', '', 63, 63, 0, 3019, 100, 7, 1.2, 0, 9, 3, 3, 0, 0, 0, 0, 64, 0, 1, 1.14286, 20, 0, 0, 0, 0, 1, 0, 1, 200, 1, 1, 1, 1, 1, 1397200, 1397200, 0, 0, 2, 2, 0, 0, 4691, 0, 0, 2000, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 8585235, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '');

DELETE FROM locales_creature WHERE entry IN (190013, 190014, 190015);
INSERT INTO locales_creature (entry, name_loc6, subname_loc6) VALUES
(190013, 'Muñeco de entrenamiento mayor', ''),
(190014, 'Muñeco de entrenamiento avanzado', ''),
(190015, 'Muñeco de entrenamiento basico', '');

DELETE FROM creature WHERE id IN (190013, 190014, 190015);
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES (190013, 1, 1, -1416.73, -76.4812, 158.526, 1.04029, 25, 25, 0, 0);
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES (190013, 0, 1, 1768.18, 352.747, -62.2883, 4.4141, 25, 25, 0, 0);
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES (190013, 1, 1, 2151.77, -4632.69, 50.4428, 3.59001, 25, 25, 0, 0);
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES (190013, 1, 1, 10000.5, 2258.5, 1329.8, 3.99055, 25, 25, 0, 0);
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES (190013, 0, 1, -4910.96, -1151.19, 501.449, 3.09082, 25, 25, 0, 0);
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES (190013, 0, 1, -8795.57, 363.195, 101.021, 5.41645, 25, 25, 0, 0);
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES (190014, 1, 1, -1422.05, -72.171, 157.476, 0.693121, 25, 25, 0, 0);
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES (190014, 0, 1, 1780.49, 333.857, -62.2898, 2.37992, 25, 25, 0, 0);
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES (190014, 1, 1, 2152.63, -4639.71, 50.3799, 3.22873, 25, 25, 0, 0);
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES (190014, 1, 1, 10006.2, 2252.62, 1329.75, 3.99449, 25, 25, 0, 0);
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES (190014, 0, 1, -4936.94, -1138.88, 501.46, 6.12402, 25, 25, 0, 0);
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES (190014, 0, 1, -8789.85, 367.182, 101.021, 5.33006, 25, 25, 0, 0);
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES (190015, 1, 1, -1410.51, -78.656, 158.935, 1.37014, 25, 25, 0, 0);
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES (190015, 0, 1, 1783.91, 341.82, -62.3358, 2.8865, 25, 25, 0, 0);
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES (190015, 1, 1, 2148.06, -4627.23, 50.9305, 3.88454, 25, 25, 0, 0);
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES (190015, 1, 1, 9993.03, 2260.47, 1330.81, 4.48136, 25, 25, 0, 0);
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES (190015, 0, 1, -4938.02, -1148.3, 501.497, 6.14209, 25, 25, 0, 0);
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES (190015, 0, 1, -8800.62, 358.618, 101.021, 5.44787, 25, 25, 0, 0);
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES (190013, 530, 1, -3834.13, -11309.3, -126.465, 4.26864, 25, 25, 0, 0);
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES (190014, 530, 1, -3823.65, -11318.4, -126.376, 3.68352, 25, 25, 0, 0);
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES (190015, 530, 1, -3848.8, -11305.2, -126.621, 4.75557, 25, 25, 0, 0);
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES (190013, 530, 1, 9849.73, -7390.75, 13.6436, 4.6568, 25, 25, 0, 0);
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES (190014, 530, 1, 9868.11, -7391.49, 13.6093, 4.02062, 25, 25, 0, 0);
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES (190015, 530, 1, 9832.55, -7388.81, 13.613, 5.52466, 25, 25, 0, 0);

-- ============================================================================
-- SOURCE: Custom/SQL/world/install/level58upgrade.sql
-- ============================================================================
-- ============================================================================
-- OPTIONAL CUSTOM: Character Upgrade NPC - Level 58
-- CMaNGOS TBC 2.4.3 + Eluna
--
-- This file is OPTIONAL and is NOT part of the default TBC database.
-- Execute it manually only if the Level 58 Upgrade NPC is wanted.
--
-- Runtime logic:
--   lua_scripts/npc_level58_upgrade.lua
--
-- NPC entry: 90005
-- Cost:      120,000 Gold
-- Target:    Level 58
-- ============================================================================

-- ---------------------------------------------------------------------------
-- NPC
-- ---------------------------------------------------------------------------
DELETE FROM creature_template WHERE entry = 90005;

/* Legacy column layout retained for reference; inactive on the current TBC-DB.
INSERT INTO `creature_template`
(`entry`,`heroic_entry`,`modelid_A`,`modelid_A2`,`modelid_H`,`modelid_H2`,`name`,
 `minlevel`,`maxlevel`,`minhealth`,`maxhealth`,`minmana`,`maxmana`,`armor`,
 `faction_A`,`faction_H`,`npcflag`,`speed`,`scale`,`rank`,`mindmg`,`maxdmg`,
 `dmgschool`,`attackpower`,`baseattacktime`,`rangeattacktime`,`unit_flags`,
 `dynamicflags`,`family`,`trainer_type`,`trainer_spell`,`class`,`race`,
 `minrangedmg`,`maxrangedmg`,`rangedattackpower`,`type`,`type_flags`,`lootid`,
 `pickpocketloot`,`skinloot`,`resistance1`,`resistance2`,`resistance3`,`resistance4`,
 `resistance5`,`resistance6`,`spell1`,`spell2`,`spell3`,`spell4`,`PetSpellDataId`,
 `mingold`,`maxgold`,`AIName`,`MovementType`,`InhabitType`,`RacialLeader`,
 `RegenHealth`,`equipment_id`,`mechanic_immune_mask`,`flags_extra`,`ScriptName`)
VALUES
(90005,0,1960,0,1960,0,'Charakter-Aufwerter',60,60,10000,10000,0,0,1000,
 35,35,1,1,1,0,1,2,0,0,2000,2000,0,0,0,0,0,1,0,0,0,0,7,0,0,0,0,
 0,0,0,0,0,0,0,0,0,0,0,0,0,'',0,3,0,1,0,0,0,'');
*/

DROP TEMPORARY TABLE IF EXISTS `level58_npc`;
CREATE TEMPORARY TABLE `level58_npc` LIKE `creature_template`;
INSERT INTO `level58_npc` SELECT * FROM `creature_template` WHERE `Entry`=1;
UPDATE `level58_npc` SET `Entry`=90005, `Name`='Charakter-Aufwerter',
  `SubName`='Level 58 / Dungeon-Set 1 / 120.000 Gold', `MinLevel`=60, `MaxLevel`=60,
  `DisplayId1`=1960, `DisplayIdProbability1`=100,
  `DisplayId2`=0, `DisplayIdProbability2`=0,
  `DisplayId3`=0, `DisplayIdProbability3`=0,
  `DisplayId4`=0, `DisplayIdProbability4`=0,
  `Faction`=35, `NpcFlags`=1, `GossipMenuId`=0, `ScriptName`='';
INSERT INTO `creature_template` SELECT * FROM `level58_npc`;
DROP TEMPORARY TABLE `level58_npc`;

-- ---------------------------------------------------------------------------
-- SERVICE CONFIGURATION
-- All changeable settings are stored here.
-- ---------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS custom_level58_upgrade_config
(
    npc_entry       INT UNSIGNED NOT NULL,
    required_level  TINYINT UNSIGNED NOT NULL,
    target_level    TINYINT UNSIGNED NOT NULL,
    cost_copper     INT UNSIGNED NOT NULL,
    gossip_text     VARCHAR(255) NOT NULL,
    confirm_text    VARCHAR(255) NOT NULL,
    success_text    VARCHAR(255) NOT NULL,
    error_level     VARCHAR(255) NOT NULL,
    error_money     VARCHAR(255) NOT NULL,
    error_inventory VARCHAR(255) NOT NULL,
    PRIMARY KEY (npc_entry)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DELETE FROM custom_level58_upgrade_config WHERE npc_entry = 90005;

INSERT INTO custom_level58_upgrade_config
    (npc_entry, required_level, target_level, cost_copper,
     gossip_text, confirm_text, success_text,
     error_level, error_money, error_inventory)
VALUES
    (90005, 58, 58, 1200000000,
     'Charakter auf Level 58 aufwerten - Kosten: 120.000 Gold',
     'Bist du sicher? Dein Charakter wird auf Level 58 gesetzt und erhaelt das passende Dungeon-Set 1. Kosten: 120.000 Gold.',
     'Charakter-Upgrade abgeschlossen: Level 58 und passendes Dungeon-Set 1 erhalten.',
     'Dein Charakter ist bereits Level 58 oder hoeher.',
     'Du benoetigst 120.000 Gold fuer das Charakter-Upgrade.',
     'Dein Inventar hat nicht genug Platz fuer das vollstaendige Dungeon-Set. Es wurde nichts berechnet.');

-- ---------------------------------------------------------------------------
-- CLASS -> DUNGEON SET 1 ITEMS
-- TBC class IDs:
--   1 Warrior, 2 Paladin, 3 Hunter, 4 Rogue, 5 Priest,
--   7 Shaman, 8 Mage, 9 Warlock, 11 Druid
-- ---------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS custom_level58_upgrade_items
(
    npc_entry   INT UNSIGNED NOT NULL,
    class_id    TINYINT UNSIGNED NOT NULL,
    item_order  TINYINT UNSIGNED NOT NULL,
    item_entry  INT UNSIGNED NOT NULL,
    PRIMARY KEY (npc_entry, class_id, item_order),
    KEY idx_upgrade_items_class (npc_entry, class_id)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DELETE FROM custom_level58_upgrade_items WHERE npc_entry = 90005;

INSERT INTO custom_level58_upgrade_items
    (npc_entry, class_id, item_order, item_entry)
VALUES
    -- Warrior - Valor
    (90005, 1, 1, 16730),
    (90005, 1, 2, 16731),
    (90005, 1, 3, 16732),
    (90005, 1, 4, 16733),
    (90005, 1, 5, 16734),
    (90005, 1, 6, 16735),
    (90005, 1, 7, 16736),
    (90005, 1, 8, 16737),

    -- Paladin - Lightforge
    (90005, 2, 1, 16722),
    (90005, 2, 2, 16723),
    (90005, 2, 3, 16724),
    (90005, 2, 4, 16725),
    (90005, 2, 5, 16726),
    (90005, 2, 6, 16727),
    (90005, 2, 7, 16728),
    (90005, 2, 8, 16729),

    -- Hunter - Beaststalker
    (90005, 3, 1, 16674),
    (90005, 3, 2, 16675),
    (90005, 3, 3, 16676),
    (90005, 3, 4, 16677),
    (90005, 3, 5, 16678),
    (90005, 3, 6, 16679),
    (90005, 3, 7, 16680),
    (90005, 3, 8, 16681),

    -- Rogue - Shadowcraft
    (90005, 4, 1, 16707),
    (90005, 4, 2, 16708),
    (90005, 4, 3, 16709),
    (90005, 4, 4, 16710),
    (90005, 4, 5, 16711),
    (90005, 4, 6, 16712),
    (90005, 4, 7, 16713),
    (90005, 4, 8, 16721),

    -- Priest - Devout
    (90005, 5, 1, 16690),
    (90005, 5, 2, 16691),
    (90005, 5, 3, 16692),
    (90005, 5, 4, 16693),
    (90005, 5, 5, 16694),
    (90005, 5, 6, 16695),
    (90005, 5, 7, 16696),
    (90005, 5, 8, 16697),

    -- Shaman - The Elements
    (90005, 7, 1, 16666),
    (90005, 7, 2, 16667),
    (90005, 7, 3, 16668),
    (90005, 7, 4, 16669),
    (90005, 7, 5, 16670),
    (90005, 7, 6, 16671),
    (90005, 7, 7, 16672),
    (90005, 7, 8, 16673),

    -- Mage - Magister
    (90005, 8, 1, 16682),
    (90005, 8, 2, 16683),
    (90005, 8, 3, 16684),
    (90005, 8, 4, 16685),
    (90005, 8, 5, 16686),
    (90005, 8, 6, 16687),
    (90005, 8, 7, 16688),
    (90005, 8, 8, 16689),

    -- Warlock - Dreadmist
    (90005, 9, 1, 16698),
    (90005, 9, 2, 16699),
    (90005, 9, 3, 16700),
    (90005, 9, 4, 16701),
    (90005, 9, 5, 16702),
    (90005, 9, 6, 16703),
    (90005, 9, 7, 16704),
    (90005, 9, 8, 16705),

    -- Druid - Wildheart
    (90005, 11, 1, 16706),
    (90005, 11, 2, 16714),
    (90005, 11, 3, 16715),
    (90005, 11, 4, 16716),
    (90005, 11, 5, 16717),
    (90005, 11, 6, 16718),
    (90005, 11, 7, 16719),
    (90005, 11, 8, 16720);

-- ============================================================================
-- END OPTIONAL CUSTOM SQL
-- ============================================================================

-- ============================================================================
-- SOURCE: Custom/SQL/world/install/playertreff.sql
-- ============================================================================
-- CMaNGOS TBC 2.4.3 - Playertreff
-- Builds on 9001_npc_buffer.sql.
-- NPCs are intentionally NOT spawned automatically.
-- Use .npc add <entry> at your desired Playertreff location.

SET @MODEL := 2240;

-- ------------------------------------------------------------
-- NPC entries
-- ------------------------------------------------------------
-- 90010 Dungeon-Set 1
-- 90011 Dungeon-Set 2
-- 90012 Dungeon-Set 3
-- 90013 Ruestungsmeister
-- 90014 Waffenmeister
-- 90015 Juwelier (Edelsteine/Ringe/Schmuck)
-- 90016 Taschenhaendler
-- 90017 Mount-Haendler
-- 90018 Gildenbankier
-- 90019 Berufsmeister
-- 90020 Alchemie-Materialien
-- 90021 Schmiedekunst-Materialien
-- 90022 Verzauberkunst-Materialien
-- 90023 Ingenieurskunst-Materialien
-- 90024 Juwelenschleifen-Materialien
-- 90025 Lederverarbeitung-Materialien
-- 90026 Schneiderei-Materialien
-- 90027 Kraeuterkunde-Materialien
-- 90028 Bergbau-Materialien
-- 90029 Kuerschnerei-Materialien
-- 90030 Kochen-Materialien
-- 90031 Angeln-Materialien
-- 90032 Erste-Hilfe-Materialien
-- 90063 Einhandwaffen
-- 90064 Zweihandwaffen
-- 90065 Fernkampfwaffen
-- 90066 Nebenhand/Zauberwaffen
-- 90067 Kopf
-- 90068 Schultern
-- 90069 Brust/Roben
-- 90070 Guertel
-- 90071 Hosen
-- 90072 Schuhe
-- 90073 Armschienen
-- 90074 Handschuhe
-- 90075 Umhaenge
-- 90076 Ringe
-- 90077 Halsketten
-- 90078 Schmuckstuecke
-- 90079 Schilde/Nebenhand
-- 90080 Sehr gute Starterausruestung ab Stufe 1
-- 90081 Edelsteine
-- 90082 Buffrollen
-- 90083 Bufffood und Getraenke

DELETE FROM `npc_vendor` WHERE `entry` BETWEEN 90010 AND 90017 OR `entry` BETWEEN 90020 AND 90032 OR `entry` BETWEEN 90063 AND 90083;
DELETE FROM `creature_template` WHERE `entry` BETWEEN 90010 AND 90032 OR `entry` BETWEEN 90063 AND 90083;

/* Legacy-layout reference, intentionally inactive on the current TBC-DB schema.
-- Vendor / service NPC templates. npcflag 2 = vendor, 8192 = banker.
INSERT INTO `creature_template`
(`entry`,`heroic_entry`,`modelid_A`,`modelid_A2`,`modelid_H`,`modelid_H2`,`name`,`minlevel`,`maxlevel`,`minhealth`,`maxhealth`,`minmana`,`maxmana`,`armor`,`faction_A`,`faction_H`,`npcflag`,`speed`,`scale`,`rank`,`mindmg`,`maxdmg`,`dmgschool`,`attackpower`,`baseattacktime`,`rangeattacktime`,`unit_flags`,`dynamicflags`,`family`,`trainer_type`,`trainer_spell`,`class`,`race`,`minrangedmg`,`maxrangedmg`,`rangedattackpower`,`type`,`type_flags`,`lootid`,`pickpocketloot`,`skinloot`,`resistance1`,`resistance2`,`resistance3`,`resistance4`,`resistance5`,`resistance6`,`spell1`,`spell2`,`spell3`,`spell4`,`PetSpellDataId`,`mingold`,`maxgold`,`AIName`,`MovementType`,`InhabitType`,`RacialLeader`,`RegenHealth`,`equipment_id`,`mechanic_immune_mask`,`flags_extra`,`ScriptName`)
VALUES
(90010,0,@MODEL,0,@MODEL,0,'Dungeonmeister I',70,70,10000,10000,0,0,1000,35,35,2,1,1,0,1,2,0,0,2000,2000,0,0,0,0,0,1,0,0,0,0,7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',0,3,0,1,0,0,0,''),
(90011,0,@MODEL,0,@MODEL,0,'Dungeonmeister II',70,70,10000,10000,0,0,1000,35,35,2,1,1,0,1,2,0,0,2000,2000,0,0,0,0,0,1,0,0,0,0,7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',0,3,0,1,0,0,0,''),
(90012,0,@MODEL,0,@MODEL,0,'Dungeonmeister III',70,70,10000,10000,0,0,1000,35,35,2,1,1,0,1,2,0,0,2000,2000,0,0,0,0,0,1,0,0,0,0,7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',0,3,0,1,0,0,0,''),
(90013,0,@MODEL,0,@MODEL,0,'Ruestungsmeister',70,70,10000,10000,0,0,1000,35,35,2,1,1,0,1,2,0,0,2000,2000,0,0,0,0,0,1,0,0,0,0,7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',0,3,0,1,0,0,0,''),
(90014,0,@MODEL,0,@MODEL,0,'Waffenmeister',70,70,10000,10000,0,0,1000,35,35,2,1,1,0,1,2,0,0,2000,2000,0,0,0,0,0,1,0,0,0,0,7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',0,3,0,1,0,0,0,''),
(90015,0,@MODEL,0,@MODEL,0,'Juwelier',70,70,10000,10000,0,0,1000,35,35,2,1,1,0,1,2,0,0,2000,2000,0,0,0,0,0,1,0,0,0,0,7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',0,3,0,1,0,0,0,''),
(90016,0,@MODEL,0,@MODEL,0,'Taschenhaendler',70,70,10000,10000,0,0,1000,35,35,2,1,1,0,1,2,0,0,2000,2000,0,0,0,0,0,1,0,0,0,0,7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',0,3,0,1,0,0,0,''),
(90017,0,@MODEL,0,@MODEL,0,'Mount-Haendler',70,70,10000,10000,0,0,1000,35,35,2,1,1,0,1,2,0,0,2000,2000,0,0,0,0,0,1,0,0,0,0,7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',0,3,0,1,0,0,0,''),
(90018,0,@MODEL,0,@MODEL,0,'Gildenbankier',70,70,10000,10000,0,0,1000,35,35,8192,1,1,0,1,2,0,0,2000,2000,0,0,0,0,0,1,0,0,0,0,7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',0,3,0,1,0,0,0,''),
(90019,0,@MODEL,0,@MODEL,0,'Berufsmeister',70,70,10000,10000,0,0,1000,35,35,1,1,1,0,1,2,0,0,2000,2000,0,0,0,0,0,1,0,0,0,0,7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',0,3,0,1,0,0,0,'npc_playertreff_professions'),
(90020,0,@MODEL,0,@MODEL,0,'Alchemie-Materialien',70,70,10000,10000,0,0,1000,35,35,2,1,1,0,1,2,0,0,2000,2000,0,0,0,0,0,1,0,0,0,0,7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',0,3,0,1,0,0,0,''),
(90021,0,@MODEL,0,@MODEL,0,'Schmiedekunst-Materialien',70,70,10000,10000,0,0,1000,35,35,2,1,1,0,1,2,0,0,2000,2000,0,0,0,0,0,1,0,0,0,0,7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',0,3,0,1,0,0,0,''),
(90022,0,@MODEL,0,@MODEL,0,'Verzauberkunst-Materialien',70,70,10000,10000,0,0,1000,35,35,2,1,1,0,1,2,0,0,2000,2000,0,0,0,0,0,1,0,0,0,0,7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',0,3,0,1,0,0,0,''),
(90023,0,@MODEL,0,@MODEL,0,'Ingenieurskunst-Materialien',70,70,10000,10000,0,0,1000,35,35,2,1,1,0,1,2,0,0,2000,2000,0,0,0,0,0,1,0,0,0,0,7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',0,3,0,1,0,0,0,''),
(90024,0,@MODEL,0,@MODEL,0,'Juwelenschleifen-Materialien',70,70,10000,10000,0,0,1000,35,35,2,1,1,0,1,2,0,0,2000,2000,0,0,0,0,0,1,0,0,0,0,7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',0,3,0,1,0,0,0,''),
(90025,0,@MODEL,0,@MODEL,0,'Lederverarbeitung-Materialien',70,70,10000,10000,0,0,1000,35,35,2,1,1,0,1,2,0,0,2000,2000,0,0,0,0,0,1,0,0,0,0,7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',0,3,0,1,0,0,0,''),
(90026,0,@MODEL,0,@MODEL,0,'Schneiderei-Materialien',70,70,10000,10000,0,0,1000,35,35,2,1,1,0,1,2,0,0,2000,2000,0,0,0,0,0,1,0,0,0,0,7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',0,3,0,1,0,0,0,''),
(90027,0,@MODEL,0,@MODEL,0,'Kraeuterkunde-Materialien',70,70,10000,10000,0,0,1000,35,35,2,1,1,0,1,2,0,0,2000,2000,0,0,0,0,0,1,0,0,0,0,7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',0,3,0,1,0,0,0,''),
(90028,0,@MODEL,0,@MODEL,0,'Bergbau-Materialien',70,70,10000,10000,0,0,1000,35,35,2,1,1,0,1,2,0,0,2000,2000,0,0,0,0,0,1,0,0,0,0,7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',0,3,0,1,0,0,0,''),
(90029,0,@MODEL,0,@MODEL,0,'Kurschnerei-Materialien',70,70,10000,10000,0,0,1000,35,35,2,1,1,0,1,2,0,0,2000,2000,0,0,0,0,0,1,0,0,0,0,7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',0,3,0,1,0,0,0,''),
(90030,0,@MODEL,0,@MODEL,0,'Kochen-Materialien',70,70,10000,10000,0,0,1000,35,35,2,1,1,0,1,2,0,0,2000,2000,0,0,0,0,0,1,0,0,0,0,7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',0,3,0,1,0,0,0,''),
(90031,0,@MODEL,0,@MODEL,0,'Angeln-Materialien',70,70,10000,10000,0,0,1000,35,35,2,1,1,0,1,2,0,0,2000,2000,0,0,0,0,0,1,0,0,0,0,7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',0,3,0,1,0,0,0,''),
(90032,0,@MODEL,0,@MODEL,0,'Erste-Hilfe-Materialien',70,70,10000,10000,0,0,1000,35,35,2,1,1,0,1,2,0,0,2000,2000,0,0,0,0,0,1,0,0,0,0,7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',0,3,0,1,0,0,0,'');

*/

DROP PROCEDURE IF EXISTS `pt_seed_npc`;
DELIMITER //
CREATE PROCEDURE `pt_seed_npc`(IN new_entry INT UNSIGNED, IN new_name VARCHAR(100), IN new_flags INT UNSIGNED)
BEGIN
  DROP TEMPORARY TABLE IF EXISTS `pt_seed`;
  CREATE TEMPORARY TABLE `pt_seed` LIKE `creature_template`;
  INSERT INTO `pt_seed` SELECT * FROM `creature_template` WHERE `Entry`=1;
  UPDATE `pt_seed` SET `Entry`=new_entry, `Name`=new_name, `SubName`='Playertreff',
    `MinLevel`=70, `MaxLevel`=70, `Faction`=35, `NpcFlags`=new_flags,
    `DisplayId1`=@MODEL, `DisplayIdProbability1`=100,
    `DisplayId2`=0, `DisplayIdProbability2`=0,
    `DisplayId3`=0, `DisplayIdProbability3`=0,
    `DisplayId4`=0, `DisplayIdProbability4`=0,
    `TrainerType`=0, `TrainerSpell`=0, `TrainerClass`=0, `TrainerRace`=0,
    `TrainerTemplateId`=0, `VendorTemplateId`=0, `GossipMenuId`=0, `ScriptName`='';
  INSERT INTO `creature_template` SELECT * FROM `pt_seed`;
END//
DELIMITER ;
CALL `pt_seed_npc`(90010,'Dungeonmeister I',2);
CALL `pt_seed_npc`(90011,'Dungeonmeister II',2);
CALL `pt_seed_npc`(90012,'Dungeonmeister III',2);
CALL `pt_seed_npc`(90013,'Ruestungsmeister',2);
CALL `pt_seed_npc`(90014,'Waffenmeister',2);
CALL `pt_seed_npc`(90015,'Juwelier',2);
CALL `pt_seed_npc`(90016,'Taschenhaendler',2);
CALL `pt_seed_npc`(90017,'Mount-Haendler',2);
CALL `pt_seed_npc`(90018,'Gildenbankier',8388608);
CALL `pt_seed_npc`(90019,'Berufsmeister',1);
CALL `pt_seed_npc`(90020,'Alchemie-Materialien',2);
CALL `pt_seed_npc`(90021,'Schmiedekunst-Materialien',2);
CALL `pt_seed_npc`(90022,'Verzauberkunst-Materialien',2);
CALL `pt_seed_npc`(90023,'Ingenieurskunst-Materialien',2);
CALL `pt_seed_npc`(90024,'Juwelenschleifen-Materialien',2);
CALL `pt_seed_npc`(90025,'Lederverarbeitung-Materialien',2);
CALL `pt_seed_npc`(90026,'Schneiderei-Materialien',2);
CALL `pt_seed_npc`(90027,'Kraeuterkunde-Materialien',2);
CALL `pt_seed_npc`(90028,'Bergbau-Materialien',2);
CALL `pt_seed_npc`(90029,'Kuerschnerei-Materialien',2);
CALL `pt_seed_npc`(90030,'Kochen-Materialien',2);
CALL `pt_seed_npc`(90031,'Angeln-Materialien',2);
CALL `pt_seed_npc`(90032,'Erste-Hilfe-Materialien',2);
CALL `pt_seed_npc`(90063,'Einhandwaffen 1-70',2);
CALL `pt_seed_npc`(90064,'Zweihandwaffen 1-70',2);
CALL `pt_seed_npc`(90065,'Fernkampfwaffen 1-70',2);
CALL `pt_seed_npc`(90066,'Zauberwaffen und Nebenhand',2);
CALL `pt_seed_npc`(90067,'Kopfruestung 1-70',2);
CALL `pt_seed_npc`(90068,'Schulterruestung 1-70',2);
CALL `pt_seed_npc`(90069,'Brustruestung und Roben 1-70',2);
CALL `pt_seed_npc`(90070,'Guertel 1-70',2);
CALL `pt_seed_npc`(90071,'Hosen 1-70',2);
CALL `pt_seed_npc`(90072,'Schuhe 1-70',2);
CALL `pt_seed_npc`(90073,'Armschienen 1-70',2);
CALL `pt_seed_npc`(90074,'Handschuhe 1-70',2);
CALL `pt_seed_npc`(90075,'Umhaenge 1-70',2);
CALL `pt_seed_npc`(90076,'Ringe 1-70',2);
CALL `pt_seed_npc`(90077,'Halsketten 1-70',2);
CALL `pt_seed_npc`(90078,'Schmuckstuecke 1-70',2);
CALL `pt_seed_npc`(90079,'Schilde und Nebenhand 1-70',2);
CALL `pt_seed_npc`(90080,'Elite-Starterausruestung',2);
CALL `pt_seed_npc`(90081,'Edelsteinhaendler',2);
CALL `pt_seed_npc`(90082,'Buffrollenhaendler',2);
CALL `pt_seed_npc`(90083,'Bufffood und Getraenke',2);
DROP PROCEDURE `pt_seed_npc`;

-- ------------------------------------------------------------
-- Ruestung: good green/blue TBC gear from level 1 to 70.
-- Class restrictions remain enforced by item_template.
-- ------------------------------------------------------------
INSERT INTO `npc_vendor` (`entry`,`slot`,`item`,`maxcount`,`incrtime`,`ExtendedCost`)
SELECT 90013, 0, `entry`, 0, 0, 0
FROM `item_template`
WHERE `class` = 4 AND `Quality` IN (2,3) AND `RequiredLevel` BETWEEN 1 AND 70
  AND `InventoryType` IN (1,3,5,6,7,8,9,10,11,16,20)
ORDER BY `ItemLevel`, `entry` LIMIT 250;

-- ------------------------------------------------------------
-- Waffen: green/blue weapons from level 1 to 70.
-- ------------------------------------------------------------
INSERT INTO `npc_vendor` (`entry`,`slot`,`item`,`maxcount`,`incrtime`,`ExtendedCost`)
SELECT 90014, 0, `entry`, 0, 0, 0
FROM `item_template`
WHERE `class` = 2 AND `Quality` IN (2,3) AND `RequiredLevel` BETWEEN 1 AND 70
ORDER BY `ItemLevel`, `entry` LIMIT 250;

-- ------------------------------------------------------------
-- Dungeon Set 1 / 2 / 3. Names are taken from TBC item data;
-- missing names are simply ignored, making the update safe across DB revisions.
-- ------------------------------------------------------------
INSERT INTO `npc_vendor` (`entry`,`slot`,`item`,`maxcount`,`incrtime`,`ExtendedCost`)
SELECT 90010, 0, `entry`, 0, 0, 0 FROM `item_template`
WHERE `Quality` >= 3 AND (`name` LIKE 'Devout %' OR `name` LIKE 'Dreadmist %' OR `name` LIKE 'Magister%'
 OR `name` LIKE 'Wildheart %' OR `name` LIKE 'Shadowcraft %' OR `name` LIKE 'Beaststalker %'
 OR `name` LIKE 'Lightforge %' OR `name` LIKE 'Valor %') ORDER BY `entry`;

INSERT INTO `npc_vendor` (`entry`,`slot`,`item`,`maxcount`,`incrtime`,`ExtendedCost`)
SELECT 90011, 0, `entry`, 0, 0, 0 FROM `item_template`
WHERE `Quality` >= 3 AND (`name` LIKE 'Deathmist %' OR `name` LIKE 'Sorcerer%'
 OR `name` LIKE 'Soulforge %' OR `name` LIKE 'Heroism %' OR `name` LIKE 'Darkmantle %'
 OR `name` LIKE 'Beast Lord %' OR `name` LIKE 'Feralheart %') ORDER BY `entry`;

INSERT INTO `npc_vendor` (`entry`,`slot`,`item`,`maxcount`,`incrtime`,`ExtendedCost`)
SELECT 90012, 0, `entry`, 0, 0, 0 FROM `item_template`
WHERE `Quality` >= 3 AND (`name` LIKE 'Incanter%'
 OR `name` LIKE 'Doomplate %' OR `name` LIKE 'Bold %' OR `name` LIKE 'Hallowed %'
 OR `name` LIKE 'Moonglade %' OR `name` LIKE 'Assassination %' OR `name` LIKE 'Beast Lord %') ORDER BY `entry`;

-- ------------------------------------------------------------
-- Juwelier: raw TBC gems + rings/necklaces/trinkets from the DB.
-- ------------------------------------------------------------
INSERT INTO `npc_vendor` (`entry`,`slot`,`item`,`maxcount`,`incrtime`,`ExtendedCost`) VALUES
(90015,0,23436,0,0,0),(90015,0,23437,0,0,0),(90015,0,23438,0,0,0),
(90015,0,23439,0,0,0),(90015,0,23440,0,0,0),(90015,0,23441,0,0,0),
(90015,0,24027,0,0,0),(90015,0,24028,0,0,0),(90015,0,24029,0,0,0),
(90015,0,24030,0,0,0),(90015,0,24031,0,0,0),(90015,0,24032,0,0,0),
(90015,0,24033,0,0,0),(90015,0,24034,0,0,0);
INSERT INTO `npc_vendor` (`entry`,`slot`,`item`,`maxcount`,`incrtime`,`ExtendedCost`)
SELECT 90015,0,`entry`,0,0,0 FROM `item_template`
WHERE `class`=4 AND `Quality` IN (2,3) AND `RequiredLevel` BETWEEN 1 AND 70 AND `InventoryType` IN (2,11,12)
ORDER BY `ItemLevel`, `entry` LIMIT 150;

-- ------------------------------------------------------------
-- Dedicated equipment vendors. Splitting the inventories prevents
-- weapons, late-level armor and jewelry from disappearing behind the
-- TBC vendor-list size limit.
-- ------------------------------------------------------------
INSERT INTO `npc_vendor` (`entry`,`slot`,`item`,`maxcount`,`incrtime`,`ExtendedCost`)
SELECT 90063,0,`entry`,0,0,0 FROM `item_template`
WHERE `class`=2 AND `Quality` BETWEEN 2 AND 4 AND `RequiredLevel` BETWEEN 1 AND 70
  AND `InventoryType` IN (13,21) ORDER BY `RequiredLevel`,`Quality` DESC,`ItemLevel` DESC LIMIT 250;

INSERT INTO `npc_vendor` (`entry`,`slot`,`item`,`maxcount`,`incrtime`,`ExtendedCost`)
SELECT 90064,0,`entry`,0,0,0 FROM `item_template`
WHERE `class`=2 AND `Quality` BETWEEN 2 AND 4 AND `RequiredLevel` BETWEEN 1 AND 70
  AND `InventoryType`=17 ORDER BY `RequiredLevel`,`Quality` DESC,`ItemLevel` DESC LIMIT 250;

INSERT INTO `npc_vendor` (`entry`,`slot`,`item`,`maxcount`,`incrtime`,`ExtendedCost`)
SELECT 90065,0,`entry`,0,0,0 FROM `item_template`
WHERE `class`=2 AND `Quality` BETWEEN 2 AND 4 AND `RequiredLevel` BETWEEN 1 AND 70
  AND `InventoryType` IN (15,25,26) ORDER BY `RequiredLevel`,`Quality` DESC,`ItemLevel` DESC LIMIT 250;

INSERT INTO `npc_vendor` (`entry`,`slot`,`item`,`maxcount`,`incrtime`,`ExtendedCost`)
SELECT 90066,0,`entry`,0,0,0 FROM `item_template`
WHERE `Quality` BETWEEN 2 AND 4 AND `RequiredLevel` BETWEEN 1 AND 70
  AND ((`class`=2 AND `InventoryType`=22) OR (`class`=4 AND `InventoryType`=23))
ORDER BY `RequiredLevel`,`Quality` DESC,`ItemLevel` DESC LIMIT 250;

-- Armor slots: cloth, leather, mail and plate; green through epic.
INSERT INTO `npc_vendor` (`entry`,`slot`,`item`,`maxcount`,`incrtime`,`ExtendedCost`)
SELECT 90067,0,`entry`,0,0,0 FROM `item_template` WHERE `class`=4 AND `Quality` BETWEEN 2 AND 4 AND `RequiredLevel` BETWEEN 1 AND 70 AND `InventoryType`=1 ORDER BY `RequiredLevel`,`Quality` DESC,`ItemLevel` DESC LIMIT 250;
INSERT INTO `npc_vendor` (`entry`,`slot`,`item`,`maxcount`,`incrtime`,`ExtendedCost`)
SELECT 90068,0,`entry`,0,0,0 FROM `item_template` WHERE `class`=4 AND `Quality` BETWEEN 2 AND 4 AND `RequiredLevel` BETWEEN 1 AND 70 AND `InventoryType`=3 ORDER BY `RequiredLevel`,`Quality` DESC,`ItemLevel` DESC LIMIT 250;
INSERT INTO `npc_vendor` (`entry`,`slot`,`item`,`maxcount`,`incrtime`,`ExtendedCost`)
SELECT 90069,0,`entry`,0,0,0 FROM `item_template` WHERE `class`=4 AND `Quality` BETWEEN 2 AND 4 AND `RequiredLevel` BETWEEN 1 AND 70 AND `InventoryType` IN (5,20) ORDER BY `RequiredLevel`,`Quality` DESC,`ItemLevel` DESC LIMIT 250;
INSERT INTO `npc_vendor` (`entry`,`slot`,`item`,`maxcount`,`incrtime`,`ExtendedCost`)
SELECT 90070,0,`entry`,0,0,0 FROM `item_template` WHERE `class`=4 AND `Quality` BETWEEN 2 AND 4 AND `RequiredLevel` BETWEEN 1 AND 70 AND `InventoryType`=6 ORDER BY `RequiredLevel`,`Quality` DESC,`ItemLevel` DESC LIMIT 250;
INSERT INTO `npc_vendor` (`entry`,`slot`,`item`,`maxcount`,`incrtime`,`ExtendedCost`)
SELECT 90071,0,`entry`,0,0,0 FROM `item_template` WHERE `class`=4 AND `Quality` BETWEEN 2 AND 4 AND `RequiredLevel` BETWEEN 1 AND 70 AND `InventoryType`=7 ORDER BY `RequiredLevel`,`Quality` DESC,`ItemLevel` DESC LIMIT 250;
INSERT INTO `npc_vendor` (`entry`,`slot`,`item`,`maxcount`,`incrtime`,`ExtendedCost`)
SELECT 90072,0,`entry`,0,0,0 FROM `item_template` WHERE `class`=4 AND `Quality` BETWEEN 2 AND 4 AND `RequiredLevel` BETWEEN 1 AND 70 AND `InventoryType`=8 ORDER BY `RequiredLevel`,`Quality` DESC,`ItemLevel` DESC LIMIT 250;
INSERT INTO `npc_vendor` (`entry`,`slot`,`item`,`maxcount`,`incrtime`,`ExtendedCost`)
SELECT 90073,0,`entry`,0,0,0 FROM `item_template` WHERE `class`=4 AND `Quality` BETWEEN 2 AND 4 AND `RequiredLevel` BETWEEN 1 AND 70 AND `InventoryType`=9 ORDER BY `RequiredLevel`,`Quality` DESC,`ItemLevel` DESC LIMIT 250;
INSERT INTO `npc_vendor` (`entry`,`slot`,`item`,`maxcount`,`incrtime`,`ExtendedCost`)
SELECT 90074,0,`entry`,0,0,0 FROM `item_template` WHERE `class`=4 AND `Quality` BETWEEN 2 AND 4 AND `RequiredLevel` BETWEEN 1 AND 70 AND `InventoryType`=10 ORDER BY `RequiredLevel`,`Quality` DESC,`ItemLevel` DESC LIMIT 250;
INSERT INTO `npc_vendor` (`entry`,`slot`,`item`,`maxcount`,`incrtime`,`ExtendedCost`)
SELECT 90075,0,`entry`,0,0,0 FROM `item_template` WHERE `class`=4 AND `Quality` BETWEEN 2 AND 4 AND `RequiredLevel` BETWEEN 1 AND 70 AND `InventoryType`=16 ORDER BY `RequiredLevel`,`Quality` DESC,`ItemLevel` DESC LIMIT 250;

-- Jewelry split into rings, necklaces and trinkets.
INSERT INTO `npc_vendor` (`entry`,`slot`,`item`,`maxcount`,`incrtime`,`ExtendedCost`)
SELECT 90076,0,`entry`,0,0,0 FROM `item_template` WHERE `class`=4 AND `Quality` BETWEEN 2 AND 4 AND `RequiredLevel` BETWEEN 1 AND 70 AND `InventoryType`=11 ORDER BY `RequiredLevel`,`Quality` DESC,`ItemLevel` DESC LIMIT 250;
INSERT INTO `npc_vendor` (`entry`,`slot`,`item`,`maxcount`,`incrtime`,`ExtendedCost`)
SELECT 90077,0,`entry`,0,0,0 FROM `item_template` WHERE `class`=4 AND `Quality` BETWEEN 2 AND 4 AND `RequiredLevel` BETWEEN 1 AND 70 AND `InventoryType`=2 ORDER BY `RequiredLevel`,`Quality` DESC,`ItemLevel` DESC LIMIT 250;
INSERT INTO `npc_vendor` (`entry`,`slot`,`item`,`maxcount`,`incrtime`,`ExtendedCost`)
SELECT 90078,0,`entry`,0,0,0 FROM `item_template` WHERE `class`=4 AND `Quality` BETWEEN 2 AND 4 AND `RequiredLevel` BETWEEN 1 AND 70 AND `InventoryType`=12 ORDER BY `RequiredLevel`,`Quality` DESC,`ItemLevel` DESC LIMIT 250;
INSERT INTO `npc_vendor` (`entry`,`slot`,`item`,`maxcount`,`incrtime`,`ExtendedCost`)
SELECT 90079,0,`entry`,0,0,0 FROM `item_template` WHERE `class`=4 AND `Quality` BETWEEN 2 AND 4 AND `RequiredLevel` BETWEEN 1 AND 70 AND `InventoryType` IN (14,23) ORDER BY `RequiredLevel`,`Quality` DESC,`ItemLevel` DESC LIMIT 250;

-- Strong unrestricted starter gear that is genuinely usable at level 1.
-- Existing item requirements are never altered.
INSERT INTO `npc_vendor` (`entry`,`slot`,`item`,`maxcount`,`incrtime`,`ExtendedCost`)
SELECT 90080,0,`entry`,0,0,0 FROM `item_template`
WHERE `Quality` BETWEEN 2 AND 4 AND `RequiredLevel`<=1 AND `ItemLevel` BETWEEN 5 AND 30
  AND ((`class`=4 AND `InventoryType` IN (1,2,3,5,6,7,8,9,10,11,12,14,16,20,23))
    OR (`class`=2 AND `InventoryType` IN (13,15,17,21,22,25,26)))
ORDER BY `Quality` DESC,`ItemLevel` DESC,`entry` LIMIT 250;

-- Cut and uncut Classic/TBC gems, including socket gems.
INSERT INTO `npc_vendor` (`entry`,`slot`,`item`,`maxcount`,`incrtime`,`ExtendedCost`)
SELECT 90081,0,`entry`,0,0,0 FROM `item_template`
WHERE `class`=3 AND `Quality` BETWEEN 1 AND 4 AND `RequiredLevel`<=70
ORDER BY `Quality`,`ItemLevel`,`entry` LIMIT 250;

-- Stat, armor, resistance and protection scrolls.
INSERT INTO `npc_vendor` (`entry`,`slot`,`item`,`maxcount`,`incrtime`,`ExtendedCost`)
SELECT 90082,0,`entry`,0,0,0 FROM `item_template`
WHERE `class`=0 AND `subclass`=4 AND `Quality` BETWEEN 1 AND 3 AND `RequiredLevel`<=70
ORDER BY `RequiredLevel`,`ItemLevel`,`entry` LIMIT 250;

-- Food and drinks, including TBC well-fed buff food.
INSERT INTO `npc_vendor` (`entry`,`slot`,`item`,`maxcount`,`incrtime`,`ExtendedCost`)
SELECT 90083,0,`entry`,0,0,0 FROM `item_template`
WHERE `class`=0 AND `subclass`=5 AND `Quality` BETWEEN 1 AND 3 AND `RequiredLevel`<=70
ORDER BY `RequiredLevel`,`Quality` DESC,`ItemLevel`,`entry` LIMIT 250;

-- ------------------------------------------------------------
-- Bags
-- ------------------------------------------------------------
INSERT INTO `npc_vendor` (`entry`,`slot`,`item`,`maxcount`,`incrtime`,`ExtendedCost`) VALUES
(90016,0,4496,0,0,0),(90016,0,4497,0,0,0),(90016,0,4498,0,0,0),
(90016,0,10050,0,0,0),(90016,0,21841,0,0,0),(90016,0,21843,0,0,0);

-- ------------------------------------------------------------
-- Mounts: TBC mount items. Item requirements/faction remain enforced.
-- ------------------------------------------------------------
INSERT INTO `npc_vendor` (`entry`,`slot`,`item`,`maxcount`,`incrtime`,`ExtendedCost`) VALUES
(90017,0,29465,0,0,0),(90017,0,29466,0,0,0),(90017,0,29467,0,0,0),
(90017,0,29468,0,0,0),(90017,0,29469,0,0,0),(90017,0,29470,0,0,0),
(90017,0,29471,0,0,0),(90017,0,29472,0,0,0);

-- ------------------------------------------------------------
-- Profession materials - intentionally separated by profession.
-- Unlimited stock (maxcount=0).
-- ------------------------------------------------------------
-- Alchemy: herbs and basic vials/reagents
INSERT INTO `npc_vendor` (`entry`,`slot`,`item`,`maxcount`,`incrtime`,`ExtendedCost`) VALUES
(90020,0,2447,0,0,0),(90020,0,765,0,0,0),(90020,0,785,0,0,0),(90020,0,2449,0,0,0),
(90020,0,2450,0,0,0),(90020,0,3355,0,0,0),(90020,0,3356,0,0,0),(90020,0,3357,0,0,0),
(90020,0,3358,0,0,0),(90020,0,3818,0,0,0),(90020,0,3820,0,0,0),(90020,0,3819,0,0,0),
(90020,0,3821,0,0,0),(90020,0,3824,0,0,0),(90020,0,8831,0,0,0),(90020,0,8836,0,0,0),
(90020,0,8838,0,0,0),(90020,0,13463,0,0,0),(90020,0,13464,0,0,0),(90020,0,13465,0,0,0),
(90020,0,13466,0,0,0),(90020,0,13467,0,0,0),(90020,0,13468,0,0,0),
(90020,0,3371,0,0,0),(90020,0,8925,0,0,0);

-- Blacksmithing: TBC ores/bars + classic progression materials
INSERT INTO `npc_vendor` (`entry`,`slot`,`item`,`maxcount`,`incrtime`,`ExtendedCost`) VALUES
(90021,0,2770,0,0,0),(90021,0,2771,0,0,0),(90021,0,2772,0,0,0),(90021,0,2775,0,0,0),
(90021,0,2776,0,0,0),(90021,0,3858,0,0,0),(90021,0,10620,0,0,0),(90021,0,23424,0,0,0),
(90021,0,23425,0,0,0),(90021,0,23426,0,0,0),(90021,0,23427,0,0,0),(90021,0,23445,0,0,0),
(90021,0,23446,0,0,0),(90021,0,2840,0,0,0),(90021,0,2841,0,0,0),(90021,0,2842,0,0,0),
(90021,0,3575,0,0,0),(90021,0,3576,0,0,0),(90021,0,3859,0,0,0),(90021,0,3860,0,0,0),
(90021,0,6037,0,0,0),(90021,0,3864,0,0,0),(90021,0,12359,0,0,0),(90021,0,12360,0,0,0),
(90021,0,12361,0,0,0),(90021,0,3466,0,0,0),(90021,0,2880,0,0,0);

-- Enchanting
INSERT INTO `npc_vendor` (`entry`,`slot`,`item`,`maxcount`,`incrtime`,`ExtendedCost`) VALUES
(90022,0,10940,0,0,0),(90022,0,10938,0,0,0),(90022,0,10939,0,0,0),(90022,0,10978,0,0,0),
(90022,0,10998,0,0,0),(90022,0,11082,0,0,0),(90022,0,11084,0,0,0),(90022,0,11083,0,0,0),
(90022,0,11134,0,0,0),(90022,0,11135,0,0,0),(90022,0,11137,0,0,0),(90022,0,11139,0,0,0),
(90022,0,11175,0,0,0),(90022,0,11176,0,0,0),(90022,0,11177,0,0,0),(90022,0,14343,0,0,0),
(90022,0,22445,0,0,0),(90022,0,22446,0,0,0),(90022,0,22447,0,0,0),(90022,0,22448,0,0,0),
(90022,0,22449,0,0,0),(90022,0,22450,0,0,0),(90022,0,22451,0,0,0),(90022,0,22452,0,0,0),
(90022,0,22456,0,0,0),(90022,0,22457,0,0,0),(90022,0,22460,0,0,0),(90022,0,22461,0,0,0),
(90022,0,22462,0,0,0),(90022,0,22463,0,0,0);

-- Engineering
INSERT INTO `npc_vendor` (`entry`,`slot`,`item`,`maxcount`,`incrtime`,`ExtendedCost`) VALUES
(90023,0,4361,0,0,0),(90023,0,4363,0,0,0),(90023,0,4364,0,0,0),(90023,0,4365,0,0,0),
(90023,0,4371,0,0,0),(90023,0,4375,0,0,0),(90023,0,4377,0,0,0),(90023,0,4382,0,0,0),
(90023,0,4387,0,0,0),(90023,0,4390,0,0,0),(90023,0,4399,0,0,0),(90023,0,4400,0,0,0),
(90023,0,10505,0,0,0),(90023,0,10507,0,0,0),(90023,0,10560,0,0,0),(90023,0,10561,0,0,0),
(90023,0,10558,0,0,0),(90023,0,16006,0,0,0),(90023,0,16000,0,0,0),(90023,0,16008,0,0,0),
(90023,0,15992,0,0,0),(90023,0,15994,0,0,0),(90023,0,15996,0,0,0),(90023,0,23445,0,0,0),
(90023,0,23446,0,0,0),(90023,0,23782,0,0,0),(90023,0,23783,0,0,0);

-- Jewelcrafting materials
INSERT INTO `npc_vendor` (`entry`,`slot`,`item`,`maxcount`,`incrtime`,`ExtendedCost`) VALUES
(90024,0,1705,0,0,0),(90024,0,1529,0,0,0),(90024,0,7910,0,0,0),(90024,0,12800,0,0,0),
(90024,0,12364,0,0,0),(90024,0,23107,0,0,0),(90024,0,23436,0,0,0),(90024,0,23437,0,0,0),
(90024,0,23438,0,0,0),(90024,0,23439,0,0,0),(90024,0,23440,0,0,0),(90024,0,23441,0,0,0),
(90024,0,23427,0,0,0),(90024,0,23445,0,0,0),(90024,0,23446,0,0,0);

-- Leatherworking
INSERT INTO `npc_vendor` (`entry`,`slot`,`item`,`maxcount`,`incrtime`,`ExtendedCost`) VALUES
(90025,0,2318,0,0,0),(90025,0,2319,0,0,0),(90025,0,4231,0,0,0),(90025,0,4232,0,0,0),
(90025,0,4234,0,0,0),(90025,0,4304,0,0,0),(90025,0,8167,0,0,0),(90025,0,8170,0,0,0),
(90025,0,15407,0,0,0),(90025,0,15408,0,0,0),(90025,0,15409,0,0,0),(90025,0,8171,0,0,0),
(90025,0,21887,0,0,0),(90025,0,25700,0,0,0),(90025,0,25649,0,0,0);

-- Tailoring
INSERT INTO `npc_vendor` (`entry`,`slot`,`item`,`maxcount`,`incrtime`,`ExtendedCost`) VALUES
(90026,0,2589,0,0,0),(90026,0,2592,0,0,0),(90026,0,4305,0,0,0),(90026,0,4338,0,0,0),
(90026,0,14047,0,0,0),(90026,0,21877,0,0,0),(90026,0,21842,0,0,0),(90026,0,24271,0,0,0),
(90026,0,24272,0,0,0),(90026,0,24273,0,0,0),(90026,0,24291,0,0,0),(90026,0,24249,0,0,0),
(90026,0,2604,0,0,0),(90026,0,14341,0,0,0),(90026,0,2320,0,0,0),(90026,0,2321,0,0,0);

-- Herbalism
INSERT INTO `npc_vendor` (`entry`,`slot`,`item`,`maxcount`,`incrtime`,`ExtendedCost`) SELECT 90027,0,`entry`,0,0,0 FROM `item_template` WHERE `entry` IN (2447,765,785,2449,2450,2453,2452,3355,3356,3357,3358,3818,3819,3820,3821,3824,8831,8836,8838,13463,13464,13465,13466,13467,13468,22785,22786,22787,22789,22790,22791);

-- Mining
INSERT INTO `npc_vendor` (`entry`,`slot`,`item`,`maxcount`,`incrtime`,`ExtendedCost`) SELECT 90028,0,`entry`,0,0,0 FROM `item_template` WHERE `entry` IN (2770,2771,2772,2775,2776,3858,10620,11370,12359,12360,12361,23424,23425,23426,23427,23445,23446,2840,2841,2842,3575,3576,3859,3860,3864,6037);

-- Skinning
INSERT INTO `npc_vendor` (`entry`,`slot`,`item`,`maxcount`,`incrtime`,`ExtendedCost`) SELECT 90029,0,`entry`,0,0,0 FROM `item_template` WHERE `entry` IN (2318,2319,2934,4231,4232,4234,4304,8167,8170,15407,15408,15409,8171,21887,25699,25700);

-- Cooking
INSERT INTO `npc_vendor` (`entry`,`slot`,`item`,`maxcount`,`incrtime`,`ExtendedCost`) SELECT 90030,0,`entry`,0,0,0 FROM `item_template` WHERE `entry` IN (769,1015,1080,2672,2673,2674,2675,2677,2678,2679,2680,2681,2886,3712,5465,5466,5467,5469,5470,5471,5472,5473,5503,5504,5508,5526,7974,8959,12037,12203,12204,12205,12206,12207,12208,12223,13754,13755,13756,13758,13759,13760,20424,27668,27669,27671,27674,27676,27677,27678,27681,27682,27684,27685,27686,27687,27688,27690,27692,27694,27697,27698,27699,27700,27701,27702,27703,27704,27705,27706,27707,27708);

-- Fishing: basic rods, lures and bait
INSERT INTO `npc_vendor` (`entry`,`slot`,`item`,`maxcount`,`incrtime`,`ExtendedCost`) VALUES
(90031,0,6256,0,0,0),(90031,0,6529,0,0,0),(90031,0,6530,0,0,0),(90031,0,6532,0,0,0),
(90031,0,6533,0,0,0),(90031,0,6538,0,0,0),(90031,0,6539,0,0,0),(90031,0,6365,0,0,0),
(90031,0,6366,0,0,0),(90031,0,6367,0,0,0);

-- First Aid
INSERT INTO `npc_vendor` (`entry`,`slot`,`item`,`maxcount`,`incrtime`,`ExtendedCost`) VALUES
(90032,0,2581,0,0,0),(90032,0,2582,0,0,0),(90032,0,3530,0,0,0),(90032,0,3531,0,0,0),
(90032,0,6450,0,0,0),(90032,0,6451,0,0,0),(90032,0,14529,0,0,0),(90032,0,14530,0,0,0),
(90032,0,21990,0,0,0),(90032,0,21991,0,0,0),(90032,0,21992,0,0,0),(90032,0,21993,0,0,0);

-- NOTE: Premium Buffer 90001 remains the central buff NPC from 9001_npc_buffer.sql.
-- The Playertreff service NPCs are not spawned automatically to avoid forcing a location.

-- ---------------------------------------------------------------------------
-- Dynamic Eluna services and SQL-only trainers
-- ---------------------------------------------------------------------------
DROP PROCEDURE IF EXISTS `pt_clone_npc`;
DELIMITER //
CREATE PROCEDURE `pt_clone_npc`(IN new_entry INT UNSIGNED, IN new_name VARCHAR(100), IN new_subname VARCHAR(100), IN new_flags INT UNSIGNED)
BEGIN
  DROP TEMPORARY TABLE IF EXISTS `pt_npc`;
  CREATE TEMPORARY TABLE `pt_npc` LIKE `creature_template`;
  INSERT INTO `pt_npc` SELECT * FROM `creature_template` WHERE `entry`=90019;
  UPDATE `pt_npc` SET `entry`=new_entry, `name`=new_name,
    `NpcFlags`=new_flags, `ScriptName`='';
  DELETE FROM `creature_template` WHERE `entry`=new_entry;
  INSERT INTO `creature_template` SELECT * FROM `pt_npc`;
  DROP TEMPORARY TABLE `pt_npc`;
END//
DELIMITER ;

CALL `pt_clone_npc`(90000,'Reisemeister','Portale zum Playertreff',1);
CALL `pt_clone_npc`(90001,'Azerothischer Puffer','Kostenlose Segen',1);
CALL `pt_clone_npc`(90033,'Premium-Puffer','Segen fuer 5 Gold',1);
CALL `pt_clone_npc`(90034,'Waffenmeister','Klassengerechte Waffenfertigkeiten',1);

CALL `pt_clone_npc`(90040,'Kriegerlehrer','Krieger',16);
CALL `pt_clone_npc`(90041,'Paladinlehrer','Paladin',16);
CALL `pt_clone_npc`(90042,'Jaegerlehrer','Jaeger',16);
CALL `pt_clone_npc`(90043,'Schurkenlehrer','Schurke',16);
CALL `pt_clone_npc`(90044,'Priesterlehrer','Priester',16);
CALL `pt_clone_npc`(90045,'Schamanenlehrer','Schamane',16);
CALL `pt_clone_npc`(90046,'Magierlehrer','Magier',16);
CALL `pt_clone_npc`(90047,'Hexenmeisterlehrer','Hexenmeister',16);
CALL `pt_clone_npc`(90048,'Druidenlehrer','Druide',16);

CALL `pt_clone_npc`(90050,'Alchemielehrer','Alchemie',16);
CALL `pt_clone_npc`(90051,'Schmiedelehrer','Schmiedekunst',16);
CALL `pt_clone_npc`(90052,'Verzauberungslehrer','Verzauberkunst',16);
CALL `pt_clone_npc`(90053,'Ingenieurslehrer','Ingenieurskunst',16);
CALL `pt_clone_npc`(90054,'Juwelenschleiferlehrer','Juwelenschleifen',16);
CALL `pt_clone_npc`(90055,'Lederverarbeitungslehrer','Lederverarbeitung',16);
CALL `pt_clone_npc`(90056,'Schneiderlehrer','Schneiderei',16);
CALL `pt_clone_npc`(90057,'Kraeuterkundelehrer','Kraeuterkunde',16);
CALL `pt_clone_npc`(90058,'Bergbaulehrer','Bergbau',16);
CALL `pt_clone_npc`(90059,'Kuerschnereilehrer','Kuerschnerei',16);
CALL `pt_clone_npc`(90060,'Kochlehrer','Kochen',16);
CALL `pt_clone_npc`(90061,'Angellehrer','Angeln',16);
CALL `pt_clone_npc`(90062,'Erste-Hilfe-Lehrer','Erste Hilfe',16);
DROP PROCEDURE `pt_clone_npc`;

UPDATE `creature_template` SET `TrainerType`=0 WHERE `Entry` BETWEEN 90040 AND 90048;
UPDATE `creature_template` SET `TrainerType`=2 WHERE `Entry` BETWEEN 90050 AND 90062;

DELETE FROM `npc_trainer` WHERE `entry` BETWEEN 90040 AND 90062;
INSERT INTO `npc_trainer` (`entry`,`spell`,`spellcost`,`reqskill`,`reqskillvalue`,`reqlevel`)
SELECT 90040,`spell`,`spellcost`,`reqskill`,`reqskillvalue`,`reqlevel` FROM `npc_trainer` WHERE `entry`=914;
INSERT INTO `npc_trainer` (`entry`,`spell`,`spellcost`,`reqskill`,`reqskillvalue`,`reqlevel`) SELECT 90041,`spell`,`spellcost`,`reqskill`,`reqskillvalue`,`reqlevel` FROM `npc_trainer` WHERE `entry`=928;
INSERT INTO `npc_trainer` (`entry`,`spell`,`spellcost`,`reqskill`,`reqskillvalue`,`reqlevel`) SELECT 90042,`spell`,`spellcost`,`reqskill`,`reqskillvalue`,`reqlevel` FROM `npc_trainer` WHERE `entry`=5117;
INSERT INTO `npc_trainer` (`entry`,`spell`,`spellcost`,`reqskill`,`reqskillvalue`,`reqlevel`) SELECT 90043,`spell`,`spellcost`,`reqskill`,`reqskillvalue`,`reqlevel` FROM `npc_trainer` WHERE `entry`=918;
INSERT INTO `npc_trainer` (`entry`,`spell`,`spellcost`,`reqskill`,`reqskillvalue`,`reqlevel`) SELECT 90044,`spell`,`spellcost`,`reqskill`,`reqskillvalue`,`reqlevel` FROM `npc_trainer` WHERE `entry`=376;
INSERT INTO `npc_trainer` (`entry`,`spell`,`spellcost`,`reqskill`,`reqskillvalue`,`reqlevel`) SELECT 90045,`spell`,`spellcost`,`reqskill`,`reqskillvalue`,`reqlevel` FROM `npc_trainer` WHERE `entry`=5882;
INSERT INTO `npc_trainer` (`entry`,`spell`,`spellcost`,`reqskill`,`reqskillvalue`,`reqlevel`) SELECT 90046,`spell`,`spellcost`,`reqskill`,`reqskillvalue`,`reqlevel` FROM `npc_trainer` WHERE `entry`=5497;
INSERT INTO `npc_trainer` (`entry`,`spell`,`spellcost`,`reqskill`,`reqskillvalue`,`reqlevel`) SELECT 90047,`spell`,`spellcost`,`reqskill`,`reqskillvalue`,`reqlevel` FROM `npc_trainer` WHERE `entry`=5495;
INSERT INTO `npc_trainer` (`entry`,`spell`,`spellcost`,`reqskill`,`reqskillvalue`,`reqlevel`) SELECT 90048,`spell`,`spellcost`,`reqskill`,`reqskillvalue`,`reqlevel` FROM `npc_trainer` WHERE `entry`=4217;

INSERT INTO `npc_trainer` (`entry`,`spell`,`spellcost`,`reqskill`,`reqskillvalue`,`reqlevel`) SELECT 90050,`spell`,`spellcost`,`reqskill`,`reqskillvalue`,`reqlevel` FROM `npc_trainer` WHERE `entry`=1386;
INSERT INTO `npc_trainer` (`entry`,`spell`,`spellcost`,`reqskill`,`reqskillvalue`,`reqlevel`) SELECT 90051,`spell`,`spellcost`,`reqskill`,`reqskillvalue`,`reqlevel` FROM `npc_trainer` WHERE `entry`=4258;
INSERT INTO `npc_trainer` (`entry`,`spell`,`spellcost`,`reqskill`,`reqskillvalue`,`reqlevel`) SELECT 90052,`spell`,`spellcost`,`reqskill`,`reqskillvalue`,`reqlevel` FROM `npc_trainer` WHERE `entry`=1317;
INSERT INTO `npc_trainer` (`entry`,`spell`,`spellcost`,`reqskill`,`reqskillvalue`,`reqlevel`) SELECT 90053,`spell`,`spellcost`,`reqskill`,`reqskillvalue`,`reqlevel` FROM `npc_trainer` WHERE `entry`=5518;
INSERT INTO `npc_trainer` (`entry`,`spell`,`spellcost`,`reqskill`,`reqskillvalue`,`reqlevel`) SELECT 90054,`spell`,`spellcost`,`reqskill`,`reqskillvalue`,`reqlevel` FROM `npc_trainer` WHERE `entry`=19063;
INSERT INTO `npc_trainer` (`entry`,`spell`,`spellcost`,`reqskill`,`reqskillvalue`,`reqlevel`) SELECT 90055,`spell`,`spellcost`,`reqskill`,`reqskillvalue`,`reqlevel` FROM `npc_trainer` WHERE `entry`=11097;
INSERT INTO `npc_trainer` (`entry`,`spell`,`spellcost`,`reqskill`,`reqskillvalue`,`reqlevel`) SELECT 90056,`spell`,`spellcost`,`reqskill`,`reqskillvalue`,`reqlevel` FROM `npc_trainer` WHERE `entry`=1346;
INSERT INTO `npc_trainer` (`entry`,`spell`,`spellcost`,`reqskill`,`reqskillvalue`,`reqlevel`) SELECT 90057,`spell`,`spellcost`,`reqskill`,`reqskillvalue`,`reqlevel` FROM `npc_trainer` WHERE `entry`=812;
INSERT INTO `npc_trainer` (`entry`,`spell`,`spellcost`,`reqskill`,`reqskillvalue`,`reqlevel`) SELECT 90058,`spell`,`spellcost`,`reqskill`,`reqskillvalue`,`reqlevel` FROM `npc_trainer` WHERE `entry`=4254;
INSERT INTO `npc_trainer` (`entry`,`spell`,`spellcost`,`reqskill`,`reqskillvalue`,`reqlevel`) SELECT 90059,`spell`,`spellcost`,`reqskill`,`reqskillvalue`,`reqlevel` FROM `npc_trainer` WHERE `entry`=1292;
INSERT INTO `npc_trainer` (`entry`,`spell`,`spellcost`,`reqskill`,`reqskillvalue`,`reqlevel`) SELECT 90060,`spell`,`spellcost`,`reqskill`,`reqskillvalue`,`reqlevel` FROM `npc_trainer` WHERE `entry`=8306;
INSERT INTO `npc_trainer` (`entry`,`spell`,`spellcost`,`reqskill`,`reqskillvalue`,`reqlevel`) SELECT 90061,`spell`,`spellcost`,`reqskill`,`reqskillvalue`,`reqlevel` FROM `npc_trainer` WHERE `entry`=3607;
INSERT INTO `npc_trainer` (`entry`,`spell`,`spellcost`,`reqskill`,`reqskillvalue`,`reqlevel`) SELECT 90062,`spell`,`spellcost`,`reqskill`,`reqskillvalue`,`reqlevel` FROM `npc_trainer` WHERE `entry`=2326;
