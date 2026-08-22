-- ============================================================================
-- OPTIONAL CUSTOM: Playertreff NPC flags
-- CMaNGOS TBC 2.4.3
-- ============================================================================

UPDATE `creature_template`
SET `npcflag` = 128
WHERE `entry` BETWEEN 90010 AND 90017
   OR `entry` BETWEEN 90020 AND 90032;

UPDATE `creature_template`
SET `npcflag` = 8388608
WHERE `entry` = 90018;

UPDATE `creature_template`
SET `npcflag` = 81
WHERE `entry` = 90019;
