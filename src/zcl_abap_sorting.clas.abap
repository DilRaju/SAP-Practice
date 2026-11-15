CLASS zcl_abap_sorting DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  INTERFACES IF_OO_ADT_CLASSRUN.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_ABAP_SORTING IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    DATA lt_freight_orders TYPE TABLE OF zfreight_order.

    SELECT *
      FROM zfreight_order
      INTO TABLE @lt_freight_orders.

    out->write( 'Before sorting:' ).
    out->write( lt_freight_orders ).

    SORT lt_freight_orders BY freight_order_id ASCENDING.

    out->write( 'After sorting:' ).
    out->write( lt_freight_orders ).

  ENDMETHOD.
ENDCLASS.
