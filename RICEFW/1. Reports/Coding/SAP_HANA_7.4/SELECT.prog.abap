

SELECT FROM mara
  FIELDS matnr
  INTO TABLE @DATA(gt_mara)."SIMPLE SELECT 

SELECT FROM mara
  FIELDS matnr as material "USING ALIAS in SELECT
  INTO TABLE @DATA(gt_mara).

SELECT SINGLE FROM mara
  FIELDS matnr,
         aenam
  INTO @DATA(gs_mara)."SELECT SINGLE FOR STRUCTURE

SELECT SINGLE FROM mara
  FIELDS matnr
  INTO @DATA(gv_mara)."SELECT SINGLE FOR VARIABLE

SELECT FROM mara 
  FIELDS matnr
  WHERE matnr EQ 'material' "SELECT WHERE
  INTO TABLE @DATA(gt_mara).

SELECT SINGLE FROM bseg
  FIELDS belnr,
         valut,
         zterm
  WHERE zuonr EQ 'PNWTYH-CLMNO'
    AND bschl EQ '11'
  INTO ( @DATA(lv_crmemo_no) , "Cr memo no
         @DATA(lv_crmemo_date), "Cr. memo date
         @DATA(lv_payt_terms) ). "Cr. memo payment terms

SELECT FROM likp
  FIELDS vbeln,
         SUM( btgew ) as btgew "Allias is required
  GROUP BY vbeln "Group using field vbeln
  INTO TABLE @DATA(lt_likp2)
  UP TO 10 ROWS.
