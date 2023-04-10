-- An Alias allows to label a column with a customized name.
SELECT id_artist AS 'Identification'
FROM artists

-- It is possible to make a calculated column more descriptive.
SELECT age * 2 AS 'double_age'
FROM artists

-- Sometimes the AS keyword it is not mandatory. However, it is recommended to use it.
SELECT id_artist 'Identification'
FROM artists