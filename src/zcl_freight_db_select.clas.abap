CLASS zcl_freight_db_select DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  INTERFACES IF_OO_ADT_CLASSRUN.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_FREIGHT_DB_SELECT IMPLEMENTATION.


    METHOD if_oo_adt_classrun~main.

    SELECT * FROM zfreight_order into TABLE @DATA(lt_frieght_order).

        IF sy-subrc = 0.
            out->write( 'Freight order found' ).
            out->write( lt_frieght_order ).
        ELSE.
            out->write( 'Freight order not found' ).
        ENDIF.

    ENDMETHOD.
ENDCLASS.
