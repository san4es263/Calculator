unit Calc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, Math, jpeg, ExtCtrls;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    ButtonBackSpace: TButton;
    ButtonC: TButton;
    Edit1: TEdit;
    Button4: TButton;
    Button8: TButton;
    Button9: TButton;
    Button7: TButton;
    Button5: TButton;
    Button6: TButton;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button0: TButton;
    ButtonMul: TButton;
    ButtonSign: TButton;
    ButtonDiv: TButton;
    ButtonSub: TButton;
    ButtonAdd: TButton;
    ButtonResult: TButton;
    ButtonExp: TButton;
    ButtonStep: TButton;
    ButtonLn: TButton;
    ButtonLog: TButton;
    ButtonPi: TButton;
    ButtonSqr: TButton;
    ButtonSqrt: TButton;
    ButtonArcCos: TButton;
    ButtonArcSin: TButton;
    ButtonArcTan: TButton;
    ButtonCos: TButton;
    ButtonSin: TButton;
    ButtonTan: TButton;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    Button1DivX: TButton;
    ButtonPoint: TButton;
    Image1: TImage;
    Label1: TLabel;
    procedure N2Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button0Click(Sender: TObject);
    procedure ButtonBackSpaceClick(Sender: TObject); 
    procedure ButtonSubClick(Sender: TObject);
    procedure ButtonDivClick(Sender: TObject);
    procedure ButtonMulClick(Sender: TObject);
    procedure ButtonAddClick(Sender: TObject);
    procedure ButtonResultClick(Sender: TObject);
    procedure ButtonSignClick(Sender: TObject);
    procedure ButtonExpClick(Sender: TObject);
    procedure ButtonStepClick(Sender: TObject);
    procedure ButtonLnClick(Sender: TObject);
    procedure ButtonLogClick(Sender: TObject);
    procedure ButtonPiClick(Sender: TObject);
    procedure ButtonSqrClick(Sender: TObject);
    procedure ButtonSqrtClick(Sender: TObject);
    procedure ButtonArcCosClick(Sender: TObject);
    procedure ButtonArcSinClick(Sender: TObject);
    procedure ButtonArcTanClick(Sender: TObject);
    procedure ButtonCosClick(Sender: TObject);
    procedure ButtonSinClick(Sender: TObject);
    procedure ButtonTanClick(Sender: TObject);
    procedure ButtonCClick(Sender: TObject);
    procedure Button1DivXClick(Sender: TObject);
    procedure ButtonPointClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  i,p,r,k: Real;
  mode: integer;
implementation

{$R *.dfm}
// ���� -> �����
procedure TForm1.N2Click(Sender: TObject);
begin
  Close;
end;
// ������� -> � ���������
procedure TForm1.N4Click(Sender: TObject);
begin
  showmessage ('���������� ����������� ������� ��� ��� ��������� ��������!)) � ���������, ����������� ��������� Sacret!');
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
  if (k=1) then Edit1.Text:='';
  if (Edit1.Text='0') then
    Edit1.Text:='';
  Edit1.Text:=Edit1.Text+'7';
  k:=0;
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
  if (k=1) then Edit1.Text:='';
  if (Edit1.Text='0') then
    Edit1.Text:='';
   Edit1.Text:=Edit1.Text+'8';
   k:=0;
end;

procedure TForm1.Button9Click(Sender: TObject);
begin
  if (k=1) then Edit1.Text:='';
  if (Edit1.Text='0') then
    Edit1.Text:='';
  Edit1.Text:=Edit1.Text+'9';
  k:=0;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  if (k=1) then Edit1.Text:='';
  if (Edit1.Text='0') then
    Edit1.Text:='';
  Edit1.Text:=Edit1.Text+'4';
  k:=0;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  if (k=1) then Edit1.Text:='';
  if (Edit1.Text='0') then
    Edit1.Text:='';
  Edit1.Text:=Edit1.Text+'5';
  k:=0;
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
  if (k=1) then Edit1.Text:='';
  if (Edit1.Text='0') then
    Edit1.Text:='';
  Edit1.Text:=Edit1.Text+'6';
  k:=0;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  if (k=1) then Edit1.Text:='';
  if (Edit1.Text='0') then
    Edit1.Text:='';
  Edit1.Text:=Edit1.Text+'1';
  k:=0;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  if (k=1) then Edit1.Text:='';
  if (Edit1.Text='0') then
    Edit1.Text:='';
  Edit1.Text:=Edit1.Text+'2';
  k:=0;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  if (k=1) then Edit1.Text:='';
  if (Edit1.Text='0') then
    Edit1.Text:='';
  Edit1.Text:=Edit1.Text+'3';
  k:=0;
end;

procedure TForm1.Button0Click(Sender: TObject);
begin
  if (k=1) then Edit1.Text:='';
  if (Edit1.Text='0') or (Edit1.Text='') then
    begin
      Edit1.Text:='0';
    end
  else
    begin
      Edit1.Text:=Edit1.Text+'0';
    end;
  k:=0;
end;

procedure TForm1.ButtonBackSpaceClick(Sender: TObject);
  var st: string;
begin
  st:=Edit1.Text;
  delete(st,length(st),1);
  Edit1.Text:=st;
  if Edit1.Text='' then
    begin
      Edit1.Text:='0';
    end;
end;

procedure TForm1.ButtonAddClick(Sender: TObject);
begin   
  i:=StrToFloat(Edit1.Text);
  mode:=1;
  k:=1;
end;

procedure TForm1.ButtonSubClick(Sender: TObject);
begin
  i:=StrToFloat(Edit1.Text);
  mode:=2;
  k:=1;
end;

procedure TForm1.ButtonDivClick(Sender: TObject);
begin
  i:=StrToFloat(Edit1.Text);
  mode:=3;
  k:=1;
end;

procedure TForm1.ButtonMulClick(Sender: TObject);
begin
  i:=StrToFloat(Edit1.Text);
  mode:=4;
  k:=1;
end;

procedure TForm1.ButtonStepClick(Sender: TObject);
begin
  i:=StrToFloat(Edit1.Text);
  mode:=5;
  k:=1;
end;

procedure TForm1.ButtonResultClick(Sender: TObject);
begin
  k:=1;
  case mode of
  1:begin
     p:=StrToFloat(Edit1.Text);
     r:=i+p;
     Edit1.Text:=FloatToStr(r);
    end;
  2:begin
     p:=StrToFloat(Edit1.Text);
     r:=i-p;
     Edit1.Text:=FloatToStr(r);
    end;
  3:begin
     p:=StrToFloat(Edit1.Text);
     if (p=0) then
         showmessage ('������! ������� �� 0!');
     if (p<>0)then
         r:=i/p;
     Edit1.Text:=FloatToStr(r);
    end;
  4:begin
     p:=StrToFloat(Edit1.Text);
     r:=i*p;
     Edit1.Text:=FloatToStr(r);
    end;
  5:begin
     p:=StrToFloat(Edit1.Text);
     r:=Power(i,p);
     Edit1.Text:=FloatToStr(r);
    end; 
end;  

//function Power (i: Real; p:Real) : Real;
//begin

end;

procedure TForm1.ButtonSignClick(Sender: TObject);
begin
  i:=StrToFloat(Edit1.Text);
  i:=0-i;
  Edit1.Text:=FloatToStr(i);
end;

procedure TForm1.ButtonExpClick(Sender: TObject);
begin
  i:=StrToFloat(Edit1.Text);
  i:=Exp(i);
  Edit1.Text:=FloatToStr(i);
end;

procedure TForm1.ButtonLnClick(Sender: TObject);
begin
  i:=StrToFloat(Edit1.Text);
  i:=ln(i);
  Edit1.Text:=FloatToStr(i);
end;

procedure TForm1.ButtonLogClick(Sender: TObject);
begin
  i:=StrToFloat(Edit1.Text);
  i:=Log10(i);
  Edit1.Text:=FloatToStr(i);
end;

procedure TForm1.ButtonPiClick(Sender: TObject);
begin
  Edit1.Text:=FloatToStr(Pi);
end;

procedure TForm1.ButtonSqrClick(Sender: TObject);
begin
  i:=StrToFloat(Edit1.Text);
  i:=Sqr(i);
  Edit1.Text:=FloatToStr(i);
end;

procedure TForm1.ButtonSqrtClick(Sender: TObject);
begin
  i:=StrToFloat(Edit1.Text);
  i:=Sqrt(i);
  Edit1.Text:=FloatToStr(i);
end;

procedure TForm1.ButtonArcCosClick(Sender: TObject);
begin
  i:=StrToFloat(Edit1.Text);
  if (i<=1) and (i>=-1) then
    begin
      i:=ArcCos(i);
    end
  else
    begin
      showmessage ('������! �� ����������!');
    end;
  Edit1.Text:=FloatToStr(i);
end;

procedure TForm1.ButtonArcSinClick(Sender: TObject);
begin
  i:=StrToFloat(Edit1.Text);
  if (i<=1) and (i>=-1) then
    begin
      i:=ArcSin(i);
    end
  else
    begin
      showmessage ('������! �� ����������!');
    end;
  Edit1.Text:=FloatToStr(i);
end;

procedure TForm1.ButtonArcTanClick(Sender: TObject);
begin
  i:=StrToFloat(Edit1.Text);
  if (i<=1) and (i>=-1) then
    begin
      i:=ArcTan(i);
    end
  else
    begin
      showmessage ('������! �� ����������!');
    end;
  Edit1.Text:=FloatToStr(i);
end;

procedure TForm1.ButtonCosClick(Sender: TObject);
begin
  i:=StrToFloat(Edit1.Text);
  if RadioButton1.Checked then
    i:=(i*Pi)/180;
   if RadioButton3.Checked then
    i:=(i*Pi)/200;
  i:=Cos(i);
  Edit1.Text:=FloatToStr(i);
end;

procedure TForm1.ButtonSinClick(Sender: TObject);
begin
  i:=StrToFloat(Edit1.Text);
  if RadioButton1.Checked then
    i:=(i*Pi)/180;
  if RadioButton3.Checked then
    i:=(i*Pi)/200;
  i:=Sin(i);
  Edit1.Text:=FloatToStr(i);
end;

procedure TForm1.ButtonTanClick(Sender: TObject);
begin
  i:=StrToFloat(Edit1.Text);
  if RadioButton1.Checked then
    i:=(i*Pi)/180;
   if RadioButton3.Checked then
    i:=(i*Pi)/200;
  i:=Tan(i);
  Edit1.Text:=FloatToStr(i);
end;

procedure TForm1.ButtonCClick(Sender: TObject);
begin
  Edit1.Text:='0';
end;

procedure TForm1.Button1DivXClick(Sender: TObject);
begin
  i:=StrToFloat(Edit1.Text);
  if (i=0) then
    showmessage ('������! ������� �� 0!');
  if (i<>0)then
    i:=1/i;
  Edit1.Text:=FloatToStr(i);
end;

procedure TForm1.ButtonPointClick(Sender: TObject);
begin
  Edit1.Text:=Edit1.Text + ',';
end;


procedure TForm1.FormKeyPress(Sender: TObject; var Key: Char);
begin

 case Key of
   '9':
     begin
       Button9Click(Button9);
       Key := #0;
     end;
   '8':
     begin
       Button8Click(Button8);
       Key := #0;
     end;
   '7':
     begin
       Button7Click(Button7);
       Key := #0;
     end;
   '6':
     begin
       Button6Click(Button6);
       Key := #0;
     end;
   '5':
     begin
       Button5Click(Button5);
       Key := #0;
     end;
   '4':
     begin
       Button4Click(Button4);
       Key := #0;
     end;
   '3':
     begin
       Button3Click(Button3);
       Key := #0;
     end;
   '2':
     begin
       Button2Click(Button2);
       Key := #0;
     end;
   '1':
     begin
       Button1Click(Button1);
       Key := #0;
     end;
   '0':
     begin
       Button0Click(Button0);
       Key := #0;
     end;
    '.':
     begin
       Edit1.Text:=Edit1.Text + ',';
       Key := #0;
     end;
   '/':
     begin
       ButtonDivClick(ButtonDiv);
       Key := #0;
     end;
   '*':
     begin
       ButtonMulClick(ButtonMul);
       Key := #0;
     end;
   '-':
     begin
       ButtonSubClick(ButtonSub);
       Key := #0;
     end;
   '+':
     begin
       ButtonAddClick(ButtonAdd);
       Key := #0;
     end;    
   #27:
     begin
       Close;
       Key := #0;
     end;
   end;

end;



end.
