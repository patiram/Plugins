-- OpenVPN 9050
-- plugin_id: 9050

DELETE FROM plugin WHERE id = "9050";
DELETE FROM plugin_sid where plugin_id = "9050";

INSERT IGNORE INTO plugin (id, type, name, description) VALUES (9050, 1, 'OpenVPN', 'Open Virtual Private Network');

INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9050, 1, NULL, NULL, 'OpenVPN: site-to-site connection ok', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9050, 2, NULL, NULL, 'OpenVPN: remote-access connection ok', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9050, 3, NULL, NULL, 'OpenVPN: TLS: key expired', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9050, 4, NULL, NULL, 'OpenVPN: Inactivity timeout', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9050, 5, NULL, NULL, 'OpenVPN: No route to host', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9050, 6, NULL, NULL, 'OpenVPN: RA client disconnected', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9050, 7, NULL, NULL, 'OpenVPN: Generic', 2, 2);
