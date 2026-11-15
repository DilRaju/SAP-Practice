CLASS zcl_freight_test DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  INTERFACES IF_OO_ADT_CLASSRUN.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_freight_test IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

    DATA lo_calculator TYPE REF TO zcl_encapsulation_public.
    DATA lv_amount TYPE decfloat34.

    CREATE OBJECT lo_calculator.

    lv_amount = lo_calculator->get_freight_amount( ).

    out->write( |Freight Amount: { lv_amount }| ).

  ENDMETHOD.

ENDCLASS.

