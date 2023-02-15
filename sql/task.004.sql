
-- Все задания выполняем из предположения, что у нас ORACLE SQL

-- ============================
-- ЗАДАНИЕ Г.
-- Написать запрос, который сделает выборку:
-- НАЗВАНИЕ ВСЕХ ФИЛИАЛОВ, ГДЕ КОЛИЧЕСТВО СОТРУДНИКОВ > 20
-- ============================

-- N.B.: IN ORACLE, "AS" IS ILLEGAL FOR MAKING TABLE ALIASES


SELECT
	t2.Department_Name,
	t2.Department_Count
FROM
	PERSONS
	t1
RIGHT JOIN
    (
        SELECT
            Department_ID,
            count(Last_Name) AS Department_Count,
        GROUP BY
            Department_ID
        WHERE
            Department_Count > 20
    )
    t2
ON
	t1.Department_ID = t2.Department_ID
;

