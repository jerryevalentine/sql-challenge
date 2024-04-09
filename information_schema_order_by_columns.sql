SELECT DISTINCT
    cols.table_name,
    cols.column_name,
    CASE
        WHEN cons.constraint_type = 'PRIMARY KEY' THEN 'Primary Key'
        WHEN cons.constraint_type = 'FOREIGN KEY' THEN 'Foreign Key'
        WHEN cons.constraint_type = 'UNIQUE' THEN 'Unique Constraint'
        ELSE ''
        
    END AS key_type
FROM
    information_schema.columns cols
LEFT JOIN (
    SELECT
        tc.table_name,
        kcu.column_name,
        tc.constraint_type
    FROM
        information_schema.table_constraints tc
    JOIN information_schema.key_column_usage kcu ON tc.constraint_name = kcu.constraint_name
    WHERE
        tc.table_schema = 'public' -- Specify your schema here
) cons ON cols.table_name = cons.table_name AND cols.column_name = cons.column_name
WHERE
    cols.table_schema = 'public' -- Specify your schema here
ORDER BY cols.column_name

