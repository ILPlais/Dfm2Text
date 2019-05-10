program Dfm2Text;

uses
  Vcl.Forms,
  Dfm2Text.Form.Main in 'Dfm2Text.Form.Main.pas' {FormMain},
  Dfm2Text.Libs.Converts in 'Dfm2Text.Libs.Converts.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormMain, FormMain);
  Application.Run;
end.
