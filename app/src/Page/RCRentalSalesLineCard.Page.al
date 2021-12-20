page 50001 "RC Rental Sales Line Card"
{
    
    Caption = 'Rental Sales Line Card';
    PageType = Card;
    SourceTable = "RC Rental Sales Line";
    
    layout
    {
        area(content)
        {
            group(General)
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
                }
            }
        }
    }
    
}
