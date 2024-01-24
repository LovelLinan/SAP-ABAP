  SELECT FROM marc
    FIELDS matnr,
           werks
    INTO TABLE @DATA(gt_marc).
    
  SELECT FROM mara 
    FIELDS matnr
    FOR ALL ENTRIES IN @gt_marc
    WHERE matnr EQ @gt_marc-matnr
    INTO TABLE @DATA(gt_material)."FOR ALL ENTRIES IN SIMPLE SELECT

  SELECT FROM mara as a
    JOIN makt as b
      ON a~matnr EQ b~matnr
    FIELDS a~matnr,
           b~maktx
    FOR ALL ENTRIES IN @gt_marc
    WHERE a~matnr EQ @gt_marc-material
    INTO TABLE @DATA(gt_material)."FOR ALL ENTRIES JOINING SELECT


