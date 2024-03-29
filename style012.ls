/PROG  STYLE012
/ATTR
OWNER		= VCPUBLIC;
COMMENT		= "RPV700 Main";
PROG_SIZE	= 708;
CREATE		= DATE 21-12-15  TIME 19:13:50;
MODIFIED	= DATE 22-11-26  TIME 09:55:34;
FILE_NAME	= STYLE012;
VERSION		= 0;
LINE_COUNT	= 25;
MEMORY_SIZE	= 1004;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= *,*,*,*,*;
CONTROL_CODE	= 00000000 00000000;
/APPL
  SPOT Welding Equipment Number : 1 ;
/MN
   1:  !******************************** ;
   2:  ! RIVIAN AUTOMOTIVE ;
   3:  ! ROBOT: FM10200_RBT01 ;
   4:  ! MODEL: RPV700 ;
   5:  ! Assembly: FM10200 ;
   6:  !******************************** ;
   7:  ! Sealer ;
   8:  ! Version 2.2 ;
   9:  !******************************** ;
  10:   ;
  11:  ECHO STYLE(12) ;
  12:  ECHO OPTION    ;
  13:   ;
  14:  CALL S012POUNC    ;
  15:   ;
  16:  CALL S012SD01_MLL    ;
  17:   ;
  18:  MESSAGE[Wait seal 2 path 102] ;
  19:  WAIT NEXT PATH    ;
  20:  DO[469:StatusOK]=ON ;
  21:   ;
  22:  CALL S012SD02    ;
  23:   ;
  24:  MOVE TO HOME    ;
  25:   ;
/POS
/END
