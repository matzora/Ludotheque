GRANT SELECT ON Ludotheque.gameview TO 'viewer'@'localhost' IDENTIFIED BY 'viewer';

GRANT SELECT, INSERT, UPDATE, DELETE, CREATE, ALTER, INDEX, SHOW VIEW ON Ludotheque.* TO 'admin'@'localhost' IDENTIFIED BY 'admin';

GRANT SELECT, INSERT, UPDATE, DELETE ON Ludotheque.* TO 'lowRight'@'localhost' IDENTIFIED BY 'lowRight';