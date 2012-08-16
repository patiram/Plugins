-- plugin_id:  9001
-- name: firebrick
-- type: detector
-- description: FireBrick Firewall, http://firebrick.co.uk

DELETE FROM plugin where id = 9001;
DELETE FROM plugin_sid where plugin_id = 9001;

INSERT IGNORE INTO plugin(id, type, name, description) VALUES
  (9001, 1, 'Firebrick', 'Firebrick FW');

INSERT IGNORE INTO plugin_sid (plugin_id, sid, name, priority, reliability, category_id, subcategory_id)
  VALUES
    (9001, 1, 'Firebrick: Allowed traffic', 2,2, 3, 75),
    (9001, 2, 'Firebrick: Rejected traffic', 2,2, 3, 76),
    (9001, 3, 'Firebrick: Traffic stats', 2,2, 3, 143);

