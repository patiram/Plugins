-- Zabbix Plus
-- plugin_id: 9910

DELETE FROM plugin WHERE id = "9910";
DELETE FROM plugin_sid where plugin_id = "9910";

INSERT IGNORE INTO plugin (id, type, name, description) VALUES (9910, 1, 'zabbix', 'Zabbix Server');

INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9901, 1, 16, NULL, 'Resuming agent checks', 1, 1);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9901, 2, 16, 179, 'Zabbix Agent Item', 1, 1);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9901, 3, 16, NULL, 'Executing HouseKeeper', 1, 1);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9901, 4, 16, NULL, 'HouseKeeper deleted', 1, 1);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9901, 5, 16, NULL, 'Mysql server has gone away', 1, 1);

