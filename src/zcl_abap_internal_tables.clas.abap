CLASS zcl_abap_internal_tables DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  INTERFACES IF_OO_ADT_CLASSRUN.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_ABAP_INTERNAL_TABLES IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    DATA ls_employee TYPE ZEMPLOYEENEW.

    "Employee 1
    ls_employee-emp_id = 'E001'.
    ls_employee-emp_name = 'Rajesh'.
    ls_employee-emp_salary = '75000'.
    ls_employee-emp_dept = 'IT'.


    out->write( ls_employee ).

  ENDMETHOD.
ENDCLASS.
