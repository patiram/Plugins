
INSERT IGNORE INTO plugin (id, type, name, description) VALUES (9876, 1, 'Apache Catalina', 'Catalina');
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9876, 1, NULL, NULL, 'Catalina Message USERDATA3' , 3, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9876, 2, NULL, NULL, 'Catalina Message USERDATA3' , 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9876, 3, NULL, NULL, 'Catalina Message USERDATA3' , 1, 2);
