use TEST;

create table test1( 
ID int not null,
nombre varchar(255),
TEST XML);

alter table test1
add primary key (ID);


insert into test1 values (1, 'nombre', 'test');

select * from test1;

insert into test1 values (2, 'nonbre2',' <TEST2>
  <TEST ID="6110" DEPARTAMENTO="100">
    <NOMBRE_EMPLEADO NOMBRE="Roberto" />
    <emp_address>Adress1</emp_address>
    <emp_gender>M</emp_gender>
    <emp_dob>1991-10-25</emp_dob>
    <emp_address>Adress1</emp_address>
    <EMPdistrict_id>99</EMPdistrict_id>
  </TEST>
  <TEST ID="61102" DEPARTAMENTO="300">
    <NOMBRE_EMPLEADO NOMBRE="Edie" />
    <emp_address>Adress2</emp_address>
    <emp_gender>M</emp_gender>
    <emp_dob>1990-11-13</emp_dob>
    <emp_address>Adress2</emp_address>
    <EMPdistrict_id>13</EMPdistrict_id>
  </TEST>
  <TEST ID="61103" DEPARTAMENTO="400">
    <NOMBRE_EMPLEADO NOMBRE="Alfredo" />
    <emp_address>Adress3</emp_address>
    <emp_gender>M</emp_gender>
    <emp_dob>1995-01-08</emp_dob>
    <emp_address>Adress3</emp_address>
    <EMPdistrict_id>21</EMPdistrict_id>
  </TEST>
  <TEST ID="61104" DEPARTAMENTO="666">
    <NOMBRE_EMPLEADO NOMBRE="YOLO" />
    <emp_address>no tiene el baboso</emp_address>
    <emp_gender>n</emp_gender>
    <emp_dob>1885-12-12</emp_dob>
    <emp_address>no tiene el baboso</emp_address>
    <EMPdistrict_id>10</EMPdistrict_id>
  </TEST>
</TEST2>');

select * from test1;



INSERT INTO test1 VALUES (3, 'NOMBRE3', '<employees emp_id="6110" assig_department="100" emp_name="Roberto" emp_age="30" emp_gender="M" emp_dob="1991-10-25" emp_address="Adress1" EMPdistrict_id="99" />
<employees emp_id="61102" assig_department="300" emp_name="Edie" emp_age="35" emp_gender="M" emp_dob="1990-11-13" emp_address="Adress2" EMPdistrict_id="13" />
<employees emp_id="61103" assig_department="400" emp_name="Alfredo" emp_age="26" emp_gender="M" emp_dob="1995-01-08" emp_address="Adress3" EMPdistrict_id="21" />
<employees emp_id="61104" assig_department="666" emp_name="YOLO" emp_age="99" emp_gender="n" emp_dob="1885-12-12" emp_address="no tiene el baboso" EMPdistrict_id="10" />');

select * from test1;


/*both xml codes work while insterting data on the tables */

