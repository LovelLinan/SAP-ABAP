REPORT ZZLOCAL_CLASS2.

CLASS lcl_mainclass DEFINITION.

  PUBLIC SECTION. "Public Section can be access inside and outside of the class and can be inherited
  METHODS:  lcm_method.

  PROTECTED SECTION.  "Protected section  are accessible only within the class but can be inherited
  METHODS: lcm_method2.

  PRIVATE SECTION.  "Private are accesible only within the class
  METHODS:  lcm_method3.


ENDCLASS.

CLASS lcl_mainclass IMPLEMENTATION.
  METHOD: lcm_method.
    WRITE: 'Public Section'.
            lcm_method2( ).
            lcm_method3( ).
  ENDMETHOD.

  METHOD: lcm_method2.
    ULINE.
    WRITE: 'Protected Section'.
  ENDMETHOD.

  METHOD: lcm_method3.
    ULINE.
    WRITE: 'Private Section'.
  ENDMETHOD.
ENDCLASS.

START-OF-SELECTION.

DATA: lcl_mainclass2 TYPE REF TO lcl_mainclass.

CREATE OBJECT lcl_mainclass2.
lcl_mainclass2->lcm_method( ).
*lcl_mainclass2->lcm_method2( ). "Protected Section
*lcl_mainclass2->lcm_method3( ). "Private Section
