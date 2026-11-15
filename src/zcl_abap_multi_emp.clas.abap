CLASS zcl_abap_multi_emp DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  INTERFACES IF_OO_ADT_CLASSRUN.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_ABAP_MULTI_EMP IMPLEMENTATION.


METHOD if_oo_adt_classrun~main.

DATA ls_employee TYPE zemployeenew.
DATA lt_employee TYPE TABLE OF zemployeenew.

ls_employee-emp_id = 'E001'.
ls_employee-emp_name = 'Rajesh'.
ls_employee-emp_salary = '75000'.
ls_employee-emp_dept = 'IT'.

APPEND ls_employee TO lt_employee.

CLEAR ls_employee.

ls_employee-emp_id = 'E002'.
ls_employee-emp_name = 'Suresh'.
ls_employee-emp_salary = '85000'.
ls_employee-emp_dept = 'HR'.

APPEND ls_employee TO lt_employee.

LOOP AT lt_employee INTO ls_employee.

    out->write( ls_employee ).

ENDLOOP.

ENDMETHOD.
ENDCLASS.
