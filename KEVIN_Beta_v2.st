PROGRAM DualCarElevator
  VAR
    C1F1LimitSw AT %IX0.0 : BOOL;
  END_VAR
  VAR
    Higher : BOOL;
  END_VAR
  VAR
    C1Location AT %QW2 : UINT;
    C2Location AT %QW4 : UINT;
    C2F1LimitSw AT %IX0.1 : BOOL;
    C2F2LimitSw AT %IX0.3 : BOOL;
    C2F3LimitSw AT %IX0.5 : BOOL;
    C2F4LimitSw AT %IX0.7 : BOOL;
    F2DownCall AT %QX0.5 : BOOL;
  END_VAR
  VAR
    C2F1MemLoc : BOOL;
    C2F2MemLoc : BOOL;
    C2F3MemLoc : BOOL;
    C2F4MemLoc : BOOL;
    C2F1VisMem : BOOL;
    C2F2VisMem : BOOL;
    C2F3VisMem : BOOL;
    C2F4VisMem : BOOL;
    C2F1LastVisMem : BOOL;
    C2F2LastVisMem : BOOL;
    C2F3LastVisMem : BOOL;
    C2F4LastVisMem : BOOL;
  END_VAR
  VAR
    C2MotorUp AT %QX0.2 : BOOL;
    C2MotorDown AT %QX0.3 : BOOL;
  END_VAR
  VAR
    C2MotorStops : BOOL;
    C2DoorOpenReady : BOOL;
    C2DoorClose : BOOL;
    C2DoorOpen : BOOL;
    C2DoorIsClosed : BOOL;
    C2DoorCloseReady : BOOL;
  END_VAR
  VAR
    C2F1CarCall AT %QX100.4 : BOOL;
    C2F2CarCall AT %QX100.5 : BOOL;
    C2F3CarCall AT %QX100.6 : BOOL;
    C2F4CarCall AT %QX100.7 : BOOL;
    F2UpCall AT %QX0.6 : BOOL;
    F3UpCall AT %QX1.0 : BOOL;
    F3DownCall AT %QX0.7 : BOOL;
    C1F2LimitSw AT %IX0.2 : BOOL;
    C1F3LimitSw AT %IX0.4 : BOOL;
    C1F4LimitSw AT %IX0.6 : BOOL;
    C1F1CarCall AT %QX100.0 : BOOL;
    C1F2CarCall AT %QX100.1 : BOOL;
    C1F3CarCall AT %QX100.2 : BOOL;
    C1F4CarCall AT %QX100.3 : BOOL;
    F1UpCall AT %QX0.4 : BOOL;
    F4DownCall AT %QX1.1 : BOOL;
    C1MotorUp AT %QX0.0 : BOOL;
    C1MotorDown AT %QX0.1 : BOOL;
  END_VAR
  VAR
    C1MotorStops : BOOL;
    C1DoorOpen : BOOL;
    C1DoorClose : BOOL;
    C1F1MemLoc : BOOL;
    C1F2MemLoc : BOOL;
    C1F3MemLoc : BOOL;
    C1F4MemLoc : BOOL;
    C1F1LastVisMem : BOOL;
    C1F2LastVisMem : BOOL;
    C1F3LastVisMem : BOOL;
    C1F4LastVisMem : BOOL;
    C1F1VisMem : BOOL;
    C1F2VisMem : BOOL;
    C1F3VisMem : BOOL;
    C1F4VisMem : BOOL;
    DoorOpenDelay : TON;
    C1DoorOpenReady : BOOL;
    C1DoorCloseReady : BOOL;
    C1DoorIsClosed : BOOL;
    C1DoorOpeningDelay : TON;
    C1DoorClosingDelay : TON;
    DoorOpenDelay0 : TON;
    C2DoorClosingDelay : TON;
    C2DoorOpeningDelay : TON;
  END_VAR
  VAR
    C1F1CarBtn AT %IX100.0 : BOOL;
    C1F2CarBtn AT %IX100.1 : BOOL;
    C1F3CarBtn AT %IX100.2 : BOOL;
    C1F4CarBtn AT %IX100.3 : BOOL;
    C2F1CarBtn AT %IX100.5 : BOOL;
    C2F2CarBtn AT %IX100.6 : BOOL;
    C2F3CarBtn AT %IX100.7 : BOOL;
    C2F4CarBtn AT %IX101.0 : BOOL;
    F1UpBtn AT %IX1.0 : BOOL;
    F2DownBtn AT %IX1.1 : BOOL;
    F2UpBtn AT %IX1.2 : BOOL;
    F3DownBtn AT %IX1.3 : BOOL;
    F3UpBtn AT %IX1.4 : BOOL;
    F4DownBtn AT %IX1.5 : BOOL;
    FireMode AT %QX1.3 : BOOL;
  END_VAR
  VAR
    C1DirUp : BOOL;
    C1DirDown : BOOL;
    C2DirUp : BOOL;
    C2DirDown : BOOL;
    MOVE552_ENO : BOOL;
    MOVE552_OUT : UINT;
    MOVE206_ENO : BOOL;
    MOVE206_OUT : UINT;
    MOVE210_ENO : BOOL;
    MOVE210_OUT : UINT;
    MOVE237_ENO : BOOL;
    MOVE237_OUT : UINT;
    MOVE312_ENO : BOOL;
    MOVE312_OUT : UINT;
    MOVE246_ENO : BOOL;
    MOVE246_OUT : UINT;
    MOVE249_ENO : BOOL;
    MOVE249_OUT : UINT;
    MOVE306_ENO : BOOL;
    MOVE306_OUT : UINT;
    F_TRIG1 : F_TRIG;
    F_TRIG2 : F_TRIG;
    F_TRIG3 : F_TRIG;
    F_TRIG4 : F_TRIG;
    F_TRIG5 : F_TRIG;
    F_TRIG6 : F_TRIG;
    F_TRIG7 : F_TRIG;
    F_TRIG8 : F_TRIG;
    F_TRIG9 : F_TRIG;
    F_TRIG10 : F_TRIG;
    F_TRIG11 : F_TRIG;
    F_TRIG12 : F_TRIG;
    F_TRIG13 : F_TRIG;
    F_TRIG14 : F_TRIG;
    F_TRIG15 : F_TRIG;
    F_TRIG16 : F_TRIG;
    F_TRIG17 : F_TRIG;
    F_TRIG18 : F_TRIG;
    F_TRIG19 : F_TRIG;
    F_TRIG20 : F_TRIG;
    F_TRIG21 : F_TRIG;
    F_TRIG22 : F_TRIG;
    F_TRIG23 : F_TRIG;
    F_TRIG24 : F_TRIG;
    F_TRIG25 : F_TRIG;
    F_TRIG26 : F_TRIG;
    F_TRIG27 : F_TRIG;
    F_TRIG28 : F_TRIG;
    F_TRIG29 : F_TRIG;
    F_TRIG30 : F_TRIG;
    F_TRIG31 : F_TRIG;
    F_TRIG32 : F_TRIG;
    GE584_ENO : BOOL;
    GE584_OUT : BOOL;
  END_VAR

  IF C1F1LimitSw THEN
    C1F1MemLoc := TRUE; (*set*)
  END_IF;
  IF C2F1LimitSw THEN
    C2F1MemLoc := TRUE; (*set*)
  END_IF;
  IF C1F1LimitSw THEN
    C1F2MemLoc := FALSE; (*reset*)
  END_IF;
  IF C2F1LimitSw THEN
    C2F2MemLoc := FALSE; (*reset*)
  END_IF;
  MOVE552_OUT := MOVE(EN := C1F1MemLoc, IN := 1, ENO => MOVE552_ENO);
  IF MOVE552_ENO THEN
      C1Location := MOVE552_OUT;
  END_IF;
  IF C1F1LimitSw THEN
    C1F3MemLoc := FALSE; (*reset*)
  END_IF;
  IF C2F1LimitSw THEN
    C2F3MemLoc := FALSE; (*reset*)
  END_IF;
  IF C1F1LimitSw THEN
    C1F4MemLoc := FALSE; (*reset*)
  END_IF;
  IF C2F1LimitSw THEN
    C2F4MemLoc := FALSE; (*reset*)
  END_IF;
  MOVE206_OUT := MOVE(EN := C1F2MemLoc, IN := 2, ENO => MOVE206_ENO);
  IF MOVE206_ENO THEN
      C1Location := MOVE206_OUT;
  END_IF;
  IF C1F2LimitSw THEN
    C1F1MemLoc := FALSE; (*reset*)
  END_IF;
  IF C2F2LimitSw THEN
    C2F1MemLoc := FALSE; (*reset*)
  END_IF;
  IF C1F2LimitSw THEN
    C1F2MemLoc := TRUE; (*set*)
  END_IF;
  IF C2F2LimitSw THEN
    C2F2MemLoc := TRUE; (*set*)
  END_IF;
  IF C1F2LimitSw THEN
    C1F3MemLoc := FALSE; (*reset*)
  END_IF;
  IF C2F2LimitSw THEN
    C2F3MemLoc := FALSE; (*reset*)
  END_IF;
  MOVE210_OUT := MOVE(EN := C1F3MemLoc, IN := 3, ENO => MOVE210_ENO);
  IF MOVE210_ENO THEN
      C1Location := MOVE210_OUT;
  END_IF;
  IF C1F2LimitSw THEN
    C1F4MemLoc := FALSE; (*reset*)
  END_IF;
  IF C2F2LimitSw THEN
    C2F4MemLoc := FALSE; (*reset*)
  END_IF;
  IF C1F3LimitSw THEN
    C1F1MemLoc := FALSE; (*reset*)
  END_IF;
  IF C2F3LimitSw THEN
    C2F1MemLoc := FALSE; (*reset*)
  END_IF;
  MOVE237_OUT := MOVE(EN := C1F4MemLoc, IN := 4, ENO => MOVE237_ENO);
  IF MOVE237_ENO THEN
      C1Location := MOVE237_OUT;
  END_IF;
  IF C1F3LimitSw THEN
    C1F2MemLoc := FALSE; (*reset*)
  END_IF;
  IF C2F3LimitSw THEN
    C2F2MemLoc := FALSE; (*reset*)
  END_IF;
  IF C1F3LimitSw THEN
    C1F3MemLoc := TRUE; (*set*)
  END_IF;
  IF C2F3LimitSw THEN
    C2F3MemLoc := TRUE; (*set*)
  END_IF;
  MOVE312_OUT := MOVE(EN := C2F1MemLoc, IN := 1, ENO => MOVE312_ENO);
  IF MOVE312_ENO THEN
      C2Location := MOVE312_OUT;
  END_IF;
  IF C1F3LimitSw THEN
    C1F4MemLoc := FALSE; (*reset*)
  END_IF;
  IF C2F3LimitSw THEN
    C2F4MemLoc := FALSE; (*reset*)
  END_IF;
  IF C1F4LimitSw THEN
    C1F1MemLoc := FALSE; (*reset*)
  END_IF;
  IF C2F4LimitSw THEN
    C2F1MemLoc := FALSE; (*reset*)
  END_IF;
  IF C1F4LimitSw THEN
    C1F2MemLoc := FALSE; (*reset*)
  END_IF;
  IF C2F4LimitSw THEN
    C2F2MemLoc := FALSE; (*reset*)
  END_IF;
  MOVE246_OUT := MOVE(EN := C2F2MemLoc, IN := 2, ENO => MOVE246_ENO);
  IF MOVE246_ENO THEN
      C2Location := MOVE246_OUT;
  END_IF;
  IF C1F4LimitSw THEN
    C1F3MemLoc := FALSE; (*reset*)
  END_IF;
  IF C2F4LimitSw THEN
    C2F3MemLoc := FALSE; (*reset*)
  END_IF;
  IF C1F4LimitSw THEN
    C1F4MemLoc := TRUE; (*set*)
  END_IF;
  IF C2F4LimitSw THEN
    C2F4MemLoc := TRUE; (*set*)
  END_IF;
  MOVE249_OUT := MOVE(EN := C2F3MemLoc, IN := 3, ENO => MOVE249_ENO);
  IF MOVE249_ENO THEN
      C2Location := MOVE249_OUT;
  END_IF;
  MOVE306_OUT := MOVE(EN := C2F4MemLoc, IN := 4, ENO => MOVE306_ENO);
  IF MOVE306_ENO THEN
      C2Location := MOVE306_OUT;
  END_IF;
  IF C1F1CarBtn AND NOT(FireMode) THEN
    C1F1VisMem := TRUE; (*set*)
  END_IF;
  IF C1F1CarBtn AND NOT(FireMode) THEN
    C1F1CarCall := TRUE; (*set*)
  END_IF;
  IF C1F2CarBtn AND NOT(FireMode) THEN
    C1F2VisMem := TRUE; (*set*)
  END_IF;
  IF C1F2CarBtn AND NOT(FireMode) THEN
    C1F2CarCall := TRUE; (*set*)
  END_IF;
  IF C1F3CarBtn AND NOT(FireMode) THEN
    C1F3VisMem := TRUE; (*set*)
  END_IF;
  IF C1F3CarBtn AND NOT(FireMode) THEN
    C1F3CarCall := TRUE; (*set*)
  END_IF;
  IF C1F4CarBtn AND NOT(FireMode) THEN
    C1F4VisMem := TRUE; (*set*)
  END_IF;
  IF C1F4CarBtn AND NOT(FireMode) THEN
    C1F4CarCall := TRUE; (*set*)
  END_IF;
  IF F1UpBtn AND NOT(FireMode) THEN
    F1UpCall := TRUE; (*set*)
  END_IF;
  IF F2DownBtn AND NOT(FireMode) THEN
    F2DownCall := TRUE; (*set*)
  END_IF;
  IF F2UpBtn AND NOT(FireMode) THEN
    F2UpCall := TRUE; (*set*)
  END_IF;
  IF F3DownBtn AND NOT(FireMode) THEN
    F3DownCall := TRUE; (*set*)
  END_IF;
  IF F3UpBtn AND NOT(FireMode) THEN
    F3UpCall := TRUE; (*set*)
  END_IF;
  IF F4DownBtn AND NOT(FireMode) THEN
    F4DownCall := TRUE; (*set*)
  END_IF;
  IF (C1F1LastVisMem AND C1F1VisMem OR NOT(C1F1VisMem)) AND (C1F3VisMem OR C1F4VisMem) AND C1F2MemLoc AND NOT(C1MotorStops) OR (C1F1LastVisMem OR C1F2LastVisMem) AND (C1F1VisMem OR C1F2VisMem) AND C1F4VisMem AND C1F3MemLoc AND NOT(C1MotorStops) OR (NOT(C1F1VisMem) AND NOT(C1F2VisMem) AND C1F4VisMem AND C1F3MemLoc OR (C1F2VisMem OR C1F3VisMem OR C1F4VisMem) AND C1F1MemLoc) AND NOT(C1MotorStops) THEN
    C1MotorUp := TRUE; (*set*)
  END_IF;
  F_TRIG1(CLK := C1F1MemLoc);
  IF F_TRIG1.Q THEN
    C1F1LastVisMem := TRUE; (*set*)
  END_IF;
  F_TRIG2(CLK := C1F1MemLoc);
  IF F_TRIG2.Q THEN
    C1F2LastVisMem := FALSE; (*reset*)
  END_IF;
  IF (C1F1LastVisMem AND C1F1VisMem OR NOT(C1F1VisMem)) AND (C1F3VisMem OR C1F4VisMem) AND C1F2MemLoc AND NOT(C1MotorStops) OR (C1F1LastVisMem OR C1F2LastVisMem) AND (C1F1VisMem OR C1F2VisMem) AND C1F4VisMem AND C1F3MemLoc AND NOT(C1MotorStops) OR (NOT(C1F1VisMem) AND NOT(C1F2VisMem) AND C1F4VisMem AND C1F3MemLoc OR (C1F2VisMem OR C1F3VisMem OR C1F4VisMem) AND C1F1MemLoc) AND NOT(C1MotorStops) THEN
    C1MotorDown := FALSE; (*reset*)
  END_IF;
  F_TRIG3(CLK := C1F1MemLoc);
  IF F_TRIG3.Q THEN
    C1F3LastVisMem := FALSE; (*reset*)
  END_IF;
  F_TRIG4(CLK := C1F1MemLoc);
  IF F_TRIG4.Q THEN
    C1F4LastVisMem := FALSE; (*reset*)
  END_IF;
  F_TRIG5(CLK := C1F2MemLoc);
  IF F_TRIG5.Q THEN
    C1F1LastVisMem := FALSE; (*reset*)
  END_IF;
  F_TRIG6(CLK := C1F2MemLoc);
  IF F_TRIG6.Q THEN
    C1F2LastVisMem := TRUE; (*set*)
  END_IF;
  F_TRIG7(CLK := C1F2MemLoc);
  IF F_TRIG7.Q THEN
    C1F3LastVisMem := FALSE; (*reset*)
  END_IF;
  F_TRIG8(CLK := C1F2MemLoc);
  IF F_TRIG8.Q THEN
    C1F4LastVisMem := FALSE; (*reset*)
  END_IF;
  F_TRIG9(CLK := C1F3MemLoc);
  IF F_TRIG9.Q THEN
    C1F1LastVisMem := FALSE; (*reset*)
  END_IF;
  F_TRIG10(CLK := C1F3MemLoc);
  IF F_TRIG10.Q THEN
    C1F2LastVisMem := FALSE; (*reset*)
  END_IF;
  IF (C1F3LastVisMem OR C1F4LastVisMem) AND (C1F3VisMem OR C1F4VisMem) AND C1F1VisMem AND C1F2MemLoc AND NOT(C1MotorStops) OR (C1F4LastVisMem AND C1F4VisMem OR NOT(C1F4VisMem)) AND (C1F1VisMem OR C1F2VisMem) AND C1F3MemLoc AND NOT(C1MotorStops) OR (NOT(C1F4VisMem) AND NOT(C1F3VisMem) AND C1F1VisMem AND C1F2MemLoc OR (C1F1VisMem OR C1F2VisMem OR C1F3VisMem) AND C1F4MemLoc) AND NOT(C1MotorStops) THEN
    C1MotorUp := FALSE; (*reset*)
  END_IF;
  F_TRIG11(CLK := C1F3MemLoc);
  IF F_TRIG11.Q THEN
    C1F3LastVisMem := TRUE; (*set*)
  END_IF;
  F_TRIG12(CLK := C1F3MemLoc);
  IF F_TRIG12.Q THEN
    C1F4LastVisMem := FALSE; (*reset*)
  END_IF;
  IF (C1F3LastVisMem OR C1F4LastVisMem) AND (C1F3VisMem OR C1F4VisMem) AND C1F1VisMem AND C1F2MemLoc AND NOT(C1MotorStops) OR (C1F4LastVisMem AND C1F4VisMem OR NOT(C1F4VisMem)) AND (C1F1VisMem OR C1F2VisMem) AND C1F3MemLoc AND NOT(C1MotorStops) OR (NOT(C1F4VisMem) AND NOT(C1F3VisMem) AND C1F1VisMem AND C1F2MemLoc OR (C1F1VisMem OR C1F2VisMem OR C1F3VisMem) AND C1F4MemLoc) AND NOT(C1MotorStops) THEN
    C1MotorDown := TRUE; (*set*)
  END_IF;
  F_TRIG13(CLK := C1F4MemLoc);
  IF F_TRIG13.Q THEN
    C1F1LastVisMem := FALSE; (*reset*)
  END_IF;
  F_TRIG14(CLK := C1F4MemLoc);
  IF F_TRIG14.Q THEN
    C1F2LastVisMem := FALSE; (*reset*)
  END_IF;
  F_TRIG15(CLK := C1F4MemLoc);
  IF F_TRIG15.Q THEN
    C1F3LastVisMem := FALSE; (*reset*)
  END_IF;
  F_TRIG16(CLK := C1F4MemLoc);
  IF F_TRIG16.Q THEN
    C1F4LastVisMem := TRUE; (*set*)
  END_IF;
  IF NOT(C1F1LimitSw) THEN
    C1MotorStops := TRUE; (*set*)
  END_IF;
  IF NOT(C2F1LimitSw) THEN
    C2MotorStops := TRUE; (*set*)
  END_IF;
  IF NOT(C1F1LimitSw) THEN
    C1F1CarCall := FALSE; (*reset*)
  END_IF;
  IF NOT(C2F1LimitSw) THEN
    C2F1CarCall := FALSE; (*reset*)
  END_IF;
  IF NOT(C1F1LimitSw) THEN
    F1UpCall := FALSE; (*reset*)
  END_IF;
  IF NOT(C2F1LimitSw) THEN
    C2F1VisMem := FALSE; (*reset*)
  END_IF;
  IF NOT(C1F1LimitSw) THEN
    C1F1VisMem := FALSE; (*reset*)
  END_IF;
  IF C1F2VisMem AND C1F2LimitSw THEN
    C1MotorStops := TRUE; (*set*)
  END_IF;
  IF C2F2VisMem AND C2F2LimitSw THEN
    C2MotorStops := TRUE; (*set*)
  END_IF;
  IF C1F2VisMem AND C1F2LimitSw THEN
    C1F2CarCall := FALSE; (*reset*)
  END_IF;
  IF C2F2VisMem AND C2F2LimitSw THEN
    C2F2CarCall := FALSE; (*reset*)
  END_IF;
  IF C1F2VisMem AND C1F2LimitSw THEN
    F2UpCall := FALSE; (*reset*)
  END_IF;
  IF C2F2VisMem AND C2F2LimitSw THEN
    F2DownCall := FALSE; (*reset*)
  END_IF;
  IF C1F2VisMem AND C1F2LimitSw THEN
    C1F2VisMem := FALSE; (*reset*)
  END_IF;
  IF C2F2VisMem AND C2F2LimitSw THEN
    C2F2VisMem := FALSE; (*reset*)
  END_IF;
  IF C1F3VisMem AND C1F3LimitSw THEN
    C1MotorStops := TRUE; (*set*)
  END_IF;
  IF C2F3VisMem AND C2F3LimitSw THEN
    C2MotorStops := TRUE; (*set*)
  END_IF;
  IF C1F3VisMem AND C1F3LimitSw THEN
    C1F3CarCall := FALSE; (*reset*)
  END_IF;
  IF C2F3VisMem AND C2F3LimitSw THEN
    C2F3CarCall := FALSE; (*reset*)
  END_IF;
  IF C1F3VisMem AND C1F3LimitSw THEN
    F3UpCall := FALSE; (*reset*)
  END_IF;
  IF C2F3VisMem AND C2F3LimitSw THEN
    F3DownCall := FALSE; (*reset*)
  END_IF;
  IF C1F3VisMem AND C1F3LimitSw THEN
    C1F3VisMem := FALSE; (*reset*)
  END_IF;
  IF C2F3VisMem AND C2F3LimitSw THEN
    C2F3VisMem := FALSE; (*reset*)
  END_IF;
  IF C1F4LimitSw THEN
    C1MotorStops := TRUE; (*set*)
  END_IF;
  IF C2F4LimitSw THEN
    C2MotorStops := TRUE; (*set*)
  END_IF;
  IF C1F4LimitSw THEN
    C1F4CarCall := FALSE; (*reset*)
  END_IF;
  IF C2F4LimitSw THEN
    C2F4CarCall := FALSE; (*reset*)
  END_IF;
  IF C1F4LimitSw THEN
    C1F4VisMem := FALSE; (*reset*)
  END_IF;
  IF C2F4LimitSw THEN
    F4DownCall := FALSE; (*reset*)
  END_IF;
  IF C2F4LimitSw THEN
    C2F4VisMem := FALSE; (*reset*)
  END_IF;
  IF C1MotorStops THEN
    C1MotorUp := FALSE; (*reset*)
  END_IF;
  IF C1MotorStops THEN
    C1MotorDown := FALSE; (*reset*)
  END_IF;
  DoorOpenDelay(IN := C1MotorStops, PT := T#5s);
  C1DoorOpenReady := DoorOpenDelay.Q;
  IF C1DoorOpenReady THEN
    C1DoorClose := FALSE; (*reset*)
  END_IF;
  IF C1DoorOpenReady THEN
    C1DoorOpen := TRUE; (*set*)
  END_IF;
  IF C1DoorOpenReady THEN
    C1DoorIsClosed := FALSE; (*reset*)
  END_IF;
  C1DoorOpeningDelay(IN := C1DoorOpenReady, PT := T#10s);
  IF C1DoorOpeningDelay.Q THEN
    C1DoorCloseReady := TRUE; (*set*)
  END_IF;
  IF C1DoorOpeningDelay.Q THEN
    C1DoorOpenReady := FALSE; (*reset*)
  END_IF;
  IF C1DoorCloseReady THEN
    C1DoorClose := TRUE; (*set*)
  END_IF;
  IF C1DoorCloseReady THEN
    C1DoorOpen := FALSE; (*reset*)
  END_IF;
  C1DoorClosingDelay(IN := C1DoorCloseReady, PT := T#5s);
  IF C1DoorClosingDelay.Q THEN
    C1DoorCloseReady := FALSE; (*reset*)
  END_IF;
  IF C1DoorClosingDelay.Q THEN
    C1DoorIsClosed := TRUE; (*set*)
  END_IF;
  IF C1DoorClosingDelay.Q THEN
    C1MotorStops := FALSE; (*reset*)
  END_IF;
  IF (C2F1LastVisMem AND C2F1VisMem OR NOT(C2F1VisMem)) AND (C2F3VisMem OR C2F4VisMem) AND C2F2MemLoc AND NOT(C2MotorStops) OR (C2F1LastVisMem OR C2F2LastVisMem) AND (C2F1VisMem OR C2F2VisMem) AND C2F4VisMem AND C2F3MemLoc AND NOT(C2MotorStops) OR (NOT(C2F1VisMem) AND NOT(C2F2VisMem) AND C2F4VisMem AND C2F3MemLoc OR (C2F2VisMem OR C2F3VisMem OR C2F4VisMem) AND C2F1MemLoc) AND NOT(C2MotorStops) THEN
    C2MotorUp := TRUE; (*set*)
  END_IF;
  F_TRIG17(CLK := C2F1MemLoc);
  IF F_TRIG17.Q THEN
    C2F1LastVisMem := TRUE; (*set*)
  END_IF;
  F_TRIG18(CLK := C2F1MemLoc);
  IF F_TRIG18.Q THEN
    C2F2LastVisMem := FALSE; (*reset*)
  END_IF;
  IF (C2F1LastVisMem AND C2F1VisMem OR NOT(C2F1VisMem)) AND (C2F3VisMem OR C2F4VisMem) AND C2F2MemLoc AND NOT(C2MotorStops) OR (C2F1LastVisMem OR C2F2LastVisMem) AND (C2F1VisMem OR C2F2VisMem) AND C2F4VisMem AND C2F3MemLoc AND NOT(C2MotorStops) OR (NOT(C2F1VisMem) AND NOT(C2F2VisMem) AND C2F4VisMem AND C2F3MemLoc OR (C2F2VisMem OR C2F3VisMem OR C2F4VisMem) AND C2F1MemLoc) AND NOT(C2MotorStops) THEN
    C2MotorDown := FALSE; (*reset*)
  END_IF;
  F_TRIG19(CLK := C2F1MemLoc);
  IF F_TRIG19.Q THEN
    C2F3LastVisMem := FALSE; (*reset*)
  END_IF;
  F_TRIG20(CLK := C2F1MemLoc);
  IF F_TRIG20.Q THEN
    C2F4LastVisMem := FALSE; (*reset*)
  END_IF;
  F_TRIG21(CLK := C2F2MemLoc);
  IF F_TRIG21.Q THEN
    C2F1LastVisMem := FALSE; (*reset*)
  END_IF;
  F_TRIG22(CLK := C2F2MemLoc);
  IF F_TRIG22.Q THEN
    C2F2LastVisMem := TRUE; (*set*)
  END_IF;
  F_TRIG23(CLK := C2F2MemLoc);
  IF F_TRIG23.Q THEN
    C2F3LastVisMem := FALSE; (*reset*)
  END_IF;
  F_TRIG24(CLK := C2F2MemLoc);
  IF F_TRIG24.Q THEN
    C2F4LastVisMem := FALSE; (*reset*)
  END_IF;
  F_TRIG25(CLK := C2F3MemLoc);
  IF F_TRIG25.Q THEN
    C2F1LastVisMem := FALSE; (*reset*)
  END_IF;
  F_TRIG26(CLK := C2F3MemLoc);
  IF F_TRIG26.Q THEN
    C2F2LastVisMem := FALSE; (*reset*)
  END_IF;
  IF (C2F3LastVisMem OR C2F4LastVisMem) AND (C2F3VisMem OR C2F4VisMem) AND C2F1VisMem AND C2F2MemLoc AND NOT(C2MotorStops) OR (C2F4LastVisMem AND C2F4VisMem OR NOT(C2F4VisMem)) AND (C2F1VisMem OR C2F2VisMem) AND C2F3MemLoc AND NOT(C2MotorStops) OR (NOT(C2F4VisMem) AND NOT(C2F3VisMem) AND C2F1VisMem AND C2F2MemLoc OR (C2F1VisMem OR C2F2VisMem OR C2F3VisMem) AND C2F4MemLoc) AND NOT(C2MotorStops) THEN
    C2MotorUp := FALSE; (*reset*)
  END_IF;
  F_TRIG27(CLK := C2F3MemLoc);
  IF F_TRIG27.Q THEN
    C2F3LastVisMem := TRUE; (*set*)
  END_IF;
  F_TRIG28(CLK := C2F3MemLoc);
  IF F_TRIG28.Q THEN
    C2F4LastVisMem := FALSE; (*reset*)
  END_IF;
  IF (C2F3LastVisMem OR C2F4LastVisMem) AND (C2F3VisMem OR C2F4VisMem) AND C2F1VisMem AND C2F2MemLoc AND NOT(C2MotorStops) OR (C2F4LastVisMem AND C2F4VisMem OR NOT(C2F4VisMem)) AND (C2F1VisMem OR C2F2VisMem) AND C2F3MemLoc AND NOT(C2MotorStops) OR (NOT(C2F4VisMem) AND NOT(C2F3VisMem) AND C2F1VisMem AND C2F2MemLoc OR (C2F1VisMem OR C2F2VisMem OR C2F3VisMem) AND C2F4MemLoc) AND NOT(C2MotorStops) THEN
    C2MotorDown := TRUE; (*set*)
  END_IF;
  F_TRIG29(CLK := C2F4MemLoc);
  IF F_TRIG29.Q THEN
    C2F1LastVisMem := FALSE; (*reset*)
  END_IF;
  F_TRIG30(CLK := C2F4MemLoc);
  IF F_TRIG30.Q THEN
    C2F2LastVisMem := FALSE; (*reset*)
  END_IF;
  F_TRIG31(CLK := C2F4MemLoc);
  IF F_TRIG31.Q THEN
    C2F3LastVisMem := FALSE; (*reset*)
  END_IF;
  F_TRIG32(CLK := C2F4MemLoc);
  IF F_TRIG32.Q THEN
    C2F4LastVisMem := TRUE; (*set*)
  END_IF;
  IF C2F1CarBtn AND NOT(FireMode) THEN
    C2F1VisMem := TRUE; (*set*)
  END_IF;
  IF C2F1CarBtn AND NOT(FireMode) THEN
    C2F1CarCall := TRUE; (*set*)
  END_IF;
  IF C2F2CarBtn AND NOT(FireMode) THEN
    C2F2VisMem := TRUE; (*set*)
  END_IF;
  IF C2F2CarBtn AND NOT(FireMode) THEN
    C2F2CarCall := TRUE; (*set*)
  END_IF;
  IF C2F3CarBtn AND NOT(FireMode) THEN
    C2F3VisMem := TRUE; (*set*)
  END_IF;
  IF C2F3CarBtn AND NOT(FireMode) THEN
    C2F3CarCall := TRUE; (*set*)
  END_IF;
  IF C2F4CarBtn AND NOT(FireMode) THEN
    C2F4VisMem := TRUE; (*set*)
  END_IF;
  IF C2F4CarBtn AND NOT(FireMode) THEN
    C2F4CarCall := TRUE; (*set*)
  END_IF;
  IF C2MotorStops THEN
    C2MotorUp := FALSE; (*reset*)
  END_IF;
  IF C2MotorStops THEN
    C2MotorDown := FALSE; (*reset*)
  END_IF;
  DoorOpenDelay0(IN := C2MotorStops, PT := T#5s);
  C2DoorOpenReady := DoorOpenDelay0.Q;
  IF C2DoorOpenReady THEN
    C2DoorClose := FALSE; (*reset*)
  END_IF;
  IF C2DoorOpenReady THEN
    C2DoorOpen := TRUE; (*set*)
  END_IF;
  IF C2DoorOpenReady THEN
    C2DoorIsClosed := FALSE; (*reset*)
  END_IF;
  C2DoorOpeningDelay(IN := C2DoorOpenReady, PT := T#10s);
  IF C2DoorOpeningDelay.Q THEN
    C2DoorCloseReady := TRUE; (*set*)
  END_IF;
  IF C2DoorOpeningDelay.Q THEN
    C2DoorOpenReady := FALSE; (*reset*)
  END_IF;
  IF C2DoorCloseReady THEN
    C2DoorClose := TRUE; (*set*)
  END_IF;
  IF C2DoorCloseReady THEN
    C2DoorOpen := FALSE; (*reset*)
  END_IF;
  C2DoorClosingDelay(IN := C2DoorCloseReady, PT := T#5s);
  IF C2DoorClosingDelay.Q THEN
    C2DoorCloseReady := FALSE; (*reset*)
  END_IF;
  IF C2DoorClosingDelay.Q THEN
    C2DoorIsClosed := TRUE; (*set*)
  END_IF;
  IF C2DoorClosingDelay.Q THEN
    C2MotorStops := FALSE; (*reset*)
  END_IF;
  IF FireMode THEN
    C1F1CarCall := FALSE; (*reset*)
  END_IF;
  IF FireMode THEN
    C2F1CarCall := FALSE; (*reset*)
  END_IF;
  IF FireMode THEN
    C1F2CarCall := FALSE; (*reset*)
  END_IF;
  IF FireMode THEN
    C2F2CarCall := FALSE; (*reset*)
  END_IF;
  IF FireMode THEN
    C1F3CarCall := FALSE; (*reset*)
  END_IF;
  IF FireMode THEN
    C2F3CarCall := FALSE; (*reset*)
  END_IF;
  IF FireMode THEN
    C1F4CarCall := FALSE; (*reset*)
  END_IF;
  IF FireMode THEN
    C2F4CarCall := FALSE; (*reset*)
  END_IF;
  IF FireMode THEN
    F1UpCall := FALSE; (*reset*)
  END_IF;
  IF FireMode THEN
    F2DownCall := FALSE; (*reset*)
  END_IF;
  IF FireMode THEN
    F2UpCall := FALSE; (*reset*)
  END_IF;
  IF FireMode THEN
    F3DownCall := FALSE; (*reset*)
  END_IF;
  IF FireMode THEN
    F3UpCall := FALSE; (*reset*)
  END_IF;
  IF FireMode THEN
    F4DownCall := FALSE; (*reset*)
  END_IF;
  IF NOT(C1F1LimitSw) AND FireMode THEN
    C1F1VisMem := TRUE; (*set*)
  END_IF;
  IF NOT(C2F1LimitSw) AND FireMode THEN
    C2F1VisMem := TRUE; (*set*)
  END_IF;
  IF C1F1LimitSw AND FireMode THEN
    C1F1VisMem := FALSE; (*reset*)
  END_IF;
  IF C2F1LimitSw AND FireMode THEN
    C2F1VisMem := FALSE; (*reset*)
  END_IF;
  IF FireMode THEN
    C1F2VisMem := FALSE; (*reset*)
  END_IF;
  IF FireMode THEN
    C2F2VisMem := FALSE; (*reset*)
  END_IF;
  IF FireMode THEN
    C1F3VisMem := FALSE; (*reset*)
  END_IF;
  IF FireMode THEN
    C2F3VisMem := FALSE; (*reset*)
  END_IF;
  IF FireMode THEN
    C1F4VisMem := FALSE; (*reset*)
  END_IF;
  IF FireMode THEN
    C2F4VisMem := FALSE; (*reset*)
  END_IF;
  IF NOT(C1F4LimitSw) AND NOT(C1F3LimitSw) AND NOT(C1F2LimitSw) AND NOT(C1F1LimitSw) AND FireMode THEN
    C1MotorUp := FALSE; (*reset*)
  END_IF;
  IF NOT(C1F4LimitSw) AND NOT(C1F3LimitSw) AND NOT(C1F2LimitSw) AND NOT(C1F1LimitSw) AND FireMode THEN
    C1MotorDown := TRUE; (*set*)
  END_IF;
  IF NOT(C2F4LimitSw) AND NOT(C2F3LimitSw) AND NOT(C2F2LimitSw) AND NOT(C2F1LimitSw) AND FireMode THEN
    C2MotorUp := FALSE; (*reset*)
  END_IF;
  IF NOT(C2F4LimitSw) AND NOT(C2F3LimitSw) AND NOT(C2F2LimitSw) AND NOT(C2F1LimitSw) AND FireMode THEN
    C2MotorDown := TRUE; (*set*)
  END_IF;
  GE584_OUT := GE(EN := TRUE, IN1 := C2Location, IN2 := C1Location, ENO => GE584_ENO);
  Higher := GE584_OUT;
  IF C1MotorUp THEN
    C1DirUp := TRUE; (*set*)
  END_IF;
  IF C2MotorUp THEN
    C2DirUp := TRUE; (*set*)
  END_IF;
  IF C1MotorDown THEN
    C1DirDown := TRUE; (*set*)
  END_IF;
  IF C2MotorDown THEN
    C2DirDown := TRUE; (*set*)
  END_IF;
  IF C1F4MemLoc AND C1MotorStops OR NOT(C1F4VisMem) AND (C1F3MemLoc OR NOT(C1F3VisMem) AND C1F2MemLoc) AND C1MotorStops THEN
    C1DirUp := FALSE; (*reset*)
  END_IF;
  IF C1F1MemLoc AND C1MotorStops OR NOT(C1F1VisMem) AND (C1F2MemLoc OR NOT(C1F2VisMem) AND C1F3MemLoc) AND C1MotorStops THEN
    C1DirDown := FALSE; (*reset*)
  END_IF;
  IF C2F4MemLoc AND C2MotorStops OR NOT(C2F4VisMem) AND (C2F3MemLoc OR NOT(C2F3VisMem) AND C2F2MemLoc) AND C2MotorStops THEN
    C2DirUp := FALSE; (*reset*)
  END_IF;
  IF C2F1MemLoc AND C2MotorStops OR NOT(C2F1VisMem) AND (C2F2MemLoc OR NOT(C2F2VisMem) AND C2F3MemLoc) AND C2MotorStops THEN
    C2DirDown := FALSE; (*reset*)
  END_IF;
  IF (NOT(C2DirDown) AND NOT(C1DirDown) OR (Higher AND C2DirDown OR NOT(C2DirDown)) AND C1DirDown) AND F1UpBtn AND NOT(FireMode) THEN
    C1F1VisMem := TRUE; (*set*)
  END_IF;
  IF (NOT(C1DirDown) AND C2DirDown OR NOT(Higher) AND C2DirDown AND C1DirDown) AND F1UpBtn AND NOT(FireMode) THEN
    C2F1VisMem := TRUE; (*set*)
  END_IF;
  IF (C2F1MemLoc AND NOT(C1DirDown) AND C2DirDown OR (NOT(C1F1MemLoc) AND NOT(C2DirDown) OR (C2F1MemLoc AND NOT(Higher) OR NOT(C1F1MemLoc) AND Higher) AND C2DirDown) AND C1DirDown) AND F2DownBtn AND NOT(FireMode) THEN
    C1F2VisMem := TRUE; (*set*)
  END_IF;
  IF (NOT(C2DirDown) AND NOT(C1DirDown) OR NOT(C2F1MemLoc) AND NOT(C1DirDown) AND C2DirDown OR (C1F1MemLoc AND NOT(C2DirDown) OR (C1F1MemLoc AND Higher OR NOT(C2F1MemLoc) AND NOT(Higher)) AND C2DirDown) AND C1DirDown) AND F2DownBtn AND NOT(FireMode) THEN
    C2F2VisMem := TRUE; (*set*)
  END_IF;
  IF (NOT(C1F1MemLoc) AND NOT(C1DirUp) AND C2DirUp OR (C2F1MemLoc AND NOT(C2DirUp) OR (C2F1MemLoc AND NOT(Higher) OR NOT(C1F1MemLoc) AND Higher) AND C2DirUp) AND C1DirUp) AND F2UpBtn AND NOT(FireMode) THEN
    C2F2VisMem := TRUE; (*set*)
  END_IF;
  IF (C1F1MemLoc AND NOT(C1DirUp) AND C2DirUp OR NOT(C2DirUp) AND NOT(C1DirUp) OR (NOT(C2F1MemLoc) AND NOT(C2DirUp) OR (C1F1MemLoc AND Higher OR NOT(C2F1MemLoc) AND NOT(Higher)) AND C2DirUp) AND C1DirUp) AND F2UpBtn AND NOT(FireMode) THEN
    C1F2VisMem := TRUE; (*set*)
  END_IF;
  IF (C1F4MemLoc AND NOT(C1DirDown) AND C2DirDown OR (NOT(C2F4MemLoc) AND NOT(C2DirDown) OR (C1F4MemLoc AND NOT(Higher) OR NOT(C2F4MemLoc) AND Higher) AND C2DirDown) AND C1DirDown) AND F3DownBtn AND NOT(FireMode) THEN
    C1F3VisMem := TRUE; (*set*)
  END_IF;
  IF (NOT(C2DirDown) AND NOT(C1DirDown) OR NOT(C1F4MemLoc) AND NOT(C1DirDown) AND C2DirDown OR (C2F4MemLoc AND NOT(C2DirDown) OR (C2F4MemLoc AND Higher OR NOT(C1F4MemLoc) AND NOT(Higher)) AND C2DirDown) AND C1DirDown) AND F3DownBtn AND NOT(FireMode) THEN
    C2F3VisMem := TRUE; (*set*)
  END_IF;
  IF (NOT(C2DirUp) AND NOT(C1DirUp) OR NOT(C1F4MemLoc) AND NOT(C1DirUp) AND C2DirUp OR (C2F4MemLoc AND NOT(C2DirUp) OR (NOT(C1F1MemLoc) AND NOT(C1F2MemLoc) AND NOT(Higher) OR (C2F1MemLoc OR C2F2MemLoc) AND Higher) AND C2DirUp) AND C1DirUp) AND F3UpBtn AND NOT(FireMode) THEN
    C2F3VisMem := TRUE; (*set*)
  END_IF;
  IF (C1F4MemLoc AND NOT(C1DirUp) AND C2DirUp OR (NOT(C2F4MemLoc) AND NOT(C2DirUp) OR (NOT(C2F1MemLoc) AND NOT(C2F2MemLoc) AND Higher OR (C1F1MemLoc OR C1F2MemLoc) AND NOT(Higher)) AND C2DirUp) AND C1DirUp) AND F3UpBtn AND NOT(FireMode) THEN
    C1F3VisMem := TRUE; (*set*)
  END_IF;
  IF (NOT(C2DirUp) AND NOT(C1DirUp) OR (NOT(C2DirUp) OR NOT(Higher) AND C2DirUp) AND C1DirUp) AND F4DownBtn AND NOT(FireMode) THEN
    C1F4VisMem := TRUE; (*set*)
  END_IF;
  IF (Higher AND C2DirUp AND C1DirUp OR NOT(C1DirUp) AND C2DirUp) AND F4DownBtn AND NOT(FireMode) THEN
    C2F4VisMem := TRUE; (*set*)
  END_IF;
END_PROGRAM


CONFIGURATION Config0

  RESOURCE Res0 ON PLC
    TASK task0(INTERVAL := T#20ms,PRIORITY := 0);
    PROGRAM instance0 WITH task0 : DualCarElevator;
  END_RESOURCE
END_CONFIGURATION
