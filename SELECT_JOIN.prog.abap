SELECT FROM mara AS a
  JOIN makt AS b
    ON a~matnr EQ b~matnr
  FIELDS
  a~matnr,
  b~maktx
  INTO TABLE @DATA(gt_material)."SIMPLE SELECT

SELECT FROM mara AS a
  JOIN makt AS b
    ON a~matnr EQ b~matnr
  FIELDS
  a~matnr,
  b~maktx
  WHERE a~matnr NE @space
  INTO TABLE @DATA(gt_material)."SELECT using WHERE
