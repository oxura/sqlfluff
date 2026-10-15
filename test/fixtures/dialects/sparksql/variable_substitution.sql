SET foo=(1, 3);
SELECT * FROM t WHERE bar IN ${foo};

SELECT * FROM t WHERE bar NOT IN ${excluded};

SELECT ${column_name} FROM ${database_name}.${table_name};

SELECT ${offset} + 1 AS next_value FROM t WHERE id = ${current_id};

SELECT ${system:demo.number} AS configured_number;

SELECT * FROM ${env:SQL_DATABASE}.events;

SELECT * FROM t LIMIT ${row_count};

SELECT key, count(*) FROM t GROUP BY ${group_column} ORDER BY ${sort_column};

SET spark.sql.shuffle.partitions=${partition_count};

SELECT '${not_substituted_by_sqlfluff}' AS template_text;
