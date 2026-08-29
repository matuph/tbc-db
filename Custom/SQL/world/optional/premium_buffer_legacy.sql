-- ============================================================================
-- OPTIONAL CUSTOM: Premium Buffer NPC
-- CMaNGOS TBC 2.4.3
-- Entry: 90033
-- Script: npc_premium_buffer
-- Cost: 5 gold
-- ============================================================================

SET @Entry := 90033;

DELETE FROM `creature_template` WHERE `entry` = @Entry;

INSERT INTO `creature_template`
(`entry`, `heroic_entry`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`,
 `name`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`,
 `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`,
 `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `baseattacktime`, `rangeattacktime`,
 `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `class`, `race`,
 `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`,
 `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`,
 `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`,
 `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`,
 `RacialLeader`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`,
 `ScriptName`)
VALUES
(@Entry, 0, 2240, 0, 2240, 0,
 'Premium-Buffbot', 70, 70,
 10000, 10000, 5000, 5000,
 1000, 35, 35, 1, 1.0, 1.0, 0,
 1, 2, 0, 0, 2000, 2000,
 0, 0, 0, 0, 0, 1, 0,
 0, 0, 0, 7, 0,
 0, 0, 0, 0, 0, 0,
 0, 0, 0, 0, 0, 0, 0,
 0, 0, 0, 0,
 '', 0, 3, 0, 1, 0, 0, 0,
 'npc_premium_buffer');

-- No automatic spawn. Example:
-- .npc add 90033
