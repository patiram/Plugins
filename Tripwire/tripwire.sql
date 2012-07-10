
INSERT IGNORE INTO plugin (id, type, name, description) VALUES (9123, 1, 'Tripwire', 'Tripwire Plugin');

INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9123, 0, NULL, NULL, 'Tripwire: Audit Event' , 1, 1);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9123, 1, NULL, NULL, 'Tripwire: Rule Change' , 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9123, 2, NULL, NULL, 'Tripwire: Security' , 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9123, 3, NULL, NULL, 'Tripwire: Agent Discovery' , 1, 1);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9123, 4, NULL, NULL, 'Tripwire: Node Change' , 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9123, 5, NULL, NULL, 'Tripwire: System' , 1, 1);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9123, 6, NULL, NULL, 'Tripwire: Asset View Change' , 1, 1);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9123, 7, NULL, NULL, 'Tripwire: Element Check' , 1, 1);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9123, 8, NULL, NULL, 'Tripwire: Task Run' , 1, 1);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9123, 9, NULL, NULL, 'Tripwire: Action' , 1, 1);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9123, 10, NULL, NULL, 'Tripwire: Removed' , 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9123, 11, NULL, NULL, 'Tripwire: Modified' , 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9123, 12, NULL, NULL, 'Tripwire: Added' , 1, 1);
