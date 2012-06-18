-- fw1 ngx
-- Firewall-1 Checkpoint NGX
-- plugin_id: 1504
--
-- $Id $
--
-- Eventos De Auditoria Agregados a partir del SID 15
DELETE FROM plugin WHERE id = "1504";
DELETE FROM plugin_sid where plugin_id = "1504";
INSERT INTO plugin(id, type, name, description) VALUES (1504, 1, 'fw1ngr60', 'Firewall Checkpoint');

INSERT INTO `plugin_sid` VALUES (1504,1,3,0,2,0,'fw1ngr60: Accept','0.0000',75);
INSERT INTO `plugin_sid` VALUES (1504,2,3,0,2,3,'fw1ngr60: Reject','0.0000',76);
INSERT INTO `plugin_sid` VALUES (1504,3,3,0,2,3,'fw1ngr60: Drop','0.0000',76);
INSERT INTO `plugin_sid` VALUES (1504,6,3,0,1,1,'fw1ngr60: Monitor','0.0000',121);
INSERT INTO `plugin_sid` VALUES (1504,7,3,0,1,2,'fw1ngr60: Encrypt','0.0000',132);
INSERT INTO `plugin_sid` VALUES (1504,8,3,0,1,2,'fw1ngr60: Decrypt','0.0000',132);
INSERT INTO `plugin_sid` VALUES (1504,9,3,0,1,2,'fw1ngr60: AuthCrypt','0.0000',132);
INSERT INTO `plugin_sid` VALUES (1504,10,3,0,1,2,'fw1ngr60: Ctl','0.0000',121);
INSERT INTO `plugin_sid` VALUES (1504,11,3,0,1,2,'fw1ngr60: KeyInstall','0.0000',132);
INSERT INTO `plugin_sid` VALUES (1504,12,3,0,3,2,'fw1ngr60: Deauthorize','0.0000',121);
INSERT INTO `plugin_sid` VALUES (1504,14,3,0,2,4,'fw1ngr60: Alert','0.0000',121);

INSERT INTO `plugin_sid` VALUES (1504,15,0,0,1,1,'fw1ngr60: Dashboard/ViewTracker - Login','0.0000',NULL);
INSERT INTO `plugin_sid` VALUES (1504,16,0,0,1,1,'fw1ngr60: Dashboard/ViewTracker - Logout','0.0000',NULL);
INSERT INTO `plugin_sid` VALUES (1504,17,0,0,1,1,'fw1ngr60: Dashboard - Modify Object','0.0000',NULL);
INSERT INTO `plugin_sid` VALUES (1504,18,0,0,1,1,'fw1ngr60: Dashboard - Policy Install','0.0000',NULL);
INSERT INTO `plugin_sid` VALUES (1504,19,0,0,1,1,'fw1ngr60: Dashboard - Create Object','0.0000',NULL);
INSERT INTO `plugin_sid` VALUES (1504,20,0,0,1,1,'fw1ngr60: ViewTracker - File Retrieved','0.0000',NULL);
INSERT INTO `plugin_sid` VALUES (1504,21,0,0,1,1,'fw1ngr60: Dashboard - File Retrieved','0.0000',NULL);
INSERT INTO `plugin_sid` VALUES (1504,22,0,0,1,1,'fw1ngr60: ViewTracker - Log Export','0.0000',NULL);
INSERT INTO `plugin_sid` VALUES (1504,23,0,0,1,1,'fw1ngr60: Dashboard - Delete Object','0.0000',NULL);
INSERT INTO `plugin_sid` VALUES (1504,24,0,0,1,1,'fw1ngr60: Dashboard - Set Session','0.0000',NULL);
INSERT INTO `plugin_sid` VALUES (1504,25,0,0,1,1,'fw1ngr60: Dashboard - Force Log Out','0.0000',NULL);

INSERT INTO `plugin_sid` VALUES (1504,99,3,0,1,1,'fw1ngr60: unknown event','0.0000',121);
INSERT INTO `plugin_sid` VALUES (1504,20000000,3,0,2,2,'fw1ngr60:  Demo event (limit reached)','0.0000',0);
INSERT INTO `plugin_sid` VALUES (1504,2000000000,3,0,2,2,'fw1ngr60: Generic event','0.0000',0);