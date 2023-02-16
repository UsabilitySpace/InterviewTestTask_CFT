
-- Все задания выполняем из предположения, что у нас ORACLE SQL

-- ============================
-- ЗАДАНИЕ В.
-- Написать запрос, который сделает выборку:
-- НАЗВАНИЕ ФИЛИАЛА | КОЛИЧЕСТВО СОТРУДНИКОВ В ФИЛИАЛЕ
-- ============================

-- N.B.: IN ORACLE, "AS" IS ILLEGAL FOR MAKING TABLE ALIASES

SELECT
	t1.Department_Name  AS "Филиал",
	t1.Department_Count AS "Число сотрудников"
FROM
	DEPARTMENTS
	t1
RIGHT JOIN
    (
        SELECT
            Department_ID,
            count(*) AS Department_Count,
        FROM
            PERSONS
        GROUP BY
            Department_ID
    )
    t2
ON
	t1.Department_ID = t2.Department_ID
;

