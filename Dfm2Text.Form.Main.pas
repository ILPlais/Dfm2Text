unit Dfm2Text.Form.Main;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  System.IOUtils,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.ExtCtrls,
  Vcl.StdCtrls;

type
  TFormMain = class(TForm)
    GrpDFMBin: TGroupBox;
    GpDFMBin: TGridPanel;
    LblSourceBin: TLabel;
    EdtSourceBin: TEdit;
    LblDestBin: TLabel;
    EdtDestBin: TEdit;
    BtnConvBin: TButton;
    GrpDFMTexte: TGroupBox;
    GpDFMTexte: TGridPanel;
    LblSourceTexte: TLabel;
    EdtSourceTexte: TEdit;
    LblDestTexte: TLabel;
    EdtDestTexte: TEdit;
    BtnConvTexte: TButton;
    PnlSourceBin: TPanel;
    BtnSourceBin: TButton;
    PnlSourceTexte: TPanel;
    BtnSourceTexte: TButton;
    dlgOpenDFM: TOpenDialog;
    procedure EdtSourceBinChange(Sender: TObject);
    procedure EdtSourceTexteChange(Sender: TObject);
    procedure BtnConvBinClick(Sender: TObject);
    procedure BtnConvTexteClick(Sender: TObject);
    procedure BtnSourceBinClick(Sender: TObject);
    procedure BtnSourceTexteClick(Sender: TObject);
    private
      { Déclarations privées }
    public
      { Déclarations publiques }
  end;

var
  FormMain: TFormMain;

implementation

uses
  Dfm2Text.Libs.Converts;

{$R *.dfm}

procedure TFormMain.EdtSourceBinChange(Sender: TObject);
begin
  BtnConvBin.Enabled := FileExists(EdtSourceBin.Text) and SameText(TPath.GetExtension(EdtSourceBin.Text), '.dfm');

  if BtnConvBin.Enabled then
    EdtDestBin.Text := ChangeFileExt(EdtSourceBin.Text, '.txt.dfm');
end;

procedure TFormMain.EdtSourceTexteChange(Sender: TObject);
begin
  BtnConvTexte.Enabled := FileExists(EdtSourceTexte.Text) and SameText(TPath.GetExtension(EdtSourceTexte.Text), '.dfm');

  if BtnConvTexte.Enabled then
    EdtDestTexte.Text := ChangeFileExt(EdtSourceTexte.Text, '.bin.dfm');
end;

procedure TFormMain.BtnConvBinClick(Sender: TObject);
begin
  Dfm2Txt(EdtSourceBin.Text, EdtDestBin.Text);
end;

procedure TFormMain.BtnConvTexteClick(Sender: TObject);
begin
  Txt2DFM(EdtSourceTexte.Text, EdtDestTexte.Text);
end;

procedure TFormMain.BtnSourceBinClick(Sender: TObject);
begin
  if BtnConvBin.Enabled then
  begin
    dlgOpenDFM.InitialDir := TPath.GetDirectoryName(EdtSourceBin.Text);
    dlgOpenDFM.FileName := TPath.GetFileName(EdtSourceBin.Text);
  end;

  if dlgOpenDFM.Execute() then
    EdtSourceBin.Text := dlgOpenDFM.FileName;
end;

procedure TFormMain.BtnSourceTexteClick(Sender: TObject);
begin
  if BtnConvTexte.Enabled then
  begin
    dlgOpenDFM.InitialDir := TPath.GetDirectoryName(EdtSourceTexte.Text);
    dlgOpenDFM.FileName := TPath.GetFileName(EdtSourceTexte.Text);
  end;

  if dlgOpenDFM.Execute() then
    EdtSourceTexte.Text := dlgOpenDFM.FileName;
end;

end.
