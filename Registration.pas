unit Registration;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls,bnkClass;

type
  TRegistrat = class(TForm)
    cbCardType: TComboBox;
    edPass: TLabeledEdit;
    edBalance: TLabeledEdit;
    btnClose: TButton;
    btnAdd: TButton;
    lbtmp: TLabel;
    Label1: TLabel;
    lbNumber: TLabel;
    Bevel1: TBevel;
    edName: TLabeledEdit;
    procedure btnCloseClick(Sender: TObject);
    procedure cbCardTypeChange(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Registrat: TRegistrat;
  Card: TCard;

implementation

uses Main, Operation;

{$R *.dfm}

procedure TRegistrat.btnAddClick(Sender: TObject);
var
 count: Word;
begin
 if (edPass.Text = '') or (edName.Text = '') or (cbCardType.ItemIndex = -1) then
  begin
   ShowMessage('Заповніть всі поля!');
   Exit;
  end;

 count := List.Count;
 List.Add(Card);
 With Mains.sg do begin
   Cells[0,count+1] := TCard(List.Items[count]).Name;
   Cells[1,count+1] := TCard(List.Items[count]).Password;
   case TCard(List.Items[count]).Types of
     Salary:       Cells[2,count+1] := 'Зарплата';
     Scholarships: Cells[2,count+1] := 'Стипендія';
     Credit:       Cells[2,count+1] := 'Кредит';
   end;
   Cells[3,count+1] := TCard(List.Items[count]).Number;
   Cells[4,count+1] := FloatToStr(TCard(List.Items[count]).Balance);
   Cells[5,count+1] := TCard(List.Items[count]).Date;
 end;
 Close;
end;

procedure TRegistrat.btnCloseClick(Sender: TObject);
begin
 Close;
end;

procedure TRegistrat.cbCardTypeChange(Sender: TObject);
begin
 case cbCardType.ItemIndex of
  0:
    Begin
      Card := TSalary.Create;
      with Card do begin
        Name := edname.Text;
        Password := edPass.Text;
        Types := Salary;
        Number := Generate;
        SetBalace(StrToInt(edBalance.Text));
        Date := DateNow;
      end;
    End;
  1:
    Begin
      Card := TScholarships.Create;
      with Card do begin
        Name := edname.Text;
        Password := edPass.Text;
        Types := Scholarships;
        Number := Generate;
        SetBalace(0);
        Date := DateNow;
      end;
    End;
  2:
    Begin
      Card := TCredit.Create;
      with Card do begin
        Name := edname.Text;
        Password := edPass.Text;
        Types := Credit;
        Number := Generate;
        SetBalace(0);
        Date := DateNow;
      end;
     End;
 end;
 lbNumber.Caption := Card.Number;
 edBalance.Text := IntToStr(Card.Balance);
end;

procedure TRegistrat.FormShow(Sender: TObject);
begin
 edName.Text := '';
 edPass.Text := '';
 edBalance.Text := '0';
 cbCardType.ItemIndex := -1;
 lbNumber.Caption := '';
end;

end.
