unit Menus.View.Produtos;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.Layouts;

type
  TFrmProdutos = class(TForm)
    ToolBar1: TToolBar;
    Label1: TLabel;
    Layout: TLayout;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmProdutos: TFrmProdutos;

implementation

{$R *.fmx}

uses Menus.Controller.ListBox.Factory;

procedure TFrmProdutos.FormCreate(Sender: TObject);
begin
  TControllerListBoxFactory
    .New
    .Produtos(Layout)
    .Exibir;
end;

initialization
   RegisterFmxClasses([TFrmProdutos]);

end.
