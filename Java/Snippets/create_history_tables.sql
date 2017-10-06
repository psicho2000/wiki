CREATE TABLE `additional_lines_history` (
  `history_id`               bigint        NOT NULL AUTO_INCREMENT,
  `history_command`          enum('INSERT', 'UPDATE', 'DELETE') NOT NULL,
  `history_timestamp`        timestamp     NOT NULL DEFAULT NOW(),
  `history_user`             varchar(256) NOT NULL,
  id int(11) NULL,
  column1 <format> NULL,
  column2 <format> NULL,
  PRIMARY KEY (`history_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TRIGGER `tablename_insert_trigger` AFTER INSERT ON `tablename` FOR EACH ROW INSERT INTO `tablename_history`
(history_command, history_user, id, mcolumn1, column2) VALUES
('INSERT', USER(), NEW.id, NEW.column1, NEW.column2);

CREATE TRIGGER `tablename_update_trigger` AFTER UPDATE ON `tablename` FOR EACH ROW INSERT INTO `tablename_history`
(history_command, history_user, id, column1, column2) VALUES
('UPDATE', USER(), NEW.id, NEW.column1, NEW.column2);

CREATE TRIGGER `tablename_delete_trigger` AFTER DELETE ON `tablename` FOR EACH ROW INSERT INTO `tablename_history`
(history_command, history_user, id, column1, column2) VALUES
('DELETE',  USER(), OLD.id, OLD.column1, OLD.column2);
