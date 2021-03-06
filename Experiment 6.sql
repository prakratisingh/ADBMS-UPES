/*Create table of table name: EMPLOYEES and add 6 rows*/
CREATE TABLE EMPLOYEES(EMPLOYEE_ID VARCHAR(10) PRIMARY KEY,FIRST_NAME VARCHAR(30) NOT NULL, LAST_NAME VARCHAR(30) NOT NULL, DOB DATE, SALARY DECIMAL(25,3) NOT NULL, DEPARTMENT_ID VARCHAR(10));
INSERT INTO EMPLOYEES(EMPLOYEE_ID,FIRST_NAME,LAST_NAME,DOB,SALARY,DEPARTMENT_ID) VALUES(7369, 'SMITH','WILL', '1956-12-17', 5000.0, 'D1'),
(7844, 'JOHN', 'TIM' ,'1964-09-08', 1500.0, 'D4'),(7125,'SERENA','MATHEWS','1978-07-04',6500.0,'D2'),(7902, 'FORD', 'GEORGE', '1965-12-03', 3000.0,'D1'),(7698, 'BLAKE', 'HOLDER', '1977-05-01', 2850.0, 'D3'),(7782, 'CLARK', 'D', '1973-06-09', 2450.0,'D2');
/*Create View of name emp_view and the column would be Employee_id, Last_Name, salary 
and department_id only*/
CREATE VIEW EMP_VIEW AS SELECT EMPLOYEE_ID,LAST_NAME,SALARY,DEPARTMENT_ID FROM EMPLOYEES;
SELECT * FROM EMP_VIEW;
/*Insert values into view(remove the NOT NULL constraint and then insert values): */
ALTER TABLE EMPLOYEES MODIFY COLUMN LAST_NAME VARCHAR(20) DEFAULT "NULL";
INSERT INTO EMP_VIEW(EMPLOYEE_ID,LAST_NAME,SALARY,DEPARTMENT_ID) VALUES (7654, 'KING',  7250.0 ,'D4'),(7521, 'HANKS',5000.0, 'D3');
/*Modify, delete and drop operations are performed on view*/
CREATE OR REPLACE VIEW EMP_VIEW AS SELECT SALARY FROM EMPLOYEES WHERE EMPLOYEE_ID=7521 ;

SELECT * FROM EMP_VIEW;

/*Creates a view named salary_view. The view shows the employees in department 20 and 
their annual salary.*/
CREATE OR REPLACE VIEW SALARY_VIEW AS SELECT DEPARTMENT_ID,SALARY*12 FROM EMPLOYEES WHERE DEPARTMENT_ID='D2' ;
SELECT * FROM SALARY_VIEW;
