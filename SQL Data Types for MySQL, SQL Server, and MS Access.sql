-- Note: Data types might have different names in different database. And even if the name is the same, the size and other details may be different! Always check the documentation!

-- CHAR(size)	A FIXED length string (can contain letters, numbers, and special characters). The size parameter specifies the column length in characters - can be from 0 to 255. Default is 1
-- BINARY(size)	Equal to CHAR(), but stores binary byte strings. The size parameter specifies the column length in bytes. Default is 1
-- VARBINARY(size)	Equal to VARCHAR(), but stores binary byte strings. The size parameter specifies the maximum column length in bytes.
-- TINYBLOB	For BLOBs (Binary Large Objects). Max length: 255 bytes
-- TINYTEXT	Holds a string with a maximum length of 255 characters
-- TEXT(size)	Holds a string with a maximum length of 65,535 bytes
-- BLOB(size)	For BLOBs (Binary Large Objects). Holds up to 65,535 bytes of data
-- MEDIUMTEXT	Holds a string with a maximum length of 16,777,215 characters
-- MEDIUMBLOB	For BLOBs (Binary Large Objects). Holds up to 16,777,215 bytes of data
-- LONGTEXT	Holds a string with a maximum length of 4,294,967,295 characters
-- LONGBLOB	For BLOBs (Binary Large Objects). Holds up to 4,294,967,295 bytes of data //Binary large object (BLOB) is a generic term used to describe the handling and storage of long strings of data by database management systems.
-- ENUM(val1, val2, val3, ...)	A string object that can have only one value, chosen from a list of possible values. You can list up to 65535 values in an ENUM list. If a value is inserted that is not in the list, a blank value will be inserted. The values are sorted in the order you enter them
-- SET(val1, val2, val3, ...)	A string object that can have 0 or more values, chosen from a list of possible values. You can list up to 64 values in a SET list

-- BIT(size)	A bit-value type. The number of bits per value is specified in size. The size parameter can hold a value from 1 to 64. The default value for size is 1.
-- BOOL	Zero is considered as false, nonzero values are considered as true.
-- BOOLEAN	Equal to BOOL
-- BIGINT(size)	A large integer. Signed range is from -9223372036854775808 to 9223372036854775807. Unsigned range is from 0 to 18446744073709551615. The size parameter specifies the maximum display width (which is 255)
-- DECIMAL(size, d)	An exact fixed-point number. The total number of digits is specified in size. The number of digits after the decimal point is specified in the d parameter. The maximum number for size is 65. The maximum number for d is 30. The default value for size is 10. The default value for d is 0.
-- YEAR	A year in four-digit format. Values allowed in four-digit format: 1901 to 2155, and 0000.
-- MySQL 8.0 does not support year in two-digit format.


-- nchar	Fixed width Unicode string
-- ntext	Variable width Unicode string
-- image	Variable width binary string
-- bigint	Allows whole numbers between -9,223,372,036,854,775,808 and 9,223,372,036,854,775,807
-- sql_variant Stores up to 8,000 bytes of data of various data types, except text, ntext, and timestamp
-- xml	Stores XML formatted data. Maximum 2GB

-- Ole Object	Can store pictures, audio, video, or other BLOBs (Binary Large Objects)