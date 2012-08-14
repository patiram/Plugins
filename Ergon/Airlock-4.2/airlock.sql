-- airlock
-- plugin_id: 1641

DELETE FROM plugin WHERE id = 1641;
DELETE FROM plugin_sid where plugin_id = 1641;

INSERT IGNORE INTO plugin (id, type, name, description) VALUES (1641, 1, 'airlock', 'Airlock Reverse Proxy');

INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (1641, 1, NULL, NULL, 'Airlock: USERDATA2 USERDATA4', 3, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (1641, 1, NULL, NULL, 'Airlock: USERDATA2 USERDATA4', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (1641, 1, NULL, NULL, 'Airlock: USERDATA2 USERDATA4', 1, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (1641, 999, NULL, NULL, 'Airlock: Default', 1, 1);
