{-------------------------------------------------------------------------------
   Copyright 2012-2018 Ethea S.r.l.

   Licensed under the Apache License, Version 2.0 (the "License");
   you may not use this file except in compliance with the License.
   You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

   Unless required by applicable law or agreed to in writing, software
   distributed under the License is distributed on an "AS IS" BASIS,
   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
   See the License for the specific language governing permissions and
   limitations under the License.
-------------------------------------------------------------------------------}
unit KIDE.ViewportControllerDesignerFrameUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, KIDE.EditNodeBaseFrameUnit,
  Vcl.ExtCtrls, Vcl.Tabs,
  System.Actions, Vcl.ActnList, Vcl.ComCtrls, Vcl.ToolWin, Vcl.StdCtrls, Vcl.Buttons,
  KIDE.BaseFrameUnit, KIDE.CodeEditorFrameUnit, KIDE.ControllerDesignerFrameUnit,
  EF.Tree, Vcl.Samples.Spin;

type
  TViewportControllerDesignerFrame = class(TControllerDesignerFrame)
    SubViewGroupBox: TGroupBox;
  private
  protected
    class function SuitsNode(const ANode: TEFNode): Boolean; override;
    procedure UpdateDesignPanel(const AForce: Boolean = False); override;
    procedure CleanupDefaultsToEditNode; override;
  protected
  public
    procedure Init(const ANode: TEFTree); override;
  end;

implementation

{$R *.dfm}

uses
  EF.Macros,
  Kitto.Ext.Base,
  Kitto.Ext.AccordionPanel,
  Kitto.Ext.ToolBar,
  Kitto.Ext.List,
  Kitto.Ext.Form,
  Kitto.Ext.Panel,
  KIDE.SubViewDesignerFrameUnit;

{ TViewportControllerDesignerFrame }

procedure TViewportControllerDesignerFrame.CleanupDefaultsToEditNode;
begin
  inherited;
  CleanupOrphanNode('SubView');
end;

procedure TViewportControllerDesignerFrame.Init(const ANode: TEFTree);
begin
  inherited;
  EmbedEditNodeFrame(SubViewGroupBox, TSubViewDesignerFrame,
    EditNode.FindNode('SubView', True));
end;

class function TViewportControllerDesignerFrame.SuitsNode(
  const ANode: TEFNode): Boolean;
var
  LControllerClass: TClass;
begin
  Assert(Assigned(ANode));
  LControllerClass := GetControllerClass(ANode);
  Result := False;
  Result := Assigned(LControllerClass) and
    LControllerClass.InheritsFrom(TKExtPanelControllerBase) and
      SameText(ANode.Value, 'viewport');
end;

procedure TViewportControllerDesignerFrame.UpdateDesignPanel(
  const AForce: Boolean);
begin
  inherited;
  Assert(Assigned(EditNode));
end;

initialization
  TEditNodeFrameRegistry.Instance.RegisterClass(TViewportControllerDesignerFrame.GetClassId, TViewportControllerDesignerFrame);

finalization
  if Assigned(TEditNodeFrameRegistry.Instance) then
    TEditNodeFrameRegistry.Instance.UnregisterClass(TViewportControllerDesignerFrame.GetClassId);

end.
