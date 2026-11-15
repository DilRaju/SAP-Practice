CLASS zcl_freight_db_update DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  INTERFACES IF_OO_ADT_CLASSRUN.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_FREIGHT_DB_UPDATE IMPLEMENTATION.


    METHOD if_oo_adt_classrun~main.

    DATA lt_frieght_orders TYPE table of zfreight_order.

    SELECT *
         FROM zfreight_order ORDER BY FREIGHT_ORDER_ID
            INTO TABLE @lt_frieght_orders.

        LOOP  AT lt_frieght_orders INTO DATA(ls_freight_order).

            IF ls_freight_order-freight_order_id = 'F000000002'.
               ls_freight_order-carrier_name = 'Blue Dart'.
                MODIFY lt_frieght_orders FROM ls_freight_order.
            ENDIF.

        ENDLOOP.

        out->write( lt_frieght_orders ).

        UPDATE zfreight_order
            SET carrier_name = 'BlueDart'
            WHERE freight_order_id = 'F000000002'.

        IF sy-subrc = 0.
            out->write( 'Freight order updated successfully' ).

        ELSE.
            out->write( 'Update failed' ).
        ENDIF.

    ENDMETHOD.
ENDCLASS.
