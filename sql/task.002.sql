
-- Все задания выполняем из предположения, что у нас ORACLE SQL

-- ============================
-- ЗАДАНИЕ Б.
-- Написать запрос, который сделает выборку:
-- ФАМИЛИЯ СОТРУДНИКА | НАЗВАНИЕ ФИЛИАЛА, В КОТОРОМ РАБОТАЕТ СОТРУДНИК
-- ============================

-- N.B.: IN ORACLE, "AS" IS ILLEGAL FOR MAKING TABLE ALIASES

SELECT
	t1.Last_Name,
	t2.Department_Name
FROM
	PERSONS
    t1
LEFT JOIN
    DEPARTMENTS
    t2
ON
	t1.Department_ID = t2.Department_ID
;

