﻿program Project1;

uses
  Vcl.Forms,
  View.Principal in '..\..\Sources\View.Principal.pas' {Form1},
  SmartPointer in '..\..\Sources\SmartPointer.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
