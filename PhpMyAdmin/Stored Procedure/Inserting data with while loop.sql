/*
    inserting data up to 1000 records using while loop.
 */

DELIMITER $$
DROP PROCEDURE IF EXISTS procedure_name; $$
CREATE PROCEDURE procedure_name(IN p_cur INT, IN p_max INT)
BEGIN
    TRUNCATE TABLE `table_name`;
    START TRANSACTION;
    WHILE p_cur <= p_max do
        INSERT INTO table_name (column_name) VALUES (CONCAT('value', p_cur));
        SET p_cur = p_cur + 1;
    END WHILE;
    COMMIT;
END; $$
DELIMITER ;
CALL procedure_name(1,1000);