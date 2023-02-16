
-- Все задания выполняем из предположения, что у нас ORACLE SQL

-- ============================
-- ЗАДАНИЕ Г.
-- Написать запрос, который сделает выборку:
-- НАЗВАНИЕ ВСЕХ ФИЛИАЛОВ, ГДЕ КОЛИЧЕСТВО СОТРУДНИКОВ > 20
-- ============================

-- N.B.: IN ORACLE, "AS" IS ILLEGAL FOR MAKING TABLE ALIASES

SELECT
	t1.Department_Name  AS "Филиал"
FROM
	DEPARTMENTS
	t1
RIGHT JOIN
    (
        SELECT
            Department_ID
        FROM
            PERSONS
        GROUP BY
            Department_ID
        HAVING
            count(*) > 20
    )
    t2
ON
	t1.Department_ID = t2.Department_ID
;

