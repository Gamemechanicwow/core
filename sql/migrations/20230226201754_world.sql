DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20230226201754');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20230226201754');
-- Add your query below.

INSERT INTO `warden_scans` (`id`, `type`, `str`, `data`, `address`, `length`, `result`, `flags`, `penalty`, `comment`) VALUES (93, 0, NULL, NULL, 4367182, 4, '72043BF1', 2, -1, 'oGasai');

-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
