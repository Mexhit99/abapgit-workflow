*&---------------------------------------------------------------------*
*& Include ZMB_TEAM_MANAGE_TOP                      - Module Pool      ZMB_TEAM_MANAGE
*&---------------------------------------------------------------------*
PROGRAM zmb_team_manage.

DATA: a1,
      a2,
      a3,
      a4.

DATA: gv_screen TYPE sy-dynnr.

TABLES: zplayer_table.
TYPE-POOLS: slis.




*&---------------------------------------------------------------------*
*& Module STATUS_0100 OUTPUT
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
MODULE status_0100 OUTPUT.
  SET PF-STATUS '0100'.
  SET TITLEBAR '0100'.

  IF a1 IS INITIAL AND a2 IS INITIAL AND a3 IS INITIAL AND a4 IS INITIAL.
    a1 = 'X'.
  ENDIF.

  IF a1 IS NOT INITIAL.
    gv_screen = '0101'.
  ELSEIF a2 IS NOT INITIAL.
    gv_screen = '0102'.
  ELSEIF a3 IS NOT INITIAL.
    gv_screen = '0103'.
  ELSEIF a4 IS NOT INITIAL.
    gv_screen = '0104'.

  ENDIF.



ENDMODULE.


*&---------------------------------------------------------------------*
*&      Module  SAVE_COMMAND_0100  INPUT
*&---------------------------------------------------------------------*
*       text
*----------------------------------------------------------------------*
*&---------------------------------------------------------------------*
*&      Module  USER_COMMAND_0100  INPUT
*&---------------------------------------------------------------------*
*       text
*----------------------------------------------------------------------*
MODULE user_command_0100 INPUT.

  CASE sy-ucomm.
    WHEN 'BACK' OR 'CANCEL' OR 'EXIT'.
      LEAVE TO SCREEN 0.
    WHEN OTHERS.
  ENDCASE.

ENDMODULE.
