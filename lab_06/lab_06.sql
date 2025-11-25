# zad 1
SELECT AVG(pensja) as srednia_pensja FROM EMPLOYEE;

SELECT AVG(pensja) as srednia_pensja, COUNT(*) as liczba_pracownikow from EMPLOYEE GROUP BY JOB_POSITION_ID;

SELECT YEAR(current_date()) - AVG(FLOOR(YEAR(BIRTH_DATE))) as sredni_wiek, DEPARTMENT_ID FROM EMPLOYEE GROUP BY DEPARTMENT_ID;