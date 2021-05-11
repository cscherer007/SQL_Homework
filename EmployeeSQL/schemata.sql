--DEPARTMENTS
-- Table: public.departments

-- DROP TABLE public.departments;

CREATE TABLE public.departments
(
    dept_no character varying(10) COLLATE pg_catalog."default" NOT NULL,
    dept_name character varying(30) COLLATE pg_catalog."default",
    CONSTRAINT departments_pkey PRIMARY KEY (dept_no)
)

TABLESPACE pg_default;

ALTER TABLE public.departments
    OWNER to postgres;



--EMPLOYEES
    -- Table: public.dept_employees

-- DROP TABLE public.dept_employees;

CREATE TABLE public.dept_employees
(
    emp_no character varying(30) COLLATE pg_catalog."default",
    dept_no character varying(15) COLLATE pg_catalog."default"
)

TABLESPACE pg_default;

ALTER TABLE public.dept_employees
    OWNER to postgres;


--DEPT MANAGERS
    -- Table: public.dept_manager

-- DROP TABLE public.dept_manager;

CREATE TABLE public.dept_manager
(
    dept_no character varying(20) COLLATE pg_catalog."default" NOT NULL,
    emp_no character varying(20) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT dept_manager_pkey PRIMARY KEY (emp_no)
)

TABLESPACE pg_default;

ALTER TABLE public.dept_manager
    OWNER to postgres;


--EMPLOYEE TABLE
    -- Table: public.employees

-- DROP TABLE public.employees;

CREATE TABLE public.employees
(
    emp_no character varying(20) COLLATE pg_catalog."default" NOT NULL,
    emp_title_id character varying(20) COLLATE pg_catalog."default",
    birth_date date,
    first_name character varying(30) COLLATE pg_catalog."default",
    last_name character varying(30) COLLATE pg_catalog."default",
    sex character varying(10) COLLATE pg_catalog."default",
    hire_date date,
    CONSTRAINT employees_pkey PRIMARY KEY (emp_no)
)

TABLESPACE pg_default;

ALTER TABLE public.employees
    OWNER to postgres;


--SALARY TABLE
    -- Table: public.salaries

-- DROP TABLE public.salaries;

CREATE TABLE public.salaries
(
    emp_no character varying(20) COLLATE pg_catalog."default" NOT NULL,
    salary numeric,
    CONSTRAINT salaries_pkey PRIMARY KEY (emp_no)
)

TABLESPACE pg_default;

ALTER TABLE public.salaries
    OWNER to postgres;


--TITLES TABLE
    -- Table: public.titles

-- DROP TABLE public.titles;

CREATE TABLE public.titles
(
    title_id character varying(15) COLLATE pg_catalog."default" NOT NULL,
    title character varying(30) COLLATE pg_catalog."default",
    CONSTRAINT titles_pkey PRIMARY KEY (title_id)
)

TABLESPACE pg_default;

ALTER TABLE public.titles
    OWNER to postgres;