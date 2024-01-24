DATA(gv_total) = REDUCE #( INIT total TYPE string
                            FOR ls_likp IN lt_likp2
                            NEXT total = total + ls_likp-btgew ). "Sum all the 
