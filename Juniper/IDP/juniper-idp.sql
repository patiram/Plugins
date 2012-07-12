INSERT INTO plugin(id, type, name, description, source_type, vendor) VALUES (9912, 2, 'IDP', 'Juniper IDP', 'IDP', 'Juniper');
INSERT INTO plugin_sid(plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9912, 1, NULL, NULL, "IDP INFO: USERDATA1", 1, 2);
INSERT INTO plugin_sid(plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9912, 2, NULL, NULL, "IDP MINOR: USERDATA1", 2, 2);
INSERT INTO plugin_sid(plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9912, 3, NULL, NULL, "IDP MAJOR: USERDATA1", 3, 2);
INSERT INTO plugin_sid(plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9912, 4, NULL, NULL, "IDP CRITICAL: USERDATA1", 4, 2);
