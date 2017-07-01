unit Operation;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Spin;

type
  TOperat = class(TForm)
    btnBalance: TBitBtn;
    btnadd: TBitBtn;
    btnGetmony: TBitBtn;
    BitBtn1: TBitBtn;
    Bevel1: TBevel;
    seSet: TSpinEdit;
    seGet: TSpinEdit;
    procedure BitBtn1Click(Sender: TObject);
    procedure btnBalanceClick(Sender: TObject);
    procedure btnaddClick(Sender: TObject);
    procedure btnGetmonyClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Operat: TOperat;

implementation

uses Main, bnkClass, Registration;

{$R *.dfm}

procedure TOperat.BitBtn1Click(Sender: TObject);
var
 i,j : Integer;
begin
 for I := 0 to 5  do
  for j := 1 to Mains.sg.RowCount  do
   Mains.sg.Cells[i,j] := '';
  // ---------------------------------

  for j := 0 to List.Count - 1 do begin
   Mains.sg.Cells[0,j+1] := TCard(List.Items[j]).Name ;
   Mains.sg.Cells[1,j+1] := TCard(List.Items[j]).Password;

     case TCard(List.Items[j]).Types of
      Salary:       Mains.sg.Cells[2,j+1] := 'Зарплата';
      Scholarships: Mains.sg.Cells[2,j+1] := 'Стипендія';
      Credit:       Mains.sg.Cells[2,j+1] := 'Кредит';
     end;
   Mains.sg.Cells[3,j+1] := TCard(List.Items[j]).Number;
   Mains.sg.Cells[4,j+1] := FloatToStr(TCard(List.Items[j]).Balance);
   Mains.sg.Cells[5,j+1] := TCard(List.Items[j]).Date;

  end;
 Close;
end;

procedure TOperat.btnaddClick(Sender: TObject);
var
 tmp,tmp2: Integer;
begin
 case TCard(List.Items[Mains.sg.Row - 1]).Types of
  Salary :TCard(List.Items[Mains.sg.Row - 1]).Balance :=
            TCard(List.Items[Mains.sg.Row - 1]).Balance + seSet.Value;

  Scholarships:
        begin
           TCard(List.Items[Mains.sg.Row - 1]).Balance :=
             TCard(List.Items[Mains.sg.Row - 1]).Balance - seGet.Value;
        end;
 end;

end;

procedure TOperat.btnBalanceClick(Sender: TObject);
begin
 ShowMessage('Поточний рахунок: ' + FloatToStr(
  TCard(List.Items[Mains.sg.Row - 1]).Balance));
end;

procedure TOperat.btnGetmonyClick(Sender: TObject);
begin
 if TCard(List.Items[Mains.sg.Row - 1]).Types = Credit then
  if seGet.Value > TCard(List.Items[Mains.sg.Row - 1]).Balance then begin
   ShowMessage('Пропоную взяти кредит під 0%');
   Exit;
  end;

  TCard(List.Items[Mains.sg.Row - 1]).Balance :=
   TCard(List.Items[Mains.sg.Row - 1]).Balance - seGet.Value;

end;

end.
