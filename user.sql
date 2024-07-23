   CREATE TABLE users (
      id int(10) unsigned NOT NULL AUTO_INCREMENT,
      user_uuid char(36) DEFAULT NULL, --  UUID code contains 32 hex digits along with 4 -, which makes 36
      email varchar(100) DEFAULT NULL,
      first_name varchar(100) DEFAULT NULL,
      last_name varchar(100) DEFAULT NULL,
      password varchar(100) DEFAULT NULL,
      -- user_image varchar(200) DEFAULT NULL,
      device_token varchar(255) DEFAULT NULL,
      device_type enum('0','1') NOT NULL COMMENT '0- Android,  1- IOS',
      created_date datetime DEFAULT NULL,
      modified_date timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
      is_delete enum('0','1') NOT NULL DEFAULT '0',
      is_test enum('0','1') NOT NULL DEFAULT '0',
      INDEX (user_uuid),
      PRIMARY KEY (id),
      UNIQUE KEY (email)
   ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=1;
