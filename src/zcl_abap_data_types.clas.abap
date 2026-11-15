CLASS zcl_abap_data_types DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  INTERFACES IF_OO_ADT_CLASSRUN.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_ABAP_DATA_TYPES IMPLEMENTATION.


METHOD if_oo_adt_classrun~main.

  DATA Freight_order_no TYPE String value 'F01001'.

  DATA Carrier_name TYPE C Length 10 value 'DHL'.

  DATA Freight_amount TYPE P Length 8 Decimals 2 value '25000.75'.

  DATA Number_of_packages TYPE i value 25.

  DATA Transportation_Date TYPE D value '20261113'.

  IF Freight_amount > 20000.
    out->write( 'VERY HIGH FREIGHT' ).
ELSEIF Freight_amount > 10000.
    out->write( 'HIGH FREIGHT' ).
ELSE.
    out->write( 'NORMAL FREIGHT' ).
ENDIF.

DATA lv_count TYPE i VALUE 1.

WHILE lv_count <= 10.

    out->write( lv_count ).

    lv_count = lv_count + 1.

ENDWHILE.

out->write( Freight_order_no ).
out->write( carrier_name ).
out->write( Freight_amount ).
out->write( Number_of_packages ).
out->write( Transportation_Date ).

DATA lt_freight_orders TYPE TABLE OF string.

APPEND 'F01001' TO lt_freight_orders.
APPEND 'F01002' TO lt_freight_orders.
APPEND 'F01003' TO lt_freight_orders.

LOOP AT lt_freight_orders INTO DATA(lv_freight_order).
    out->write( lv_freight_order ).
ENDLOOP.

ENDMETHOD.
ENDCLASS.
