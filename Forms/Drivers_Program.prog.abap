 DATA: form_name       TYPE tdsfname VALUE 'ZZ5_TEST1_FORM',"form name
      fp_outputparams TYPE sfpoutputparams,"sfpoutputparams values
      fm_name         TYPE rs38l_fnam."fm name

PARAMETERS: p_text TYPE char30."Importing values

 "default value for lv_fp_outputparam
  lv_fp_outputparams-device = 'PRINTER'.
  lv_fp_outputparams-dest = 'LP01'.
  lv_fp_outputparams-nodialog = 'X'.
  lv_fp_outputparams-preview = 'X'.
  lv_fp_outputparams-reqimm  = 'X'.
  lv_fp_outputparams-arcmode = '1'.

CALL FUNCTION 'FP_JOB_OPEN'
  CHANGING
    ie_outputparams = fp_outputparams
  EXCEPTIONS
    cancel          = 1
    usage_error     = 2
    system_error    = 3
    internal_error  = 4
    OTHERS          = 5
    ."call dialog box for printing

TRY .
    "get the fm name using the form name
    CALL FUNCTION 'FP_FUNCTION_MODULE_NAME'
      EXPORTING
        i_name     = form_name 
      IMPORTING
        e_funcname = fm_name.
  CATCH cx_fp_api."catch dump
ENDTRY.

IF fm_name IS NOT INITIAL.
  CALL FUNCTION fm_name
    EXPORTING
      gv_text        = p_text 
    EXCEPTIONS
      usage_error    = 1
      system_error   = 2
      internal_error = 3
      ."call and pass the value to fm
ENDIF."if the fm name have value

CALL FUNCTION 'FP_JOB_CLOSE'
  EXCEPTIONS
    usage_error    = 1
    system_error   = 2
    internal_error = 3
    OTHERS         = 4
    . "close the job required


