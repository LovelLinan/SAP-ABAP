REPORT  ztest_act2.

"Frame Implementation with title using text-001
SELECTION-SCREEN BEGIN OF BLOCK frame1 WITH FRAME TITLE text-001.
"Apply USER-COMMAND method for realtime execution when to you tick an action
"Assign radio button group using RADUIOBUTTON GROUP method
PARAMETER: rb0 RADIOBUTTON GROUP rbg USER-COMMAND user_cmd DEFAULT 'X' TYPE CHAR1,
           rb1 RADIOBUTTON GROUP rbg,
           rb2 RADIOBUTTON GROUP rbg,
           rb3 RADIOBUTTON GROUP rbg.
SELECTION-SCREEN END OF BLOCK frame1."

"This is
"Parameter Declaration with MODIF ID for screen action
PARAMETER: gv_fname TYPE string MODIF ID 001,
           gv_lname TYPE string MODIF ID 002.

AT SELECTION-SCREEN OUTPUT.

  LOOP AT SCREEN.
    IF rb1 EQ 'X' AND screen-group1 EQ 001.
      screen-active = 0."0 = hide this screen if the screen is found
    ELSEIF rb2 EQ 'X' AND screen-group1 EQ 002.
      screen-active = 0.
    ELSEIF rb3 EQ 'X' AND ( screen-group1 EQ 001 OR Screen-group1 EQ 002 ).
      screen-active = 0.
    ELSE.
      screen-active = 1.
    ENDIF.
    MODIFY SCREEN.


  ENDLOOP.
