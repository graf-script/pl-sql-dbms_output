-- стандарт привіт світ

DECLARE
    text VARCHAR(20);
BEGIN
    DBMS_OUTPUT.PUT_LINE('Hello World');
END;
/
--------------------------------------------------------------------
-- строковий тип змінних

DECLARE
    names VARCHAR2(20);
    company VARCHAR2(30);
    introduction CLOB;
    choice CHAR(1);
BEGIN
    names := 'Kyrylo Makhnovskyi';
    company := 'Tenet';
    introduction := 'Hello, im ' || names || ' from ' || company || '.';
    choice := 'y';

    IF choice = 'y' THEN
      dbms_output.put_line(names); 
      dbms_output.put_line(company); 
      dbms_output.put_line(introduction); 
    END IF;
END;
/
--------------------------------------------------------------------
-- операції з строками 

DECLARE
    greetings VARCHAR2(30) := 'hello world!';
BEGIN
    dbms_output.put_line(greetings);

    -- всі ВЕЛИКІ літери
    dbms_output.put_line( UPPER( greetings ) );

    -- всі маленькі літери
    dbms_output.put_line( LOWER( greetings ) );

    -- початок з Великої букви
    dbms_output.put_line( INITCAP( greetings ) );

    -- знайти першу літеру у строці
    dbms_output.put_line( SUBSTR( greetings, 1, 1 ) );

    -- знайти останню літеру у строці
    dbms_output.put_line( SUBSTR ( greetings, -1, 1 ) );

    -- місцезнаходження першої заданої літери 
    dbms_output.put_line( INSTR ( greetings, 'e' ) );
END;

DECLARE
    greetings VARCHAR2(50) := '.......... hello world! ..............';
BEGIN
    -- відрізаємо символи з правої частини
    dbms_output.put_line( RTRIM(greetings, '.') );

    -- відрізаємо символи з лівої частини
    dbms_output.put_line( LTRIM(greetings, '.') );

    -- відрізаємо символи з обох сторін
    dbms_output.put_line( TRIM('.' FROM greetings ) );
END;
-----------------------------------------------------------------------
SELECT ... INTO програма

-- Порахувати кількість працівників з віком молодше 41 року

DECLARE
    count_emp   NUMBER;
    gender      VARCHAR2(10);
    hire_date   DATE;
BEGIN
    SELECT COUNT(*)
        INTO count_emp
        FROM employees
        WHERE age < 41;
    dbms_output.put_line('Кількість працівників: ' || count_emp);    
END;
