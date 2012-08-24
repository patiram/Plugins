
INSERT IGNORE INTO plugin (id, type, name, description) VALUES (9920, 1, 'IBM Guardium', 'Guardium');
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9920, 1, NULL, NULL, 'Guardium Alert: USERDATA9' , 3, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9920, 2, NULL, NULL, 'Guardium Alert: USERDATA9' , 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9920, 3, NULL, NULL, 'Guardium Alert: USERDATA9' , 1, 2);
