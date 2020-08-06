USE SAFE;

SELECT * FROM employees;

select * from employees for xml auto;

select * from employees for xml path;

select * from employees for xml path ('TEST'), ROOT;

 

select
emp_id AS [@ID],
assig_department AS [DEPARTAMENTO],
emp_name AS [NOMBRE_EMPLEADO/@NOMBRE],
emp_address,
emp_gender,
emp_dob,
emp_address,
district_id as numero_de_distrito
from employees for xml path ('INFO_DE_EMPLEADO'), ROOT ('TABLA_DE_EMNPLEADOS');
