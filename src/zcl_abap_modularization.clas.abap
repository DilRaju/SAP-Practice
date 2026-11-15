CLASS zcl_abap_modularization DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  INTERFACES IF_OO_ADT_CLASSRUN.
  PROTECTED SECTION.
  PRIVATE SECTION.
  METHODS calculate_freight
      IMPORTING
        iv_distance TYPE i
        iv_rate     TYPE DECFLOAT34
      RETURNING
        VALUE(rv_amount) TYPE DECFLOAT34.
ENDCLASS.



CLASS zcl_abap_modularization IMPLEMENTATION.
    METHOD if_oo_adt_classrun~main.

    DATA lv_amount TYPE p LENGTH 9 DECIMALS 2.

    lv_amount = me->calculate_freight(
      iv_distance = 1000
      iv_rate     = '25.50'
    ).

    out->write( |Freight Amount: { lv_amount }| ).


    ENDMETHOD.

    METHOD calculate_freight.

    rv_amount = iv_distance * iv_rate.

    ENDMETHOD.

ENDCLASS.
