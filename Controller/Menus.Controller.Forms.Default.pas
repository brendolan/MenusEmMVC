unit Menus.Controller.Forms.Default;

interface

type
  TControllerFormsDefault = class
    class procedure CreateForm(ClassName: String);
  end;

implementation

uses
  FMX.Types, System.Classes, FMX.Forms, System.SysUtils;

{ TControllerFormsDefault }

class procedure TControllerFormsDefault.CreateForm(ClassName: String);
var
  ObjFMX: TFMXObjectClass;
  NewForm: TCustomForm;
begin
  ObjFMX := TFMXObjectClass(GetClass(ClassName));
  try
    NewForm := (objFMX.Create(nil) as TCustomForm);
    try
      NewForm.ShowModal;
    finally
      NewForm.Free;
    end;
  except
    raise Exception.Create('Objeto não encontrado');
  end;

end;

end.
