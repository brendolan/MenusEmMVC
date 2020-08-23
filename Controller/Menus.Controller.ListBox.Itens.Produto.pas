unit Menus.Controller.ListBox.Itens.Produto;

interface

uses
  Menus.Controller.Interfaces, FMX.Types;

type

  TControllerListBoxItensProduto = class(TInterfacedObject, IControllerListBoxItemForm)
    constructor Create;
    destructor Destroy; override;
    class function New: IControllerListBoxItemForm;
    function Show: TFMXObject;
    procedure onClick(Sender: TObject);
  end;

implementation

{ TControllerListBoxItensProduto }

uses Menus.Controller.ListBox.Itens.Factory, Menus.Controller.Forms.Default;

constructor TControllerListBoxItensProduto.Create;
begin

end;

destructor TControllerListBoxItensProduto.Destroy;
begin

  inherited;
end;

class function TControllerListBoxItensProduto.New: IControllerListBoxItemForm;
begin
  Result := Self.Create;
end;

procedure TControllerListBoxItensProduto.onClick(Sender: TObject);
begin
   TControllerFormsDefault.CreateForm('TFrmProdutos');
end;

function TControllerListBoxItensProduto.Show: TFMXObject;
begin
  Result := TControllerListBoxItensFactory.New
              .Default
              .Name('btnProduto')
              .Text('Produtos')
              .onClick(onClick)
              .Item;
end;

end.
