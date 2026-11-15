
CLASS zcl_insert_carrier_new DEFINITION
  PUBLIC FINAL CREATE PUBLIC.

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.

ENDCLASS.

CLASS zcl_insert_carrier_new IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

    DATA lt_carriers TYPE TABLE OF zcarrier_new.

    lt_carriers = VALUE #(
      ( client = sy-mandt
        carrier_id = 'C001'
        carrier_name = 'DHL'
        country = 'Germany' )

      ( client = sy-mandt
        carrier_id = 'C002'
        carrier_name = 'FedEx'
        country = 'USA' )

      ( client = sy-mandt
        carrier_id = 'C003'
        carrier_name = 'Blue Dart'
        country = 'India' )
    ).

    INSERT zcarrier_new FROM TABLE @lt_carriers.

    IF sy-subrc = 0.
      out->write( 'Carrier records inserted successfully.' ).
    ELSE.
      out->write( 'Insert failed. Check existing records.' ).
    ENDIF.

  ENDMETHOD.

ENDCLASS.

