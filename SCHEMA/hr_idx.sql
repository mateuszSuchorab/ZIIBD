Rem
Rem $Header: hr_idx.sql 03-mar-2001.10:05:15 ahunold Exp $
Rem
Rem hr_idx.sql
Rem
Rem  Copyright (c) Oracle Corporation 2001. All Rights Reserved.
Rem
Rem    NAME
Rem      hr_idx.sql - Create indexes for HR schema
Rem
Rem    DESCRIPTION
Rem
Rem
Rem    NOTES
Rem
Rem
Rem    CREATED by Nancy Greenberg - 06/01/00
Rem    MODIFIED   (MM/DD/YY)
Rem    ahunold     02/20/01 - New header
Rem    vpatabal    03/02/01 - Removed DROP INDEX statements
Rem    jenny tsai  29/07/07 - Added IF logic for creating the emp_department_ix
Rem    and emp_name_ix indexes only for accounts ORA21-ORA40

SET FEEDBACK 1
SET NUMWIDTH 10
SET LINESIZE 80
SET TRIMSPOOL ON
SET TAB OFF
SET PAGESIZE 100
SET ECHO OFF 

DECLARE
v_user VARCHAR2(40);
BEGIN
SELECT USER
INTO v_user
FROM dual;

IF TO_NUMBER(SUBSTR(v_user,4)) > 20
THEN
  EXECUTE IMMEDIATE 'CREATE INDEX emp_department_ix
       ON employees (department_id)';
  EXECUTE IMMEDIATE 'CREATE INDEX emp_name_ix
       ON employees (last_name, first_name)';
END IF;
END;
/

CREATE INDEX emp_job_ix
       ON employees (job_id);

CREATE INDEX emp_manager_ix
       ON employees (manager_id);

CREATE INDEX dept_location_ix
       ON departments (location_id);

CREATE INDEX jhist_job_ix
       ON job_history (job_id);

CREATE INDEX jhist_employee_ix
       ON job_history (employee_id);

CREATE INDEX jhist_department_ix
       ON job_history (department_id);

CREATE INDEX loc_city_ix
       ON locations (city);

CREATE INDEX loc_state_province_ix	
       ON locations (state_province);

CREATE INDEX loc_country_ix
       ON locations (country_id);

COMMIT;

