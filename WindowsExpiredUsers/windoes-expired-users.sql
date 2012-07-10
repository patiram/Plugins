-- WindowsExpiredUsers
-- plugin_id: 9005

DELETE FROM plugin WHERE id = "9005";
DELETE FROM plugin_sid where plugin_id = "9005";

INSERT IGNORE INTO plugin (id, type, name, description) VALUES (9005, 1, 'WindowsExpiredUsers', 'Windows Expired Users plugin');

INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9005, 1, NULL, NULL, 'WindowsExpiredUsers: WindowsExpiredUsers entry' , 0, 1);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9005, 900, NULL, NULL, 'WindowsExpiredUsers: Unrecognized Entry' , 0, 1);

