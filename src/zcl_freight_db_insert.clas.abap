CLASS zcl_freight_db_insert DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  INTERFACES IF_OO_ADT_CLASSRUN.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_FREIGHT_DB_INSERT IMPLEMENTATION.


    METHOD if_oo_adt_classrun~main.

    DATA ls_freight_order TYPE zfreight_order.

    ls_freight_order-freight_order_id = 'F000000001'.
    ls_freight_order-carrier_name = 'DHL'.
    ls_freight_order-freight_amount = '25000.00'.
    ls_freight_order-freight_status = '01'.

    INSERT zfreight_order FROM @ls_freight_order.

    IF sy-subrc = 0.
      out->write( 'Freight order inserted successfully' ).
    ELSE.
      out->write( 'Insert failed' ).
    ENDIF.

    ENDMETHOD.
ENDCLASS.
