unit chf.demobase.gui.main;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls,
  ComCtrls, Types;

type

  { TCHFDemoBaseGUIMain }

  TCHFDemoBaseGUIMain = class(TForm)
    Button1: TButton;
    cbxLogAtivo: TCheckBox;
    Label1: TLabel;
    MemLog: TMemo;
    pnlLog: TPanel;
    pnlRodapeLog: TPanel;
    pgGeral: TPageControl;
    Splitter1: TSplitter;
    tabMain: TTabSheet;
    tabConfig: TTabSheet;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure tabMainContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
  private
    FTituloFormulario: String;
  public
    property TituloFormulario : String read FTituloFormulario write FTituloFormulario;
  protected
    procedure WriteLog(AMessagem: string);
  end;

var
  CHFDemoBaseGUIMain: TCHFDemoBaseGUIMain;

implementation

{$R *.lfm}

{ TCHFDemoBaseGUIMain }

procedure TCHFDemoBaseGUIMain.Button1Click(Sender: TObject);
begin
  MemLog.Clear;
end;

procedure TCHFDemoBaseGUIMain.Button2Click(Sender: TObject);
begin
  WriteLog('mensagem 1');
end;

procedure TCHFDemoBaseGUIMain.FormCreate(Sender: TObject);
begin
  MemLog.Lines.Clear;
  Caption := FTituloFormulario;
end;

procedure TCHFDemoBaseGUIMain.tabMainContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin

end;

procedure TCHFDemoBaseGUIMain.WriteLog(AMessagem: string);
begin
  if cbxLogAtivo.Checked then
    MemLog.Lines.Add(FormatDateTime('dd/mm/yyyy hh:nn:ss zzz', now)+' | '+AMessagem);
end;

end.

