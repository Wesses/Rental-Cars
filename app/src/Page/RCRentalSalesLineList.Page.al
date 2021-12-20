page 50002 "RC Rental Sales Line List"
{

    ApplicationArea = All;
    Caption = 'Rental Sales Line List';
    PageType = List;
    SourceTable = "RC Rental Sales Line";
    UsageCategory = Lists;
    CardPageId = "RC Rental Sales Line Card";
    SourceTableView = sorting("Item No.", "Line No.");

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Item No."; Rec."Item No.")
                {
                    ToolTip = 'Specifies the value of the Item No. field.';
                    ApplicationArea = All;
                }
                field("Line No."; Rec."Line No.")
                {
                    ToolTip = 'Specifies the value of the Line No. field.';
                    ApplicationArea = All;
                }
                field(Name; Rec."Name")
                {
                    ToolTip = 'Specifies the value of the Name  field.';
                    ApplicationArea = All;
                    Editable = ShowCustField;
                }
            }
        }
    }

    trigger OnOpenPage()
    begin
        ShowCustField := true;
    end;

    var
        ShowCustField: Boolean;

}
