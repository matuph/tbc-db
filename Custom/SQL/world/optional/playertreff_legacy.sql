-- ============================================================================
-- OPTIONAL CUSTOM: Playertreff
-- CMaNGOS TBC 2.4.3
--
-- This optional installer reuses the validated Playertreff update already
-- maintained in Updates/9002_playertreff.sql.
--
-- Run this file from the repository root with the MySQL client. SOURCE is a
-- MySQL client command, not a server-side SQL statement.
-- ============================================================================

SOURCE Custom/SQL/world/install/playertreff.sql;

-- Playertreff NPCs:
-- 90010 Dungeonmeister I
-- 90011 Dungeonmeister II
-- 90012 Dungeonmeister III
-- 90013 Ruestungsmeister
-- 90014 Waffenmeister
-- 90015 Juwelier
-- 90016 Taschenhaendler
-- 90017 Mount-Haendler
-- 90018 Gildenbankier
-- 90019 Berufsmeister
-- 90020-90032 Berufsmaterialien
--
-- The NPCs are intentionally not spawned automatically.
