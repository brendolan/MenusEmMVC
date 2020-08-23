unit Menus.Controller.ListBox.Produtos;

interface

uses
  Menus.Controller.Interfaces, System.Classes;

type

  TControllerListBoxProdutos = class(TInterfacedObject, IControllerListBoxMenu)
  private
    FContainer: TComponent;
  public
    constructor Create(Container: TComponent);
    destructor Destroy; override;
    procedure Exibir;

    class function New(Container: TComponent): IControllerListBoxMenu;
  end;

implementation

{ TControllerListBoxProdutos }

uses Menus.Controller.ListBox.Factory, Menus.Controller.ListBox.Itens.Factory;

constructor TControllerListBoxProdutos.Create(Container: TComponent);
begin
  FContainer := Container;
end;

destructor TControllerListBoxProdutos.Destroy;
begin

  inherited;
end;

procedure TControllerListBoxProdutos.Exibir;
begin
  TControllerListBoxFactory.New
    .Default(FContainer)
    .AddItem(TControllerListBoxItensFactory.New.Cliente.Show)
    .Exibir;
end;

class function TControllerListBoxProdutos.New(Container: TComponent): IControllerListBoxMenu;
begin
  Result := Self.Create(Container);
end;

end.
