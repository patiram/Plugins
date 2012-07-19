-- fortinet / fortimail
-- plugin_id: 9555
--
-- $Id: fortimail.sql,v 1.15 2010/03/15 11:43:43 dcanet Exp $
--
-- TODO: complete description for all sids using FortiOS Log Message Reference

DELETE FROM plugin where id = "9555";
DELETE FROM plugin_sid where plugin_id = "9555";

INSERT IGNORE INTO plugin (id, type, name, description, product_type) VALUES('9555','1','Fortimail','Fortinet / Fortimail','15');
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, subcategory_id, priority, reliability, name) VALUES('9555','5','11','138','1','1','Fortimail: Update');
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, subcategory_id, priority, reliability, name) VALUES('9555','8','13','175','1','1','Fortimail: SMTP');
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, subcategory_id, priority, reliability, name) VALUES('9555','99','13','175','1','1','Fortimail: Generic Event');
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, subcategory_id, priority, reliability, name) VALUES('9555','100','4','96','5','4','Fortimail: Virus');
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, subcategory_id, priority, reliability, name) VALUES('9555','200','13','175','1','1','Fortimail: Statistics');
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, subcategory_id, priority, reliability, name) VALUES('9555','300','13','149','2','3','Fortimail: SPAM');
