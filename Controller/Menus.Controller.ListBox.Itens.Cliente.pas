unit Menus.Controller.ListBox.Itens.Cliente;

interface

uses
  Menus.Controller.Interfaces, FMX.Types;

type

  TControllerListBoxItensCliente = class(TInterfacedObject, IControllerListBoxItemForm)
    constructor Create;
    destructor Destroy; override;
    class function New: IControllerListBoxItemForm;
    function Show: TFMXObject;
    procedure onClick(Sender: TObject);
  end;

implementation

{ TControllerListBoxItensCliente }

uses Menus.Controller.ListBox.Itens.Factory, Menus.Controller.Forms.Default;

constructor TControllerListBoxItensCliente.Create;
begin

end;

destructor TControllerListBoxItensCliente.Destroy;
begin

  inherited;
end;

class function TControllerListBoxItensCliente.New: IControllerListBoxItemForm;
begin
  Result := Self.Create;
end;

procedure TControllerListBoxItensCliente.onClick(Sender: TObject);
begin
   TControllerFormsDefault.CreateForm('TfrmClientes');
end;

function TControllerListBoxItensCliente.Show: TFMXObject;
begin
  Result := TControllerListBoxItensFactory.New
              .Default
              .Name('btnCliente')
              .Text('Clientes')
              .onClick(onClick)
              .Item;
end;

end.
