unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    LabeledEdit1: TLabeledEdit;
    LabeledEdit2: TLabeledEdit;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    LabeledEdit3: TLabeledEdit;
    LabeledEdit4: TLabeledEdit;
    LabeledEdit5: TLabeledEdit;
    Label3: TLabel;
    Label4: TLabel;
    Button2: TButton;
    Button3: TButton;
    LabeledEdit6: TLabeledEdit;
    Label5: TLabel;
    LabeledEdit7: TLabeledEdit;
    LabeledEdit8: TLabeledEdit;
    LabeledEdit9: TLabeledEdit;
    procedure Button1Click(Sender: TObject);
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

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin

  Label1.Caption := floattostr(trunc(StrToFloat(LabeledEdit1.Text) /
    (StrToFloat(LabeledEdit2.Text) * (StrToFloat(LabeledEdit2.Text)))*100)/100);

end;

procedure TForm1.Button2Click(Sender: TObject);
begin

  Label4.Caption :=
    floattostr(((trunc(StrToFloat(LabeledEdit3.Text) + StrToFloat(LabeledEdit4.Text) +
    StrToFloat(LabeledEdit5.Text)) / 3)*100)/100);

end;

procedure TForm1.Button3Click(Sender: TObject);
var
  hora: Integer;
  minuto: Integer;
  segundo: Integer;
  entrada: Integer;
begin

  entrada := StrToInt(LabeledEdit6.Text);

  hora := entrada DIV 3600;

  entrada := entrada MOD 3600;

  minuto := entrada DIV 60;

  segundo := entrada MOD 60;

  LabeledEdit7.Text := IntToStr(hora);

  LabeledEdit8.Text := IntToStr(minuto);

  LabeledEdit9.Text := IntToStr(segundo);

end;

end.
