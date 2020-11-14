unit umain;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls;

type

  { TfMain }

  TfMain = class(TForm)
    Memo1: TMemo;
    Panel1: TPanel;
    Panel2: TPanel;
    btnStates: TToggleBox;
    procedure btnStatesClick(Sender: TObject);
  private

  public

  end;

var
  fMain: TfMain;

implementation

{$R *.lfm}

{ TfMain }

procedure TfMain.btnStatesClick(Sender: TObject);
begin

  if not(btnStates.Checked) then begin
     btnStates.Caption := 'Normal';
     fMain.FormStyle := fsNormal;
  end
  else begin
     btnStates.Caption := 'Top';
     fMain.FormStyle:= fsSystemStayOnTop;
  end;
end;

end.

