*Instance method declaration
CLASS lcl_data DEFINITION.
  PUBLIC SECTION.
    METHODS:
      get_data IMPORTING iv_date TYPE d.
ENDCLASS.                    "lcl_data DEFINITION
*
* Instance method call - calling using the object reference
DATA: lo_data TYPE REF TO lcl_data.
CREATE OBJECT lo_data.
lo_data->get_data( '20130313' ).
*
CLASS lcl_data IMPLEMENTATION.
  METHOD get_data.
    "   get data
  ENDMETHOD.                    "get_data
ENDCLASS.  
