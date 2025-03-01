/*----------------------------------------------------
Scott Peters
https://AdvancedSQLPuzzles.com

Calcualtes factorials

*/----------------------------------------------------

---------------------
---------------------
DECLARE @vTotalNumbers INTEGER = 10;

---------------------
---------------------
WITH cte_Recursion (Number, Factorial) AS
(
SELECT 1,
       1
UNION ALL
SELECT  Number + 1 AS Number,
       (Number + 1) * Factorial AS Factorial
FROM   cte_Recursion
WHERE  Number < @vTotalNumbers
)
SELECT Number,
       Factorial
FROM   cte_Recursion
OPTION (MAXRECURSION 0);--A value of 0 means no limit to the recursion level;

