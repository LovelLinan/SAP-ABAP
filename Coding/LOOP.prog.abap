TYPES: BEGIN OF ty_mara,
       matnr TYPE matnr,
       END OF ty_mara,
       tt_mara TYPE TABLE OF ty_mara WITH DEFAULT KEY.

    SELECT FROM mara
    FIELDS matnr
    INTO TABLE @DATA(gt_mara).
    
    SELECT FROM marc
    FIELDS matnr
    INTO TABLE @DATA(gt_marc).

 DATA(gt_mara_temp) = VALUE tt_mara( FOR gs_mara IN gt_mara
                                    ( matnr = gs_mara-matnr ) )."FIELD MAPPING

 DATA(gt_mara_temp) = VALUE tt_mara( FOR gs_mara IN gt_mara
                                    ( gs_mara ) )."SAME FIELDS

 DATA(gt_mara_temp) = VALUE tt_mara( FOR gs_mara IN gt_mara
                                     FOR gs_marc IN gt_marc 
                                     WHERE ( matnr EQ gs_mara-matnr )
                                     ( matnr = gs_mara-matnr ) 
)."LOOP WHERE
