PROGRAM Hello(INPUT, OUTPUT);
USES
  DOS;
VAR
  Str: String;
  Check: CHAR;
  I: INTEGER;
BEGIN {PrintHello}
  WRITELN('Content-Type: text/plain');
  WRITELN;
  Str := GetEnv('QUERY_STRING');
  IF (Str[1] = 'n') AND (Str[2] = 'a') AND (Str[3] = 'm') AND (Str[4] = 'e') AND (Str[5] = '=')
    THEN
      BEGIN
        Check := 'Y';
        WRITE('Hello dear, ');
        FOR I := 6 TO LENGTH(Str)
        DO
          WRITE(Str[I]);
        WRITELN('!')
      END;
  IF (Check <> 'Y')
  THEN
    WRITELN('Hello Anonymous!')
END. {PrintHello}

