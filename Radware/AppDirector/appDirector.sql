-- AppDirector
-- plugin_id: 9360

delete from plugin where id=9360;
delete from plugin_sid where plugin_id=9360;

INSERT IGNORE INTO plugin (id, type, name, description) values (9360, 1, 'AppDirector', 'AppDirector');       
INSERT IGNORE INTO `plugin_sid` (`plugin_id`, `sid`, `category_id`, `class_id`, `reliability`, `priority`, `name`) VALUES (9360, 100, NULL, NULL, 1, 3, 'AppDirector: Illegal Farm name');
INSERT IGNORE INTO `plugin_sid` (`plugin_id`, `sid`, `category_id`, `class_id`, `reliability`, `priority`, `name`) VALUES (9360, 101, NULL, NULL, 1, 3, 'AppDirector: Illegal Load report');
INSERT IGNORE INTO `plugin_sid` (`plugin_id`, `sid`, `category_id`, `class_id`, `reliability`, `priority`, `name`) VALUES (9360, 200, NULL, NULL, 1, 3, 'AppDirector: VRRP Error');
INSERT IGNORE INTO `plugin_sid` (`plugin_id`, `sid`, `category_id`, `class_id`, `reliability`, `priority`, `name`) VALUES (9360, 300, NULL, NULL, 1, 3, 'AppDirector: Server not in service');
INSERT IGNORE INTO `plugin_sid` (`plugin_id`, `sid`, `category_id`, `class_id`, `reliability`, `priority`, `name`) VALUES (9360, 301, NULL, NULL, 1, 3, 'AppDirector: Server disabled');
INSERT IGNORE INTO `plugin_sid` (`plugin_id`, `sid`, `category_id`, `class_id`, `reliability`, `priority`, `name`) VALUES (9360, 400, NULL, NULL, 1, 3, 'AppDirector: Check failed');
INSERT IGNORE INTO `plugin_sid` (`plugin_id`, `sid`, `category_id`, `class_id`, `reliability`, `priority`, `name`) VALUES (9360, 401, NULL, NULL, 1, 3, 'AppDirector: Recovery event');
INSERT IGNORE INTO `plugin_sid` (`plugin_id`, `sid`, `category_id`, `class_id`, `reliability`, `priority`, `name`) VALUES (9360, 402, NULL, NULL, 1, 3, 'AppDirector: Server down');
INSERT IGNORE INTO `plugin_sid` (`plugin_id`, `sid`, `category_id`, `class_id`, `reliability`, `priority`, `name`) VALUES (9360, 500, NULL, NULL, 1, 3, 'AppDirector: VRRP master');
INSERT IGNORE INTO `plugin_sid` (`plugin_id`, `sid`, `category_id`, `class_id`, `reliability`, `priority`, `name`) VALUES (9360, 501, NULL, NULL, 1, 3, 'AppDirector: VRRP backup');
INSERT IGNORE INTO `plugin_sid` (`plugin_id`, `sid`, `category_id`, `class_id`, `reliability`, `priority`, `name`) VALUES (9360, 600, NULL, NULL, 1, 3, 'AppDirector: Farm warning');
INSERT IGNORE INTO `plugin_sid` (`plugin_id`, `sid`, `category_id`, `class_id`, `reliability`, `priority`, `name`) VALUES (9360, 700, NULL, NULL, 1, 3, 'AppDirector: Farm recovery');
INSERT IGNORE INTO `plugin_sid` (`plugin_id`, `sid`, `category_id`, `class_id`, `reliability`, `priority`, `name`) VALUES (9360, 800, NULL, NULL, 1, 3, 'AppDirector: Capacity limit reached');
INSERT IGNORE INTO `plugin_sid` (`plugin_id`, `sid`, `category_id`, `class_id`, `reliability`, `priority`, `name`) VALUES (9360, 900, NULL, NULL, 1, 3, 'AppDirector: Remote AppDirector server available');
INSERT IGNORE INTO `plugin_sid` (`plugin_id`, `sid`, `category_id`, `class_id`, `reliability`, `priority`, `name`) VALUES (9360, 1000, NULL, NULL, 1, 3, 'AppDirector: Audit');
INSERT IGNORE INTO `plugin_sid` (`plugin_id`, `sid`, `category_id`, `class_id`, `reliability`, `priority`, `name`) VALUES (9360, 1100, NULL, NULL, 1, 3, 'AppDirector: Certificate expired');
INSERT IGNORE INTO `plugin_sid` (`plugin_id`, `sid`, `category_id`, `class_id`, `reliability`, `priority`, `name`) VALUES (9360, 1200, NULL, NULL, 1, 3, 'AppDirector: Threshold reached');
INSERT IGNORE INTO `plugin_sid` (`plugin_id`, `sid`, `category_id`, `class_id`, `reliability`, `priority`, `name`) VALUES (9360, 1300, NULL, NULL, 1, 3, 'AppDirector: Route error');
INSERT IGNORE INTO `plugin_sid` (`plugin_id`, `sid`, `category_id`, `class_id`, `reliability`, `priority`, `name`) VALUES (9360, 1500, NULL, NULL, 1, 3, 'AppDirector: Logging attempt');
INSERT IGNORE INTO `plugin_sid` (`plugin_id`, `sid`, `category_id`, `class_id`, `reliability`, `priority`, `name`) VALUES (9360, 1600, NULL, NULL, 1, 3, 'AppDirector: Farm unavailable');
INSERT IGNORE INTO `plugin_sid` (`plugin_id`, `sid`, `category_id`, `class_id`, `reliability`, `priority`, `name`) VALUES (9360, 1601, NULL, NULL, 1, 3, 'AppDirector: Update started');
INSERT IGNORE INTO `plugin_sid` (`plugin_id`, `sid`, `category_id`, `class_id`, `reliability`, `priority`, `name`) VALUES (9360, 1600, NULL, NULL, 1, 3, 'AppDirector: Update completed');
INSERT IGNORE INTO `plugin_sid` (`plugin_id`, `sid`, `category_id`, `class_id`, `reliability`, `priority`, `name`) VALUES (9360, 1600, NULL, NULL, 1, 3, 'AppDirector: Report active');
INSERT IGNORE INTO `plugin_sid` (`plugin_id`, `sid`, `category_id`, `class_id`, `reliability`, `priority`, `name`) VALUES (9360, 1600, NULL, NULL, 1, 3, 'AppDirector: Configuration download completed');
INSERT IGNORE INTO `plugin_sid` (`plugin_id`, `sid`, `category_id`, `class_id`, `reliability`, `priority`, `name`) VALUES (9360, 1600, NULL, NULL, 1, 3, 'AppDirector: Farm unavailable');
INSERT IGNORE INTO `plugin_sid` (`plugin_id`, `sid`, `category_id`, `class_id`, `reliability`, `priority`, `name`) VALUES (9360, 2000000000, NULL, NULL, 1, 3, 'AppDirector: Generic event');
