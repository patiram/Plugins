-- DELETE FROM plugin WHERE id = "9003";
-- DELETE FROM plugin_sid where plugin_id = "9003";



INSERT IGNORE INTO plugin (id, type, name, description) VALUES (9003, 1, 'W2003DNS', 'W2003DNS');



INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9003, 0000, NULL, NULL, 'W2003DNS: Reply' ,1, 1);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9003, 0001, NULL, NULL, 'W2003DNS: Question' ,1, 1);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9003, 8281, NULL, NULL, 'W2003DNS: ServFail reply' ,1, 3);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9003, 8385, NULL, NULL, 'W2003DNS: NXDomain reply' ,1, 3);
