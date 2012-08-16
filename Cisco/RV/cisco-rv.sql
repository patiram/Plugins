-- plugin_id:  9002
-- name: Cisco RV
-- type: detector
-- description: Cisco RV Firewall, http://Cisco RV.co.uk

DELETE FROM plugin where id = 9002;
DELETE FROM plugin_sid where plugin_id = 9002;

INSERT IGNORE INTO plugin(id, type, name, description) VALUES
  (9002, 1, 'Cisco RV', 'Cisco RV Router series');

INSERT IGNORE INTO plugin_sid (plugin_id, sid, name, priority, reliability, category_id, subcategory_id)
  VALUES
    (9002, 1, 'Cisco RV: Allowed traffic', 2,2, 3, 75),
    (9002, 2, 'Cisco RV: Rejected traffic', 2,2, 3, 76),
    (9002,99, 'Cisco RV: Config change', 2,2, 11, 187),
    (9002,100, 'Cisco RV: Login', 2,2),
    (9002,101, 'Cisco RV: Failed Login', 2,2);

