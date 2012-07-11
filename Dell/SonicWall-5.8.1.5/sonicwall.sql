INSERT INTO plugin(id, type, name, description, source_type, vendor) VALUES (9911, 2, 'Sonic Wall', 'Dells SonicWall', 'SonicWall', 'Dell');
INSERT INTO plugin_sid(plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9911, 1, NULL, NULL, "Sonic Wall INFO: USERDATA1", 1, 2);
INSERT INTO plugin_sid(plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9911, 2, NULL, NULL, "Sonic Wall MSG: USERDATA1", 2, 2);
INSERT INTO plugin_sid(plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9911, 3, NULL, NULL, "Sonic Wall WARNING: USERDATA1", 3, 2);
INSERT INTO plugin_sid(plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9911, 4, NULL, NULL, "Sonic Wall CRIT: USERDATA1", 4, 2);
