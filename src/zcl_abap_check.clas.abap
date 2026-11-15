CLASS zcl_abap_check DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  INTERFACES IF_OO_ADT_CLASSRUN.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_ABAP_CHECK IMPLEMENTATION.


METHOD if_oo_adt_classrun~main.

DATA: BEGIN OF ls_order,
        fo_no   TYPE string,
        amount  TYPE p LENGTH 8 DECIMALS 2,
      END OF ls_order.

DATA lt_orders LIKE TABLE OF ls_order.

ls_order-fo_no = 'F001'.
ls_order-amount = 5000.
APPEND ls_order TO lt_orders.

ls_order-fo_no = 'F002'.
ls_order-amount = 15000.
APPEND ls_order TO lt_orders.

ls_order-fo_no = 'F003'.
ls_order-amount = 25000.
APPEND ls_order TO lt_orders.

LOOP AT lt_orders INTO ls_order.

  CHECK ls_order-amount > 10000.

  out->write( ls_order ).

ENDLOOP.
ENDMETHOD.
ENDCLASS.
