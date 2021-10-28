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
unit KIDE.ListControllerFilterColumnBreakFrameUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.Actions, Vcl.ActnList,
  Vcl.ExtCtrls, EF.Tree, Vcl.StdCtrls, SynEdit, SynHighlighterSQL,
  KIDE.EditNodeBaseFrameUnit, Vcl.Samples.Spin;

type
  TListControllerFilterColumnBreakFrame = class(TEditNodeBaseFrame)
    LabelWidthLabel: TLabel;
    _LabelWidth: TSpinEdit;
  private
  protected
    class function SuitsNode(const ANode: TEFNode): Boolean; override;
    procedure CleanupDefaultsToEditNode; override;
  public
  end;

implementation

{$R *.dfm}
uses
  KIDE.Utils,
  Kitto.Ext.Filters,
  KIDE.ListControllerFiltersItemsNodeFrameUnit,
  KIDE.ListControllerFiltersNodeFrameUnit;

{ TListControllerListFilterItemFrame }

procedure TListControllerFilterColumnBreakFrame.CleanupDefaultsToEditNode;
begin
  inherited;
  CleanupIntegerNode('LabelWidth');
end;

class function TListControllerFilterColumnBreakFrame.SuitsNode(const ANode: TEFNode): Boolean;
begin
  Result := SameText(ANode.Name, 'ColumnBreak') and
    (ANode.Parent is TEFNode) and
    SameText(TEFNode(ANode.Parent).Name, 'Items') and
    TListControllerFiltersItemsNodeFrame.IsListControllerFiltersItemsNode(TEFNode(ANode.Parent));
end;

initialization
  TEditNodeFrameRegistry.Instance.RegisterClass(TListControllerFilterColumnBreakFrame.GetClassId, TListControllerFilterColumnBreakFrame);

finalization
  if Assigned(TEditNodeFrameRegistry.Instance) then
    TEditNodeFrameRegistry.Instance.UnregisterClass(TListControllerFilterColumnBreakFrame.GetClassId);

end.
