-- ESX Plugin
-- plugin_id=19200
--
--
-- $Id: esx.cfg,v 1.0 01/11/2011 by Jesus Ballesteros

DELETE FROM plugin WHERE id = "19200";
DELETE FROM plugin_sid where plugin_id = "19200";
INSERT INTO plugin(id, type, name, description) VALUES (19200, 1, 'Novell Identity Manager', 'Novell Identity Manager Events');
INSERT INTO plugin_sid (plugin_id, sid, category_id, class_id, name) VALUES (19200, 1, NULL, NULL, 'Identity Manager Event: Create a new account ');
INSERT INTO plugin_sid (plugin_id, sid, category_id, class_id, name) VALUES (19200, 2, NULL, NULL, 'Identity Manager Event: Delete an existing account');
INSERT INTO plugin_sid (plugin_id, sid, category_id, class_id, name) VALUES (19200, 3, NULL, NULL, 'Identity Manager Event: Disable an existing account');
INSERT INTO plugin_sid (plugin_id, sid, category_id, class_id, name) VALUES (19200, 4, NULL, NULL, 'Identity Manager Event: Enable an existing
account');
INSERT INTO plugin_sid (plugin_id, sid, category_id, class_id, name) VALUES (19200, 5, NULL, NULL, 'Identity Manager Event: Query an existing
account
');
INSERT INTO plugin_sid (plugin_id, sid, category_id, class_id, name) VALUES (19200, 6, NULL, NULL, 'Identity Manager Event: Modify an existing account');
INSERT INTO plugin_sid (plugin_id, sid, category_id, class_id, name) VALUES (19200, 7, NULL, NULL, 'Identity Manager Event: Modify an existing
account security token');
INSERT INTO plugin_sid (plugin_id, sid, category_id, class_id, name) VALUES (19200, 8, NULL, NULL, 'Identity Manager Event: Create a new
session');
INSERT INTO plugin_sid (plugin_id, sid, category_id, class_id, name) VALUES (19200, 9, NULL, NULL, 'Identity Manager Event: Terminate an
existing session');
INSERT INTO plugin_sid (plugin_id, sid, category_id, class_id, name) VALUES (19200, 10, NULL, NULL, 'Identity Manager Event: Query user session attributes');
INSERT INTO plugin_sid (plugin_id, sid, category_id, class_id, name) VALUES (19200, 11, NULL, NULL, 'Identity Manager Event: Modify user session attributes');
INSERT INTO plugin_sid (plugin_id, sid, category_id, class_id, name) VALUES (19200, 12, NULL, NULL, 'Identity Manager Event: Create a data item');
INSERT INTO plugin_sid (plugin_id, sid, category_id, class_id, name) VALUES (19200, 13, NULL, NULL, 'Identity Manager Event: Delete a data item');
INSERT INTO plugin_sid (plugin_id, sid, category_id, class_id, name) VALUES (19200, 14, NULL, NULL, 'Identity Manager Event: Query data item attributes');
INSERT INTO plugin_sid (plugin_id, sid, category_id, class_id, name) VALUES (19200, 15, NULL, NULL, 'Identity Manager Event: Modify data item 
attributes');
INSERT INTO plugin_sid (plugin_id, sid, category_id, class_id, name) VALUES (19200, 16, NULL, NULL, 'Identity Manager Event: Install a service or 
application');
INSERT INTO plugin_sid (plugin_id, sid, category_id, class_id, name) VALUES (19200, 17, NULL, NULL, 'Identity Manager Event: Remove a service 
or application 
');
INSERT INTO plugin_sid (plugin_id, sid, category_id, class_id, name) VALUES (19200, 18, NULL, NULL, 'Identity Manager Event: Query the  configuration of a service or application');
INSERT INTO plugin_sid (plugin_id, sid, category_id, class_id, name) VALUES (19200, 19, NULL, NULL, 'Identity Manager Event: Modify 
configuration of a service or application ');
INSERT INTO plugin_sid (plugin_id, sid, category_id, class_id, name) VALUES (19200, 20, NULL, NULL, 'Identity Manager Event: Disable a service or application ');
INSERT INTO plugin_sid (plugin_id, sid, category_id, class_id, name) VALUES (19200, 21, NULL, NULL, 'Identity Manager Event: Enable a service or application');
INSERT INTO plugin_sid (plugin_id, sid, category_id, class_id, name) VALUES (19200, 22, NULL, NULL, 'Identity Manager Event: Invoke a service or application');
INSERT INTO plugin_sid (plugin_id, sid, category_id, class_id, name) VALUES (19200, 23, NULL, NULL, 'Identity Manager Event: Terminate a service or application');
INSERT INTO plugin_sid (plugin_id, sid, category_id, class_id, name) VALUES (19200, 24, NULL, NULL, 'Identity Manager Event: Query a processing
context');
INSERT INTO plugin_sid (plugin_id, sid, category_id, class_id, name) VALUES (19200, 25, NULL, NULL, 'Identity Manager Event: Modify processing context');
INSERT INTO plugin_sid (plugin_id, sid, category_id, class_id, name) VALUES (19200, 26, NULL, NULL, 'Identity Manager Event: Create an
association with a peer');
INSERT INTO plugin_sid (plugin_id, sid, category_id, class_id, name) VALUES (19200, 27, NULL, NULL, 'Identity Manager Event: Terminate an
association with a peer');
INSERT INTO plugin_sid (plugin_id, sid, category_id, class_id, name) VALUES (19200, 28, NULL, NULL, 'Identity Manager Event: Query an association context');
INSERT INTO plugin_sid (plugin_id, sid, category_id, class_id, name) VALUES (19200, 29, NULL, NULL, 'Identity Manager Event: Modify an association context');
INSERT INTO plugin_sid (plugin_id, sid, category_id, class_id, name) VALUES (19200, 30, NULL, NULL, 'Identity Manager Event: Receive data via an association');
INSERT INTO plugin_sid (plugin_id, sid, category_id, class_id, name) VALUES (19200, 31, NULL, NULL, 'Identity Manager Event: Send data via an
association');
INSERT INTO plugin_sid (plugin_id, sid, category_id, class_id, name) VALUES (19200, 32, NULL, NULL, 'Identity Manager Event: Create association
with a data item');
INSERT INTO plugin_sid (plugin_id, sid, category_id, class_id, name) VALUES (19200, 33, NULL, NULL, 'Identity Manager Event: Terminate association with a data item');
INSERT INTO plugin_sid (plugin_id, sid, category_id, class_id, name) VALUES (19200, 34, NULL, NULL, 'Identity Manager Event: Query context of  association with a data item');
INSERT INTO plugin_sid (plugin_id, sid, category_id, class_id, name) VALUES (19200, 35, NULL, NULL, 'Identity Manager Event: Modify context of  association with data item');
INSERT INTO plugin_sid (plugin_id, sid, category_id, class_id, name) VALUES (19200, 36, NULL, NULL, 'Identity Manager Event: Query data item  contents');
INSERT INTO plugin_sid (plugin_id, sid, category_id, class_id, name) VALUES (19200, 37, NULL, NULL, 'Identity Manager Event: Modify data item 
contents');
INSERT INTO plugin_sid (plugin_id, sid, category_id, class_id, name) VALUES (19200, 38, NULL, NULL, 'Identity Manager Event: Initiate a workflow 
approval request ');
INSERT INTO plugin_sid (plugin_id, sid, category_id, class_id, name) VALUES (19200, 39, NULL, NULL, 'Identity Manager Event: Receive a workflow approval notice');
INSERT INTO plugin_sid (plugin_id, sid, category_id, class_id, name) VALUES (19200, 40, NULL, NULL, 'Identity Manager Event: A work flow item 
was escalated');
INSERT INTO plugin_sid (plugin_id, sid, category_id, class_id, name) VALUES (19200, 41, NULL, NULL, 'Identity Manager Event: A work flow  notification was sent');
INSERT INTO plugin_sid (plugin_id, sid, category_id, class_id, name) VALUES (19200, 42, NULL, NULL, 'Identity Manager Event: Create a new role');
INSERT INTO plugin_sid (plugin_id, sid, category_id, class_id, name) VALUES (19200, 43, NULL, NULL, 'Identity Manager Event: Delete an existing role');
INSERT INTO plugin_sid (plugin_id, sid, category_id, class_id, name) VALUES (19200, 44, NULL, NULL, 'Identity Manager Event: Disable an existing role');
INSERT INTO plugin_sid (plugin_id, sid, category_id, class_id, name) VALUES (19200, 45, NULL, NULL, 'Identity Manager Event: Enable an existing role');
INSERT INTO plugin_sid (plugin_id, sid, category_id, class_id, name) VALUES (19200, 46, NULL, NULL, 'Identity Manager Event: Query role attributes');
INSERT INTO plugin_sid (plugin_id, sid, category_id, class_id, name) VALUES (19200, 47, NULL, NULL, 'Identity Manager Event: Modify a role attribute');
INSERT INTO plugin_sid (plugin_id, sid, category_id, class_id, name) VALUES (19200, 48, NULL, NULL, 'Identity Manager Event: Start a system ');
INSERT INTO plugin_sid (plugin_id, sid, category_id, class_id, name) VALUES (19200, 49, NULL, NULL, 'Identity Manager Event: Shutdown a system');
INSERT INTO plugin_sid (plugin_id, sid, category_id, class_id, name) VALUES (19200, 50, NULL, NULL, 'Identity Manager Event: Resource exhaustion');
INSERT INTO plugin_sid (plugin_id, sid, category_id, class_id, name) VALUES (19200, 51, NULL, NULL, 'Identity Manager Event: Resource Corruption');
INSERT INTO plugin_sid (plugin_id, sid, category_id, class_id, name) VALUES (19200, 52, NULL, NULL, 'Identity Manager Event: Resource Unavailable');
INSERT INTO plugin_sid (plugin_id, sid, category_id, class_id, name) VALUES (19200, 53, NULL, NULL, 'Identity Manager Event: Resource Available');
INSERT INTO plugin_sid (plugin_id, sid, category_id, class_id, name) VALUES (19200, 54, NULL, NULL, 'Identity Manager Event: Back up Data Store');
INSERT INTO plugin_sid (plugin_id, sid, category_id, class_id, name) VALUES (19200, 55, NULL, NULL, 'Identity Manager Event: Recover Data Store');
INSERT INTO plugin_sid (plugin_id, sid, category_id, class_id, name) VALUES (19200, 56, NULL, NULL, 'Identity Manager Event: Configure audit service');
INSERT INTO plugin_sid (plugin_id, sid, category_id, class_id, name) VALUES (19200, 57, NULL, NULL, 'Identity Manager Event: Audit datastore is  full');
INSERT INTO plugin_sid (plugin_id, sid, category_id, class_id, name) VALUES (19200, 58, NULL, NULL, 'Identity Manager Event: Audit datastore is 
corrupted');
INSERT INTO plugin_sid (plugin_id, sid, category_id, class_id, name) VALUES (19200, 59, NULL, NULL, 'Identity Manager Event: A new identity is  associated with a session');
INSERT INTO plugin_sid (plugin_id, sid, category_id, class_id, name) VALUES (19200, 60, NULL, NULL, 'Identity Manager Event: A user has actively  disassociated his identity from an existing authenticate session.');
INSERT INTO plugin_sid (plugin_id, sid, category_id, class_id, name) VALUES (19200, 61, NULL, NULL, 'Identity Manager Event: A remote identity is associated with a local identity.');
INSERT INTO plugin_sid (plugin_id, sid, category_id, class_id, name) VALUES (19200, 62, NULL, NULL, 'Identity Manager Event: A remote identity is disassociated from a local identity.');
INSERT INTO plugin_sid (plugin_id, sid, category_id, class_id, name) VALUES (19200, 63, NULL, NULL, 'Identity Manager Event: A SAMLv2, WS-*, OAuth, or other access token was provided upon request.');
INSERT INTO plugin_sid (plugin_id, sid, category_id, class_id, name) VALUES (19200, 64, NULL, NULL, 'Identity Manager Event: An existing SAMLv2, WS-*, OAuth, or other access token was destroyed or decommissioned.');
INSERT INTO plugin_sid (plugin_id, sid, category_id, class_id, name) VALUES (19200, 19000, NULL, NULL, 'Identity Manager Event: Generic Event');

