
INSERT IGNORE INTO plugin (id, type, name, description) VALUES (9519, 1, 'Brocade FCX', 'FCX v7.2');
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9519, 1, NULL, NULL, 'FCX USERDATA3 Event' , 1, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9519, 2, NULL, NULL, 'FCX Interface USERDATA3 Event ' , 1, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9519, 3, NULL, NULL, 'FCX Login / Logout Event' , 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9519, 4, NULL, NULL, 'FCX USERDATA8 Event' , 1, 2);
