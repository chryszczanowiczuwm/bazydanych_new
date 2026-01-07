#zad 1
SELECT
    *,
    RANK() OVER (ORDER BY pensja DESC) AS ranking_pensji
FROM EMPLOYEE;

# zad 2
SELECT
    *,
    pensja,
    RANK() OVER (ORDER BY pensja DESC) AS ranking_pensji,
    SUM(pensja) OVER () AS suma_wszystkich_pensji
FROM EMPLOYEE;