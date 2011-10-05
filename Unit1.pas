unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, RegExpr, ClipBrd, ComCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
    OpenDialog1: TOpenDialog;
    procedure Edit1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    procedure HotKey(var Msg: TWMHotKey); message WM_HOTKEY;
    procedure Find(str:string);
  public
    { Public declarations }
  end;

var
  Form1   : TForm1;
  RegExp  : TRegExpr;
  txt     : TextFile;
  MyText  : string;

const
  R1HKey = vk_f10;  //горячие клавиши
  R2HKey = vk_f11;

implementation

{$R *.dfm}

procedure CtrlV;
begin
  keybd_event(VK_CONTROL,0,0,0);
  keybd_event($56,0,0,0);
  keybd_event(VK_CONTROL,0,KEYEVENTF_KEYUP,0);
  keybd_event($56,0,KEYEVENTF_KEYUP,0);
  Sleep(50);
  keybd_event(VK_TAB,0,0,0);
  keybd_event(VK_TAB,0,KEYEVENTF_KEYUP,0);
  Sleep(50);
end;

procedure TForm1.Find(str:string);
begin
  RegExp.Expression := '(\d+)"},"П'+str+'"}';
  RegExp.Exec;
  Clipboard.AsText := RegExp.Match[1];
end;

procedure TForm1.HotKey(var Msg: TWMHotKey);
begin
  case msg.HotKey of
    vk_f10:
      begin
            find('000100010003');CtrlV;
            find('000100010004');CtrlV;
            find('000100010005');CtrlV;
            find('000100010006');CtrlV;
            find('000100012003');CtrlV;
            find('000100012004');CtrlV;
            find('000100012005');CtrlV;
            find('000100012006');CtrlV;
            find('000100014003');CtrlV;
            find('000100014004');CtrlV;
            find('000100014005');CtrlV;
            find('000100014006');CtrlV;
            find('000100014103');CtrlV;
            find('000100014104');CtrlV;
            find('000100014105');CtrlV;
            find('000100014106');CtrlV;
            find('000100014203');CtrlV;
            find('000100014204');CtrlV;
            find('000100014205');CtrlV;
            find('000100014206');CtrlV;
            find('000100014303');CtrlV;
            find('000100014304');CtrlV;
            find('000100014305');CtrlV;
            find('000100014306');CtrlV;
      end;//vk_f10

    vk_f11:
      begin
          find('000200020104');CtrlV;
          find('000200020105');CtrlV;
          find('000200020106');CtrlV;
          find('000200020204');CtrlV;
          find('000200020205');CtrlV;
          find('000200020206');CtrlV;
          find('000200021104');CtrlV;
          find('000200021105');CtrlV;
          find('000200021106');CtrlV;
          find('000200021204');CtrlV;
          find('000200021205');CtrlV;
          find('000200021206');CtrlV;
          find('000200021404');CtrlV;
          find('000200021405');CtrlV;
          find('000200021406');CtrlV;
          find('000200021504');CtrlV;
          find('000200021505');CtrlV;
          find('000200021506');CtrlV;
          find('000200021704');CtrlV;
          find('000200021705');CtrlV;
          find('000200021706');CtrlV;
          find('000200021804');CtrlV;
          find('000200021805');CtrlV;
          find('000200021806');CtrlV;
      end;//vk_f11
  end;//case
end;


procedure TForm1.Edit1Click(Sender: TObject);
begin
  //ищем файл
  if OpenDialog1.Execute then
    begin
      //записываем путь
      Edit1.Text := OpenDialog1.FileName;
      //читаем содержимое в MyText
      AssignFile(txt, Edit1.Text);
        Reset(txt);
        ReadLn(txt, MyText);
      CloseFile(txt);
      //готовим строку для работы с регулярными выражениями
      RegExp.InputString := MyText;
    end;

end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  RegExp := TRegExpr.Create;
  RegisterHotKey(Form1.Handle, R1HKey, 0, R1HKey);
  RegisterHotKey(Form1.Handle, R2HKey, 0, R2HKey);
end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
  UnRegisterHotKey(Form1.Handle, R1HKey);
  UnRegisterHotKey(Form1.Handle, R2HKey);
end;

end.
