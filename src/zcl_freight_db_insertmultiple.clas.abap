CLASS zcl_freight_db_insertmultiple DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  INTERFACES IF_OO_ADT_CLASSRUN.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_FREIGHT_DB_INSERTMULTIPLE IMPLEMENTATION.


    METHOD if_oo_adt_classrun~main.

    DATA ls_freight_order TYPE zfreight_order.
    DATA lt_frieght_order TYPE TABLE OF zfreight_order.

    ls_freight_order-freight_order_id = 'F000000006'.
    ls_freight_order-carrier_name = 'FEDEX'.
    ls_freight_order-freight_amount = '40000.00'.
    ls_freight_order-freight_status = '01'.

    APPEND ls_freight_order  TO lt_frieght_order.

    ls_freight_order-freight_order_id = 'F000000002'.
    ls_freight_order-carrier_name = 'DHL'.
    ls_freight_order-freight_amount = '60000.00'.
    ls_freight_order-freight_status = '01'.

    APPEND ls_freight_order  TO lt_frieght_order.

    INSERT zfreight_order FROM TABLE @lt_frieght_order.

    IF sy-subrc = 0.
      out->write( 'Freight orders inserted successfully' ).
      out->write( lt_frieght_order ).
    ELSE.
      out->write( 'Insert failed' ).
    ENDIF.

    ENDMETHOD.
ENDCLASS.
