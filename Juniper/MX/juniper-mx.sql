INSERT INTO plugin(id, type, name, description, source_type, vendor) VALUES (93001, 1, 'Juniper-MX', 'Juniper MX', 'Switch/Router', 'Juniper');
INSERT INTO plugin_sid(plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (93001, 1, NULL, NULL, "Juniper: Login Attempts Threadhold Reached",  3, 2);
INSERT INTO plugin_sid(plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (93001, 2, NULL, NULL, "Juniper: Login Failed",  2, 2);
INSERT INTO plugin_sid(plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (93001, 4, NULL, NULL, "Juniper: Login Information",  3, 2);
INSERT INTO plugin_sid(plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (93001, 5, NULL, NULL, "Juniper: Possible DDOS attack",  3, 3);
INSERT INTO plugin_sid(plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (93001, 6, NULL, NULL, "Juniper: CHASSISD event",  1, 2);


