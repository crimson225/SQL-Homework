-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Departments" (
    "deptno" varchar   NOT NULL,
    "deptname" varchar   NOT NULL,
    CONSTRAINT "pk_Departments" PRIMARY KEY (
        "deptno"
     )
);

CREATE TABLE "Dept_Emp" (
    "empno" integer   NOT NULL,
    "deptnum" varchar   NOT NULL,
    "fromdate" date   NOT NULL,
    "todate" date   NOT NULL
);

CREATE TABLE "Dept_Mang" (
    "deptnumb" varchar   NOT NULL,
    "empnumber" integer   NOT NULL,
    "fromdate" date   NOT NULL,
    "todate" date   NOT NULL
);

CREATE TABLE "Salaries" (
    "empnumbr" integer   NOT NULL,
    "salary" integer   NOT NULL,
    "fromdate" date   NOT NULL,
    "todate" date   NOT NULL,
    CONSTRAINT "pk_Salaries" PRIMARY KEY (
        "empnumbr"
     )
);

CREATE TABLE "Titles" (
    "empnumb" integer   NOT NULL,
    "title" varchar   NOT NULL,
    "fromdate" date   NOT NULL,
    "todate" date   NOT NULL
);

CREATE TABLE "Employees" (
    "employenum" int   NOT NULL,
    "birthday" date   NOT NULL,
    "firstname" varchar   NOT NULL,
    "lastname" varchar   NOT NULL,
    "gender" varchar   NOT NULL,
    "hiredate" date   NOT NULL,
    CONSTRAINT "pk_Employees" PRIMARY KEY (
        "employenum"
     )
);

ALTER TABLE "Dept_Emp" ADD CONSTRAINT "fk_Dept_Emp_empno" FOREIGN KEY("empno")
REFERENCES "Employees" ("employenum");

ALTER TABLE "Dept_Emp" ADD CONSTRAINT "fk_Dept_Emp_deptnum" FOREIGN KEY("deptnum")
REFERENCES "Departments" ("deptno");

ALTER TABLE "Dept_Mang" ADD CONSTRAINT "fk_Dept_Mang_deptnumb" FOREIGN KEY("deptnumb")
REFERENCES "Departments" ("deptno");

ALTER TABLE "Dept_Mang" ADD CONSTRAINT "fk_Dept_Mang_empnumber" FOREIGN KEY("empnumber")
REFERENCES "Employees" ("employenum");

ALTER TABLE "Salaries" ADD CONSTRAINT "fk_Salaries_empnumbr" FOREIGN KEY("empnumbr")
REFERENCES "Employees" ("employenum");


