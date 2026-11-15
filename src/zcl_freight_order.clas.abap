CLASS zcl_freight_order DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_FREIGHT_ORDER IMPLEMENTATION.


 METHOD if_oo_adt_classrun~main.

  DATA Freight_order_no TYPE String value 'f01001'.

  DATA Carrier_name TYPE STRING value 'DHL'.

  DATA Freight_amount TYPE P Length 8 Decimals 2 value '25000.50'.

  out->write( Freight_order_no ).
out->write( carrier_name ).
out->write( Freight_amount ).

ENDMETHOD.
ENDCLASS.
