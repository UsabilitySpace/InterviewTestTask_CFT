
-- Все задания выполняем из предположения, что у нас ORACLE SQL

-- ============================
-- ЗАДАНИЕ В.
-- Написать запрос, который сделает выборку:
-- НАЗВАНИЕ ФИЛИАЛА | КОЛИЧЕСТВО СОТРУДНИКОВ В ФИЛИАЛЕ
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
    )
    t2
ON
	t1.Department_ID = t2.Department_ID
;

