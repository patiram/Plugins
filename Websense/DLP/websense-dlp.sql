-- websense dlp
-- plugin_id: 9101
--

-- DELETE FROM plugin WHERE id = "9101";
-- DELETE FROM plugin_sid where plugin_id = "9101";

INSERT IGNORE INTO plugin (id, type, name, description) VALUES (9101, 1, 'websense-dlp', 'Websense / DLP');

INSERT IGNORE INTO `plugin_sid` (`plugin_id`, `sid`, `category_id`, `class_id`, `name`, priority, reliability) VALUES(9101, 1, NULL, NULL, 'Websense DLP: Permitted', 2, 2);
INSERT IGNORE INTO `plugin_sid` (`plugin_id`, `sid`, `category_id`, `class_id`, `name`, priority, reliability) VALUES(9101, 2, NULL, NULL, 'Websense DLP: Encrypt', 2, 2);
INSERT IGNORE INTO `plugin_sid` (`plugin_id`, `sid`, `category_id`, `class_id`, `name`, priority, reliability) VALUES(9101, 3, NULL, NULL, 'Websense DLP: Quarantine', 2, 2);
