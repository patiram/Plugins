-- Puppet Plus
-- plugin_id: 9920

DELETE FROM plugin WHERE id = "9920";
DELETE FROM plugin_sid where plugin_id = "9920";

INSERT IGNORE INTO plugin (id, type, name, description) VALUES (9920, 1, 'Puppet', 'Puppet Server');

INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9920, 1, Null, NULL, 'Puppet Deprecation Notice', 1, 1);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9920, 2, Null, Null, 'Puppet Cron Event', 1, 1);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9920, 3, Null, NULL, 'Puppet License', 1, 1);


