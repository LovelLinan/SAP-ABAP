"OUTPUT AS STRUCTURE
DATA(gs_line) = VALUE #( gt_material[ matnr = 'TOYO1' ] OPTIONAL ).

"OUTPUT AS VARIABLE
DATA(gv_line) = VALUE #( gt_material[ matnr = 'TOYO1' ]-matnr OPTIONAL ).
