CLASS zcl_encapsulation_public DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  METHODS get_freight_amount
    RETURNING VALUE(rv_amount) TYPE decfloat34.

  PRIVATE SECTION.
  METHODS calculate_freight
    IMPORTING
      iv_distance TYPE i
      iv_rate TYPE decfloat34
    RETURNING VALUE(rv_amount) TYPE decfloat34.

ENDCLASS.



CLASS zcl_encapsulation_public IMPLEMENTATION.

  METHOD get_freight_amount.

    rv_amount = me->calculate_freight(
      iv_distance = 1000
      iv_rate     = '25.50'
    ).

  ENDMETHOD.


  METHOD calculate_freight.

    rv_amount = iv_distance * iv_rate.

  ENDMETHOD.

ENDCLASS.
