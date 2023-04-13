-- Substring('the string', start_index, length)
-- Gets a string from another one by indicating the initial position and the length.

SELECT SUBSTRING('Songs From The Big Chair', 7, 4); -- Returns 'From'

-- Str(numeric_value, result_length, decimal_amount)
-- Converts numbers to string.
-- The result length must be equals or greater than the integer number with the sign if exists.
-- The result length and decimals are not mandatory. However, they must be integer positive numbers.
-- If the result length is not specified then the value predefined is 10.
-- If the decimal amount is not specified then the value is 0 and it is rounded to an integer.

SELECT 'Number: ' + STR(9186.5145, 6, 3); -- Returns 9186.5
SELECT 'Number: ' + STR(9186.5145); -- Returns 9187

-- STUFF(string1, start_index, number_characters, string2)
-- Allows inserting a string2 in a string1 at the index specified and replacing an amount of characters
-- of the string1 based on the number specified.

SELECT STUFF('Songs From The Big Chair', 16, 3, 'Master'); -- Returns 'Songs From The Master Chair'

-- LEN(string)
-- Gets the length of a specific string

SELECT LEN('Songs From The Big Chair'); -- Returns 24

-- CHAR(integer)
-- Gets the ASCII code related to the integer number sent as a parameter.

SELECT CHAR(64); -- Return @

-- LEFT(string, number_of_characters)
-- Gets the number of characters from a string starting from the left side.

SELECT LEFT('Songs From The Big Chair', 10); -- Returns 'Songs From'

-- RIGHT(string, number_of_characters)
-- Gets the number of characters from a string starting from the right side.

SELECT RIGHT('Songs From The Big Chair', 10);

-- LOWER(string)
-- Gets a specific string in lower case

SELECT LOWER('Songs From The Big Chair'); -- Returns 'songs from the big chair'

-- UPPER(string)
-- Gets a specific string in upper case

SELECT UPPER('Songs From The Big Chair'); -- Returns 'SONGS FROM THE BIG CHAIR'

-- LTRIM(string)
-- Deletes all the white spaces from the left side of the string.

SELECT LTRIM('          Songs From The Big Chair'); -- Return 'Songs From The Big Chair'

-- RTRIM(string)
-- Deletes all the white spaces from the right side of the string.

SELECT RTRIM('Songs From The Big Chair          '); -- Return 'Songs From The Big Chair'

--REPLACE(string, string_to_replace, target_string)
-- Replaces a set of characters of a specific string with a new character or set of characters.

SELECT REPLACE('Songs From The Big Chair', 'o', '*'); -- Returns 'S*ngs Fr*m The Big Chair'

-- REVERSE(string)
-- Gets a specific string in reverse order

SELECT REVERSE('Songs From The Big Chair'); -- Returns 'riahC giB ehT morF sgnoS'

-- PATINDEX(pattern, string)
-- Return the index of the first coincidence for the specified pattern.
-- If the pattern does not exist then return 0.

SELECT PATINDEX('%ng%', 'Songs From The Big Chair'); -- Returns 3

-- CHARINDEX(substring, string, starting_index)
-- Returns the index of the first coincidence for the substring.
-- The search is performed starting from the specified index.
-- In case the index does not exist, the search is performed from the beginning.
-- In case the substring is not found, then is returned the value of 0.

SELECT CHARINDEX('om', 'Songs From The Big Chair'); -- Returns 9
SELECT CHARINDEX('Th', 'Songs From The Big Chair', 10); -- Returns 12
SELECT CHARINDEX('ox', 'Songs From The Big Chair'); -- Returns 0

-- REPLICATE(string, n)
-- Repeats a string the number of times specified as n.

SELECT REPLICATE('Songs From The Big Chair', 2); -- Returns 'Songs From The Big ChairSongs From The Big Chair'

-- SPACE(n)
-- Returns a string of white spaces of lenght n.
-- The number specified must be a positive integer.

SELECT 'Songs' + SPACE(1) + 'From' + SPACE(1) + 'The' + SPACE(1) + 'Big' + SPACE(1) + 'Chair'; -- Returns 'Songs From The Big Chair'
SELECT 'Songs' + SPACE(10) + 'From The Big Chair'; -- Returns 'Songs          From The Big Chair'