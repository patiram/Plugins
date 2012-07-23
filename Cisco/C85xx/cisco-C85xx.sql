
INSERT IGNORE INTO plugin (id, type, name, description) VALUES (9512, 1, 'Cisco C85xx', 'C85xx');
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9512, 1, NULL, NULL, 'C85xx Message USERDATA2' , 3, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9512, 2, NULL, NULL, 'C85xx Message USERDATA2' , 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9512, 3, NULL, NULL, 'C85xx Message USERDATA2' , 1, 2);
