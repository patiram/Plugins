
INSERT IGNORE INTO plugin (id, type, name, description) VALUES (9915, 1, 'AcmePacket VOIP', 'VOIP');
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9915, 1, NULL, NULL, 'AcmePacket VOIP: USERDATA8' , 3, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9915, 2, NULL, NULL, 'AcmePacket VOIP: USERDATA8' , 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9915, 3, NULL, NULL, 'AcmePacket VOIP: USERDATA8' , 1, 2);
