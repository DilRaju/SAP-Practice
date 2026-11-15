CLASS zcl_rajesh_hello DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_RAJESH_HELLO IMPLEMENTATION.


METHOD if_oo_adt_classrun~main.

  DATA lv_name TYPE string.

  lv_name = 'Rajesh'.

  out->write( lv_name ).

ENDMETHOD.
ENDCLASS.
