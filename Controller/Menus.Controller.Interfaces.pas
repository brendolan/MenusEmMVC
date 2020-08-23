unit Menus.Controller.Interfaces;

interface

uses
  System.Classes, FMX.Types;

type
  IControllerListBoxItensDefault = interface;
  IControllerListBoxDefault = interface;

  IControllerListBoxItemForm = interface
    ['{7096CAEC-C2DE-40C8-9299-0CB75C39ADAF}']
    function Show: TFMXObject;
  end;

  IControllerListBoxMenu = interface
    ['{CDF19E9D-E974-44CA-806F-BBED0B92084C}']
    procedure Exibir;
  end;

  IControllerListBoxItensFactory = interface
    ['{3001F24F-9F48-4E53-9E2E-972CFF94E7AC}']
    function Default: IControllerListBoxItensDefault;
    function Produto: IControllerListBoxItemForm;
    function Cliente: IControllerListBoxItemForm;
  end;

  IControllerListBoxFactory = interface
    ['{3C3B463C-2F49-48F9-91F9-D99DEAF0394F}']
    function Default(Container: TComponent): IControllerListBoxDefault;
    function Principal(Container: TComponent): IControllerListBoxMenu;
    function Clientes(Container: TComponent): IControllerListBoxMenu;
    function Produtos(Container: TComponent): IControllerListBoxMenu;
  end;

  IControllerListBoxItensDefault = interface
    ['{106EE31B-DE10-4E97-ADCD-72005F99A1CF}']
    function Name(const Value: String): IControllerListBoxItensDefault;
    function Text(const Value: String): IControllerListBoxItensDefault;
    function StyleLookup(const Value: String): IControllerListBoxItensDefault;
    function onClick(const Value: TNotifyEvent): IControllerListBoxItensDefault;
    function Item: TFMXObject;
  end;

  IControllerListBoxDefault = interface
    ['{A38D648F-1439-4C45-89F1-57A6B9F372CB}']
    function Name(const Value: String): IControllerListBoxDefault;
    function Align(const Value: TAlignLayout): IControllerListBoxDefault;
    function ItemHeight(const Value: Integer): IControllerListBoxDefault;
    function AddItem(const Value: TFMXObject): IControllerListBoxDefault;
    function Lista: TFMXObject;
    procedure Exibir;
  end;

implementation

end.
