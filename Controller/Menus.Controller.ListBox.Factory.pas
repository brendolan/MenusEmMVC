unit Menus.Controller.ListBox.Factory;

interface

uses
  Menus.Controller.Interfaces, System.Classes;

type
  TControllerListBoxFactory = class(TInterfacedObject, IControllerListBoxFactory)
    constructor Create;
    destructor Destroy; override;

    class function New: IControllerListBoxFactory;
    function Default(Container: TComponent): IControllerListBoxDefault;
    function Principal(Container: TComponent): IControllerListBoxMenu;
    function Clientes(Container: TComponent): IControllerListBoxMenu;
    function Produtos(Container: TComponent): IControllerListBoxMenu;
  end;

implementation

{ TControllerListBoxFactory }

uses Menus.Controller.ListBox.Default, Menus.Controller.ListBox.Principal,
  Menus.Controller.ListBox.Clientes, Menus.Controller.ListBox.Produtos;

function TControllerListBoxFactory.Clientes(
  Container: TComponent): IControllerListBoxMenu;
begin
   Result := TControllerListBoxClientes.New(Container);
end;

constructor TControllerListBoxFactory.Create;
begin

end;

function TControllerListBoxFactory.Default(
  Container: TComponent): IControllerListBoxDefault;
begin
  Result := TControllerListBoxDefault.New(Container);
end;

destructor TControllerListBoxFactory.Destroy;
begin

  inherited;
end;

class function TControllerListBoxFactory.New: IControllerListBoxFactory;
begin
  Result := Self.Create;
end;

function TControllerListBoxFactory.Principal(
  Container: TComponent): IControllerListBoxMenu;
begin
  Result := TControllerListBoxPrincipal.New(Container);
end;

function TControllerListBoxFactory.Produtos(
  Container: TComponent): IControllerListBoxMenu;
begin
   Result := TControllerListBoxProdutos.New(Container);
end;

end.
