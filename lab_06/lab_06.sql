# zad 1
SELECT AVG(pensja) as srednia_pensja FROM EMPLOYEE;

SELECT AVG(pensja) as srednia_pensja, COUNT(*) as liczba_pracownikow from EMPLOYEE GROUP BY JOB_POSITION_ID;

SELECT YEAR(current_date()) - AVG(FLOOR(YEAR(BIRTH_DATE))) as sredni_wiek, DEPARTMENT_ID FROM EMPLOYEE GROUP BY DEPARTMENT_ID;

# zad 2
SELECT DEPARTMENT_ID, SUM(pensja) as laczna_pensja FROM EMPLOYEE GROUP BY DEPARTMENT_ID ORDER BY laczna_pensja DESC;

SELECT JOB_POSITION_ID, AVG(pensja) as srednia_pensja, COUNT(*) FROM EMPLOYEE GROUP BY JOB_POSITION_ID HAVING COUNT(*) >= 3 AND srednia_pensja > 3000;

SELECT DEPARTMENT_ID, COUNT(DISTINCT pensja) as ilosc_roznych_pensji FROM EMPLOYEE GROUP BY DEPARTMENT_ID HAVING COUNT(*) > 4 ORDER BY ilosc_roznych_pensji;
