-- TRUNCATE TABLE statement deletes all rows from a specific table
-- TRUNCATE TABLE is faster than DELETE
-- When a table has an identity property and the rows are removed by using TRUNCATE,
-- the identity property index is initialized to 1.  

TRUNCATE TABLE artists;