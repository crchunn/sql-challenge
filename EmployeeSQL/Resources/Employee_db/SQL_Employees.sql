
CREATE TABLE "Titles" (
    "title_id" varchar   NOT NULL,
    "title" varchar   NOT NULL,
	PRIMARY KEY ("title_id")
);

-- title_id is also a primary key

CREATE TABLE "Employee" (
    "emp_no" int  NOT NULL,
    "title_id" varchar   NOT NULL,
    "birth_date" date   NOT NULL,
    "first_name" varchar   NOT NULL,
    "last_name" varchar   NOT NULL,
    "sex" varchar   NOT NULL,
    "hire_date" date   NOT NULL,
	PRIMARY KEY ("emp_no"),
	CONSTRAINT "fk_Employee_title_id" FOREIGN KEY("title_id") REFERENCES "Titles" ("title_id")
);
--emp_no is the primary key

CREATE TABLE "Salary" (
    "emp_no" int   NOT NULL,
    "salary" int   NOT NULL,
	CONSTRAINT "fk_Salary_emp_no" FOREIGN KEY("emp_no") REFERENCES "Employee" ("emp_no")
);

-- Table documentation comment 2
CREATE TABLE "Departments" (
    "dept_no" varchar   NOT NULL,
    -- dept_no is primary key
    "dept_name" varchar   NOT NULL,
	PRIMARY KEY ("dept_no")
);

CREATE TABLE "Department_Employees" (
    "emp_no" int   NOT NULL,
    "dept_no" varchar   NOT NULL,
	CONSTRAINT "fk_Department_Employees_emp_no" FOREIGN KEY("emp_no") REFERENCES "Employee" ("emp_no"),
	CONSTRAINT "fk_Department_Employees_dept_no" FOREIGN KEY("dept_no") REFERENCES "Departments" ("dept_no")
);

CREATE TABLE "Department_Mgr" (
    "dept_no" varchar   NOT NULL,
    "emp_no" int   NOT NULL,
	CONSTRAINT "fk_Department_Mgr_emp_no" FOREIGN KEY("emp_no") REFERENCES "Employee" ("emp_no"),
	CONSTRAINT "fk_Department_Mgr_dept_no" FOREIGN KEY("dept_no") REFERENCES "Departments" ("dept_no")
);

