program DrComDecrypt;

uses
  Forms,
  DrcomDecryptor in 'DrcomDecryptor.pas' {MainForm};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.
