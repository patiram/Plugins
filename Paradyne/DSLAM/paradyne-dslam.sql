
INSERT IGNORE INTO plugin (id, type, name, description) VALUES (9511, 1, 'Paradyne DSLM', 'DSLM');
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9511, 1, NULL, NULL, 'DSLM Message USERDATA2' , 3, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9511, 2, NULL, NULL, 'DSLM Message USERDATA2' , 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9511, 3, NULL, NULL, 'DSLM Message USERDATA2' , 1, 2);
