unit bnkClass;

           {************************************************}
           {*                                              *}
           {*                ATM emulation                 *}
           {*            Author: Dukuy Roman               *}
           {*           (C) DukuyTeam 2009-2011            *}
           {*              ICQ: 443-731-743                *}
           {*           Mail: free_sps@yahoo.com           *}
           {*                                              *}
           {************************************************}

interface
uses Classes, StdCtrls,Windows, Messages, SysUtils, Variants;

const
  Stipendia = 635;
  Cards = 5000;

type
  TCardType = (Salary,Scholarships,Credit);

type
  TCard=class
   private
    FPassword: string;
    FName: string;
    FNumber: String;
    FBalance: Integer;
    FDate: string;
    FCardType: TCardType;

   protected
    procedure SetPassword(APass: string);
    procedure SetNumber(ANumber: string);
    procedure SetName(Aname: string);
    procedure SetDate(ADate: string);
    procedure SetCaedType(ACardType: TCardType);

   public
     constructor Create; overload;
     destructor Destroy; override;
     function Generate: String;
     function DateNow: String;
     procedure SetBalace(ABalance: integer); virtual; abstract;

    property Name: string read FName write SetName;
    property Password: string read FPassword write SetPassword;
    property Types: TCardType read FCardType write SetCaedType;
    property Number: string read FNumber write SetNumber;
    property Date: string read FDate write SetDate;
    property Balance: Integer read FBalance write SetBalace;
   end;

  TSalary = class(TCard) //  Зарплата
   public
     procedure SetBalace(ABalance: Integer); override;
  end;

  TScholarships = class(TCard) //  Степендія
   public
     procedure SetBalace(ABalance: Integer); override;
  end;


  TCredit = class(TCard) //  Кредитка
   public
     procedure SetBalace(ABalance: Integer); override;
  end;


implementation


{ TCard }

constructor TCard.Create;
begin
  Randomize;
end;

destructor TCard.Destroy;
begin

  inherited;
end;

function TCard.DateNow: String;
begin
  Result := FormatDateTime('dd.mm.yyyy',Now)
end;

function TCard.Generate: String;
begin
  Result := Result + IntToStr(Random(9));
  Result := Result + IntToStr(Random(9));
  Result := Result + IntToStr(Random(9));
  Result := Result + IntToStr(Random(9));
end;

procedure TCard.SetCaedType(ACardType: TCardType);
begin
  FCardType := ACardType;
end;

procedure TCard.SetDate(ADate: string);
begin
  FDate := ADate;
end;

procedure TCard.SetName(Aname: string);
begin
 FName := Aname;
end;

procedure TCard.SetNumber(ANumber: string);
begin
 FNumber := ANumber;
end;

procedure TCard.SetPassword(APass: string);
begin
  FPassword := APass;
end;

{ ******************************* TCredit *************************************}

procedure TCredit.SetBalace(ABalance: Integer);
begin
  FBalance := 1 + Random(Cards);
end;

{ ******************************* TScholarships *******************************}

procedure TScholarships.SetBalace(ABalance: Integer);
begin
  FBalance := 1 + Random(Stipendia)
end;

{ ******************************** TSalary ************************************}

procedure TSalary.SetBalace(ABalance: Integer);
begin
 FBalance := ABalance;
end;

end.
