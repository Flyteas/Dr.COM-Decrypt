unit DrcomDecryptor;
// Mail: flyteas@gmail.com | flyshit@cqu.edu.cn
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TMainForm = class(TForm)
    DecryptBtn: TButton;
    CipherTextEdit: TEdit;
    MailLabel: TLabel;
    procedure DecryptBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

{$R *.dfm}

procedure TMainForm.DecryptBtnClick(Sender: TObject);
var
  CipherTextLength: integer;
  CipherTextCharPos: integer;
  DecryptResultChar: integer;
  DecryptTable: array[1..16] of integer;
  CharTemp: string;
  DecryptResult: string;
begin
  //解密表
  DecryptTable[1]:=28;
  DecryptTable[2]:=57;
  DecryptTable[3]:=86;
  DecryptTable[4]:=19;
  DecryptTable[5]:=47;
  DecryptTable[6]:=76;
  DecryptTable[7]:=9;
  DecryptTable[8]:=38;
  DecryptTable[9]:=66;
  DecryptTable[10]:=95;
  DecryptTable[11]:=28;
  DecryptTable[12]:=57;
  DecryptTable[13]:=86;
  DecryptTable[14]:=18;
  DecryptTable[15]:=47;
  DecryptTable[16]:=76;
  if CipherTextEdit.Text='a' then
  begin
  messagebox(0,'密码为空!','错误',0);
  end
  else
  begin
    CipherTextLength:=length(CipherTextEdit.Text);
    if CipherTextLength > 17 then
    begin
    messagebox(0,'密文长度错误！最多只为17位!','错误',0);
    end
    else
    begin
      CipherTextLength:=CipherTextLength-1;
      CipherTextCharPos:=0;
      while CipherTextCharPos < CipherTextLength do
      begin
        CipherTextCharPos:=CipherTextCharPos+1;
        CharTemp:= copy(CipherTextEdit.Text,CipherTextCharPos,1);
        DecryptResultChar:=ord(CharTemp[1]);
        DecryptResultChar:=DecryptResultChar-DecryptTable[CipherTextCharPos];
        if DecryptResultChar < 32 then
        begin
          DecryptResultChar:=DecryptResultChar+95;
        end;
        DecryptResult:=DecryptResult+char(DecryptResultChar);
      end;
    end;
  end;
  CipherTextEdit.Text:=DecryptResult;
  end;

end.
