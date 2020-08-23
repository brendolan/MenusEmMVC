unit Menus.Controller.ListBox.Itens.Default;

interface

uses
  Menus.Controller.Interfaces, FMX.ListBox, System.Classes, FMX.Types;

type

  TControllerListBoxItensDefault = class(TInterfacedObject, IControllerListBoxItensDefault)
  private
    FListBoxItem: TListBoxItem;
  public
    function Name(const Value: String): IControllerListBoxItensDefault;
    function Text(const Value: String): IControllerListBoxItensDefault;
    function StyleLookup(const Value: String): IControllerListBoxItensDefault;
    function onClick(const Value: TNotifyEvent): IControllerListBoxItensDefault;
    function Item: TFMXObject;

    constructor Create;
    destructor Destroy; override;

    class function New: IControllerListBoxItensDefault;
  end;

implementation

{ TControllerListBoxItensDefault }

constructor TControllerListBoxItensDefault.Create;
begin
  FListBoxItem := TListBoxItem.Create(nil);
  FListBoxItem.Name := 'btnDefault';
  FListBoxItem.Text := 'Default';
  FListBoxItem.StyleLookup := 'listboxitemdetaillabel';
end;

destructor TControllerListBoxItensDefault.Destroy;
begin

  inherited;
end;

function TControllerListBoxItensDefault.Item: TFMXObject;
begin
  Result := FListBoxItem;
end;

function TControllerListBoxItensDefault.Name(
  const Value: String): IControllerListBoxItensDefault;
begin
  Result := Self;
  FListBoxItem.Name := Value;
end;

class function TControllerListBoxItensDefault.New: IControllerListBoxItensDefault;
begin
  Result := Self.Create;
end;

function TControllerListBoxItensDefault.onClick(
  const Value: TNotifyEvent): IControllerListBoxItensDefault;
begin
   Result := Self;
   FListBoxItem.OnClick := Value;
end;

function TControllerListBoxItensDefault.StyleLookup(
  const Value: String): IControllerListBoxItensDefault;
begin
   Result := Self;
   FListBoxItem.StyleLookup := Value;
end;

function TControllerListBoxItensDefault.Text(
  const Value: String): IControllerListBoxItensDefault;
begin
  Result := Self;
  FListBoxItem.Text := Value;
end;

end.
