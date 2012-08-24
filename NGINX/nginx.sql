-- Nginx
-- plugin_id: 9900

DELETE FROM plugin WHERE id = "9900";
DELETE FROM plugin_sid where plugin_id = "9900";

INSERT IGNORE INTO plugin (id, type, name, description) VALUES (9900, 1, 'nginx', 'Nginx');

INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9900, 1, NULL, NULL, 'Nginx: server error [emerg]', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9900, 2, NULL, NULL, 'Nginx: server error [alert]', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9900, 3, NULL, NULL, 'Nginx: server error [crit]', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9900, 4, NULL, NULL, 'Nginx: server error [error]', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9900, 5, NULL, NULL, 'Nginx: server error [warn]', 2, 1);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9900, 6, NULL, NULL, 'Nginx: server error [notice]', 1, 1);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9900, 7, NULL, NULL, 'Nginx: server error [info]', 1, 1);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9900, 8, NULL, NULL, 'Nginx: server error [debug]', 0, 0);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9900, 200, NULL, NULL, 'Nginx: OK', 1, 1);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name) VALUES (9900, 201, NULL, NULL, 'Nginx: Created');
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name) VALUES (9900, 202, NULL, NULL, 'Nginx: Accepted');
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name) VALUES (9900, 203, NULL, NULL, 'Nginx: Non-Authorative Information');
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name) VALUES (9900, 204, NULL, NULL, 'Nginx: No Content');
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name) VALUES (9900, 205, NULL, NULL, 'Nginx: Reset Content');
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9900, 206, NULL, NULL, 'Nginx: Partial Content', 1, 1);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name) VALUES (9900, 300, NULL, NULL, 'Nginx: Multiple Choices');
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name) VALUES (9900, 301, NULL, NULL, 'Nginx: Moved Permanently');
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name) VALUES (9900, 302, NULL, NULL, 'Nginx: Moved Temporarily');
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name) VALUES (9900, 303, NULL, NULL, 'Nginx: See Other');
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9900, 304, NULL, NULL, 'Nginx: Not Modified', 1, 1);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name) VALUES (9900, 305, NULL, NULL, 'Nginx: Use Proxy');
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name) VALUES (9900, 307, NULL, NULL, 'Nginx: Temporary Redirect');
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name) VALUES (9900, 400, NULL, NULL, 'Nginx: Bad Request');
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9900, 401, NULL, NULL, 'Nginx: Unauthorized', 3, 1);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name) VALUES (9900, 402, NULL, NULL, 'Nginx: Payment Required');
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9900, 403, NULL, NULL, 'Nginx: Forbidden', 3, 1);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name) VALUES (9900, 404, NULL, NULL, 'Nginx: Not Found');
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9900, 405, NULL, NULL, 'Nginx: Method Not Allowed', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name) VALUES (9900, 406, NULL, NULL, 'Nginx: Not Acceptable (encoding)');
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9900, 407, NULL, NULL, 'Nginx: Proxy Authentication Required', 3, 1);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name) VALUES (9900, 408, NULL, NULL, 'Nginx: Request Timed Out');
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name) VALUES (9900, 409, NULL, NULL, 'Nginx: Conflicting Request');
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name) VALUES (9900, 410, NULL, NULL, 'Nginx: Gone');
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name) VALUES (9900, 411, NULL, NULL, 'Nginx: Content Length Required');
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name) VALUES (9900, 412, NULL, NULL, 'Nginx: Precondition Failed');
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9900, 413, NULL, NULL, 'Nginx: Request Entity Too Long', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9900, 414, NULL, NULL, 'Nginx: Request URI Too Long', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name) VALUES (9900, 415, NULL, NULL, 'Nginx: Unsupported Media Type');
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9900, 500, NULL, NULL, 'Nginx: Internal Server Error', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name) VALUES (9900, 501, NULL, NULL, 'Nginx: Not implemented');
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name) VALUES (9900, 502, NULL, NULL, 'Nginx: Bad Gateway');
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name) VALUES (9900, 503, NULL, NULL, 'Nginx: Service Unavailable');
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name) VALUES (9900, 504, NULL, NULL, 'Nginx: Gateway Timeout');
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9900, 505, NULL, NULL, 'Nginx: HTTP Version Not Supported', 2, 2);
