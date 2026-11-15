CLASS zcl_update_carrier_id DEFINITION
  PUBLIC FINAL CREATE PUBLIC.

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.

ENDCLASS.

CLASS zcl_update_carrier_id IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

    UPDATE zfreight_order
      SET carrier_id = 'C001'
      WHERE carrier_name = 'DHL'.

    UPDATE zfreight_order
      SET carrier_id = 'C002'
      WHERE carrier_name = 'FEDEX'.

    UPDATE zfreight_order
      SET carrier_id = 'C003'
      WHERE carrier_name = 'BlueDart'.

    COMMIT WORK.

    out->write( 'Carrier IDs updated.' ).

  ENDMETHOD.

ENDCLASS.
