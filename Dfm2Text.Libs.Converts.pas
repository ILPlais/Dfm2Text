unit Dfm2Text.Libs.Converts;

interface

uses
  System.SysUtils,
  System.Classes;

/// <summary> Returns true if <c>DFM</c> file is in a binary format </summary>
function IsDFMBinary(FileName: string): Boolean;
/// <summary> Convert a binary <c>DFM</c> file to a text <c>DFM</c> file </summary>
function Dfm2Txt(Src, Dest: string): Boolean;
/// <summary> Convert a text <c>DFM</c> file to a binary <c>DFM</c> file </summary>
function Txt2Dfm(Src, Dest: string): Boolean;
/// <summary> Open a binary <c>DFM</c> file as a text stream </summary>
function DfmFile2Stream(const Src: string; Dest: TStream): Boolean;

implementation

function IsDFMBinary(FileName: string): Boolean;
var
  F: TFileStream;
  B: Byte;
begin
  B := 0;
  F := TFileStream.Create(FileName, fmOpenRead);

  try
    F.Read(B, 1);
    Result := B = $FF;
  finally
    F.Free();
  end;
end;

function Dfm2Txt(Src, Dest: string): Boolean;
var
  SrcS, DestS: TFileStream;
begin
  Result := False;

  if SameFileName(Src, Dest) then
    raise Exception.Create('Error converting dfm file to binary!. ' +
        'The source file and destination file names are the same.');

  SrcS := TFileStream.Create(Src, fmOpenRead);
  DestS := TFileStream.Create(Dest, fmCreate);

  try
    ObjectResourceToText(SrcS, DestS);

    if FileExists(Src) and FileExists(Dest) then
      Result := True
    else
      Result := False;
  finally
    SrcS.Free();
    DestS.Free();
  end;
end;

function Txt2Dfm(Src, Dest: string): Boolean;
var
  SrcS, DestS: TFileStream;
begin
  Result := False;

  if SameFileName(Src, Dest) then
    raise Exception.Create('Error converting dfm file to binary!. ' +
        'The source file and destination file names are the same.');

  SrcS := TFileStream.Create(Src, fmOpenRead);
  DestS := TFileStream.Create(Dest, fmCreate);

  try
    ObjectTextToResource(SrcS, DestS);
    if FileExists(Src) and FileExists(Dest) then
      Result := True
    else
      Result := False;
  finally
    SrcS.Free();
    DestS.Free();
  end;
end;

function DfmFile2Stream(const Src: string; Dest: TStream): Boolean;
var
  SrcS: TFileStream;
begin
  SrcS := TFileStream.Create(Src, fmOpenRead or fmShareDenyWrite);
  try
    ObjectResourceToText(SrcS, Dest);
    Result := True;
  finally
    SrcS.Free();
  end;
end;

end.
