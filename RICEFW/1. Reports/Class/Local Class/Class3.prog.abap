CLASS lcl_data DEFINITION.
  PUBLIC SECTION.
    CLASS-METHODS:
      get_data IMPORTING iv_date TYPE d.
ENDCLASS.                    "lcl_data DEFINITION
*

*
CLASS lcl_data IMPLEMENTATION.
  METHOD get_data.
*   do something
    MESSAGE 'GET_DATA' TYPE'S'.
  ENDMETHOD.                    "get_Data
ENDCLASS.

START-OF-SELECTION .

* static method call - calling using class name
lcl_data=>get_data( '20130313' ).
