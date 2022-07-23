/*Write a PL/SQL code to accept the value of A, B & C display which is greater.*/
DECLARE
    a NUMBER := 20;
    b NUMBER := 40;
    c NUMBER := 60;
BEGIN
    IF a > b AND a > c THEN
      dbms_output.Put_line('Greatest number is ' ||a);
    ELSIF b > a AND b > c THEN
      dbms_output.Put_line('Greatest number is ' ||b);
    ELSE
      dbms_output.Put_line('Greatest number is ' ||c);
    END IF;
END;
/*Using PL/SQL Statements create a simple loop that display message “Welcome to PL/SQL 
Programming” 20 times.*/
DECLARE
a number :=20;
BEGIN
for a in 1 ..20 loop
dbms_output.put_line('Welcome to PL/SQL Programming');
end loop;
end;
/*Write a PL/SQL code block to find the factorial of a number.*/
DECLARE
a number := 6;
b NUMBER := 1;
BEGIN
for i in 1..a loop
b := b*i;
end loop;
dbms_output.put_line('Factorial of a is ' ||b);
END;
/*Write a PL/SQL program to generate Fibonacci series.*/
DECLARE
first number := 0;
second number := 1;
temp number;
n number := 5;
i number;
BEGIN
	dbms_output.put_line('Series:');
	dbms_output.put_line(first);
	dbms_output.put_line(second);
	for i in 2..n
	loop
		temp:=first+second;
first := second;
second := temp;
	dbms_output.put_line(temp);
end loop;
END;
/*Write a PL/SQL code to find the sum of first N numbers*/
DECLARE
a number := 40;
b NUMBER := 0;
BEGIN 
for i in 1..a loop
b :=b+i;
end loop;
dbms_output.put_line('The sum of first n numbers is ' ||b);
END;

