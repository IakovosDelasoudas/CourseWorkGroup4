--question1
select lastname, firstname, departmentname
from WORKER join DEPT on worker.departmentid=dept.departmentid
where departmentname='Accounting';

--question3
select empid, firstname, lastname, round(salary/12, 2) as "Monthly Salary" from WORKER;

--question5 (incomplete)
select firstname, lastname, min(salary) as "SmallestSalary" from WORKER
group by firstname, lastname;

--question7
select firstname, lastname, departmentname, project.projno
from WORKER
join DEPT on worker.departmentid=dept.departmentid
join ASSIGN on worker.empid=assign.empid
join PROJECT on assign.projno=project.projno
where project.projno=1019;

--question9
create VIEW "Worker Projects" AS
SELECT worker.empid, worker.firstname, worker.lastname, project.projno, project.projname
from WORKER
join ASSIGN on worker.empid=assign.empid
join PROJECT on assign.projno=project.projno;

--question11
insert into WORKER (empid, lastname, firstname, departmentid, birthdate, hiredate, salary)
VALUES (256881, 'Delasoudas', 'Iakovos', 2, '30-NOV-2002', '05-NOV-2021', 69000);
insert into WORKER (empid, lastname, firstname, departmentid, birthdate, hiredate, salary)
VALUES (247012, 'Castaldi', 'Nick', 2, '12-SEP-1997', '05-NOV-2021', 69000);

--question13
select project.projno, worker.empid, lastname, firstname 
from WORKER
join ASSIGN on worker.empid=assign.empid
join PROJECT on assign.projno=project.projno
where project.startdate>'1-SEP-2021';

--question15
select lastname, firstname, mgrid
from WORKER
join DEPT on worker.departmentid=dept.departmentid
join ASSIGN on worker.empid=assign.empid
where assign.rating IS NULL;

--question17 (incomplete)
ALTER TABLE PROJECT
ADD Status varchar(20);

insert into PROJECT(STATUS)
values
    ('completed'),
    ('cancelled'),
    ('planned'),
    ('active'),
    ('active'),
    ('active'),
    ('active'),
    ('active');

select * from PROJECT
where STATUS='active';

--question19 (incomplete)
ALTER TABLE PROJECT
ADD numEmployessAssigned varchar(30);

UPDATE PROJECT
SET
WHERE ;
