unit Menus.Controller.ListBox.Itens.Factory;

interface

uses
  Menus.Controller.Interfaces;

type
  TControllerListBoxItensFactory = class(TInterfacedObject, IControllerListBoxItensFactory)
    constructor Create;
    destructor Destroy; override;

    class function New: IControllerListBoxItensFactory;
    function Default: IControllerListBoxItensDefault;
    function Produto: IControllerListBoxItemForm;
    function Cliente: IControllerListBoxItemForm;
  end;

implementation

{ TControllerListBoxItensFactory }

uses Menus.Controller.ListBox.Itens.Default,
  Menus.Controller.ListBox.Itens.Produto,
  Menus.Controller.ListBox.Itens.Cliente;

function TControllerListBoxItensFactory.Cliente: IControllerListBoxItemForm;
begin
  Result := TControllerListBoxItensCliente.New;
end;

constructor TControllerListBoxItensFactory.Create;
begin

end;

function TControllerListBoxItensFactory.Default: IControllerListBoxItensDefault;
begin
  Result := TControllerListBoxItensDefault.New;
end;

destructor TControllerListBoxItensFactory.Destroy;
begin

  inherited;
end;

class function TControllerListBoxItensFactory.New: IControllerListBoxItensFactory;
begin
  Result := Self.Create;
end;

function TControllerListBoxItensFactory.Produto: IControllerListBoxItemForm;
begin
  Result := TControllerListBoxItensProduto.New;
end;

end.
