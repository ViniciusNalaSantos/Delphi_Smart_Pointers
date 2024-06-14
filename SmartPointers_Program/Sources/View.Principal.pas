﻿unit View.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls;

// Credits to: https://blog.marcocantu.com/

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  SmartPointer;


{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  SL : TStringList;
begin
  SL := TStringList.Create;
  try
    SL.Add('Value');
    ShowMessage('Total of Registers: ' + IntToStr(SL.Count));
  finally
    // Leave with a space in memory reserved for the object list
  end;

end;



procedure TForm1.Button2Click(Sender: TObject);
var
  SL : TStringList;
begin
  SL := TStringList.Create;
  try
    SL.Add('Value');
    ShowMessage('Total of Registers: ' + IntToStr(SL.Count));
  finally
    // Free the object list from the memory
    SL.Free
  end;

end;

// Using smart pointers
procedure TForm1.Button3Click(Sender: TObject);
var
  SL : TSmartPointer<TStringList>;
begin
  // We could use the class operator, and we wouldn't need to instanciate
  // SL := TStringList.Create;
  SL.ObjectValue.Add('Value');
  ShowMessage('Total of Registers: ' + IntToStr(SL.ObjectValue.Count));
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  ReportMemoryLeaksOnShutdown := True;
end;

end.
