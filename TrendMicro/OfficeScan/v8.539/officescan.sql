-- Antivirus TrendMicro-OfficeScan v8.539
-- plugin_id=90032
--
--
-- $Id: officeScan.sql,v 1.0 01/03/2012

DELETE FROM plugin WHERE id = "90032";
DELETE FROM plugin_sid where plugin_id = "90032";

INSERT INTO plugin(id, type, name, description) VALUES (90032, 1, 'OfficeScan', 'Antivirus');

INSERT INTO plugin_sid (plugin_id, sid, category_id, class_id, name) VALUES (90032, 1, NULL, NULL, 'OfficeScan: Virus/Malware');
INSERT INTO plugin_sid (plugin_id, sid, category_id, class_id, name) VALUES (90032, 2, NULL, NULL, 'OfficeScan: Spyware/Grayware');
