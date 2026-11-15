CLASS zcl_abap_read DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_ABAP_READ IMPLEMENTATION.


METHOD if_oo_adt_classrun~main.

    DATA lt_freight_orders TYPE TABLE OF zfreight_order.

    SELECT *
      FROM zfreight_order
      INTO TABLE @lt_freight_orders.

    READ TABLE lt_freight_orders
      INTO DATA(ls_freight_order)
      WITH KEY freight_order_id = 'F000000002'.

    IF sy-subrc = 0.

      out->write( 'Freight order found!' ).
      out->write( ls_freight_order ).

    ELSE.

      out->write( 'Freight order not found!' ).

    ENDIF.

  ENDMETHOD.
ENDCLASS.
