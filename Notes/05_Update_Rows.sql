-- Update rows from a specific table
-- UPDATE table_name SET column_name = value, column_name = value,... WHERE condition;
-- If 'WHERE' statement does not exists, all the records are updated to the established value.
UPDATE positions SET position_name = 'Vocalist' WHERE position_name = 'Singer';