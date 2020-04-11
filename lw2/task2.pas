PROGRAM SarahRevere(INPUT, OUTPUT);
USES
  DOS;
VAR
  Message: String;
BEGIN {PrintHello}
  WRITELN('Content-Type: text/plain');
  WRITELN;
  Message := GetEnv('QUERY_STRING');
  IF (Message ='lanterns=1') 
  THEN 
    WRITELN('The British are coming by land')
  ELSE
    IF (Message = 'lanterns=2')
    THEN 
      WRITELN('The British are coming by sea')
    ELSE
      WRITELN('Sarah did`t say')
END. {PrintHello}

