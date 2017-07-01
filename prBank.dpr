program prBank;

uses
  Forms,
  Main in 'Main.pas' {Mains},
  Registration in 'Registration.pas' {Registrat},
  bnkClass in 'bnkClass.pas',
  Operation in 'Operation.pas' {Operat};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMains, Mains);
  Application.CreateForm(TRegistrat, Registrat);
  Application.CreateForm(TOperat, Operat);
  Application.Run;
end.
