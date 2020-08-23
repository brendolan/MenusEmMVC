unit Menus.Controller.ListBox.Default;

interface

uses
  Menus.Controller.Interfaces, System.Classes, FMX.ListBox, FMX.Types;

type

  TControllerListBoxDefault = class(TInterfacedObject, IControllerListBoxDefault)
  private
    FContainer: TComponent;
    FListBox: TListBox;
  public
    function Name(const Value: String): IControllerListBoxDefault;
    function Align(const Value: TAlignLayout): IControllerListBoxDefault;
    function ItemHeight(const Value: Integer): IControllerListBoxDefault;
    function AddItem(const Value: TFMXObject): IControllerListBoxDefault;
    function Lista: TFMXObject;
    procedure Exibir;

    constructor Create(Container: TComponent);
    destructor Destroy; override;
    class function New(Container: TComponent): IControllerListBoxDefault;
  end;

implementation

uses
  FMX.Layouts;

{ TControllerListBoxDefault }

function TControllerListBoxDefault.AddItem(
  const Value: TFMXObject): IControllerListBoxDefault;
begin
  Result := Self;
  FListBox.AddObject(Value);
end;

function TControllerListBoxDefault.Align(
  const Value: TAlignLayout): IControllerListBoxDefault;
begin
  Result := Self;
  FListBox.Align := Value;
end;

constructor TControllerListBoxDefault.Create(Container: TComponent);
begin
  FContainer := Container;
  FListBox := TListBox.Create(nil);
  FListBox.Name := 'ListaDefault';
  FListBox.Align := TAlignLayout.Client;
  FListBox.ItemHeight := 60;
end;

destructor TControllerListBoxDefault.Destroy;
begin

  inherited;
end;

procedure TControllerListBoxDefault.Exibir;
begin
  TLayout(FContainer).AddObject(FListBox);
end;

function TControllerListBoxDefault.ItemHeight(
  const Value: Integer): IControllerListBoxDefault;
begin
  Result := Self;
  FListBox.ItemHeight := Value;
end;

function TControllerListBoxDefault.Lista: TFMXObject;
begin
  Result := FListBox;
end;

function TControllerListBoxDefault.Name(
  const Value: String): IControllerListBoxDefault;
begin
  Result := Self;
  FListBox.Name := Value;
end;

class function TControllerListBoxDefault.New(
  Container: TComponent): IControllerListBoxDefault;
begin
  Result := Self.Create(Container);
end;

end.
