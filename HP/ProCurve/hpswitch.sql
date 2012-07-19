DELETE FROM plugin where id = "9556";
DELETE FROM plugin_sid where plugin_id = "9556";

INSERT IGNORE INTO plugin (id, type, name, description, product_type) VALUES('9556','1','hpswitch','HP Switch','24');

INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, subcategory_id, priority, reliability, name) VALUES('9556','1','11','134','1','1','HP Switch: Port Up');
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, subcategory_id, priority, reliability, name) VALUES('9556','2','11','134','1','1','HP Switch: Port Down');
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, subcategory_id, priority, reliability, name) VALUES('9556','3','11','141','3','2','HP Switch: High collision or drop rate');
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, subcategory_id, priority, reliability, name) VALUES('9556','4','11','134','2','1','HP Switch: Excessive broadcasts');
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, subcategory_id, priority, reliability, name) VALUES('9556','5','2','25','2','1','HP Switch: Authentication failed');
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, subcategory_id, priority, reliability, name) VALUES('9556','6','2','24','1','1','HP Switch: Successful authentication');
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, subcategory_id, priority, reliability, name) VALUES('9556','99','10','71','1','1','HP Switch: Generic event');
