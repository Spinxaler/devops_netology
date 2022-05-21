> # Задача 1


> Посмотреть статус Mysql
```Bash
mysql> \s
Server version:     8.0.21 MySQL Community Server – GPL
```
> Получите список таблиц из этой БД
```Bash
mysql> SHOW TABLES;
+-------------------+
| Tables_in_test_db |
+-------------------+*
| orders            |
+-------------------+
1 row in set (0.00 sec)
```
> Приведите в ответе количество записей с price > 300.
```Bash
mysql> SELECT \* FROM orders WHERE price > 300;
+----+----------------+-------+
| id | title          | price |
+----+----------------+-------+
| 2  | My little pony |  500  |
+----+----------------+-------+
1 row in set (0.00 sec)
```
> # Задача 2
> Создайте пользователя test в БД c паролем test-pass
```Bash
CREATE USER 'test'@'%' IDENTIFIED WITH mysql_native_password BY 'test-pass'
WITH MAX_QUERIES_PER_HOUR 100
PASSWORD EXPIRE INTERVAL 180 DAY
FAILED_LOGIN_ATTEMPTS 3
ATTRIBUTE '{"fname": "James", "lname": "Pretty "}';
```
> Предоставьте привилегии пользователю test на операции SELECT базы test_db.
```Bash
GRANT SELECT ON test_db.\* TO 'test'@'%';
FLUSH PRIVILEGES;
```
> Используя таблицу INFORMATION_SCHEMA.USER_ATTRIBUTES получите данные по пользователю test и приведите в ответе к задаче.
```Bash
SELECT \* FROM INFORMATION_SCHEMA.USER_ATTRIBUTES WHERE USER='test';
+------+------+-----------------------------------------+\
| USER | HOST | ATTRIBUTE                               |\
+------+------+-----------------------------------------+\
| test | %  | {"fname": "James", "lname": " Pretty "}   |\
+------+------+-----------------------------------------+\
```

> # Задача 3
```Bash
SET profiling = 1;
```
> Исследуйте, какой engine используется в таблице БД test_db и приведите в ответе.
```Bash
SHOW TABLE STATUS FROM test_db LIKE 'orders';
..Engine = InnoDB
```
> Измените engine и приведите время выполнения и запрос на изменения из профайлера в ответе:
```Bash
ALTER TABLE orders ENGINE = MyISAM;
Query OK, 5 rows affected (0.02 sec)
Records: 5 Duplicates: 0 Warnings: 0

mysql> SHOW PROFILES;
32 | 0.01948600 | ALTER TABLE orders ENGINE = MyISAM
``` 
> # Задача 4 
>
> Приведите в ответе измененный файл `my.cnf`.
```Bash
cat /etc/mysql/my.cnf
[mysqld]
pid-file    = /var/run/mysqld/mysqld.pid
socket     = /var/run/mysqld/mysqld.sock
datadir     = /var/lib/mysql
secure-file-priv= NULL

innodb_flush_log_at_trx_commit = 2
innodb_flush_method = O_DIRECT
innodb_file_per_table = ON
innodb_log_buffer_size = 1M
innodb_buffer_pool_size = 6G
innodb_log_file_size = 100M
!includedir /etc/mysql/conf.d/
```
