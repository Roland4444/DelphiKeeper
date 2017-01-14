unit Unit1;
interface
uses
  MMSystem, Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;
type
  TForm1 = class(TForm)
    Timer1: TTimer;
    Timer2: TTimer;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Button2: TButton;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure Button2Click(Sender: TObject);
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
  if Timer1.Enabled=False then Timer1.Enabled := True
  else
    Timer1.Enabled := False;
    Timer1.Interval:= StrToInt(Edit1.Text)*60*1000;
    Timer1.Enabled := True;
    Label3.Caption := 'Timer started after '+IntToStr(trunc(Timer1.Interval/1000))+' sec';
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  if Timer1.Enabled=True then Timer1.Enabled := False;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
  Timer2.Interval := StrToInt(Edit2.Text) * 60000;
  Timer2.Enabled := True;
  sndPlaySound('start.wav', SND_NODEFAULT);
  Label3.Caption := 'Relaxing '+IntToStr(trunc(Timer2.Interval/1000))+' sec';

end;

procedure TForm1.Timer2Timer(Sender: TObject);
begin
  Timer2.Enabled := False;
  sndPlaySound('stop.wav', SND_NODEFAULT);
  Label3.Caption := 'Next Relaxing after'+IntToStr(trunc(Timer2.Interval/1000))+' sec';
end;

end.
