page 50005 "RC Rental Car List Part"
{
    
    Caption = 'RC Rental Car List Part';
    PageType = ListPart;
    SourceTable = "RC Rental Sales Header";
    AutoSplitKey = true;
    
    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Rental Cars No."; Rec."Rental Cars No.")
                {
                    ToolTip = 'Specifies the value of the Rental Cars No. field.';
                    ApplicationArea = All;
                }
                field("Line No."; Rec."Line No.")
                {
                    ToolTip = 'Specifies the value of the Line No field.';
                    ApplicationArea = All;
                }
                field("Rental Cars Colors"; Rec."Rental Cars Colors")
                {
                    ToolTip = 'Specifies the value of the Rental Cars Colors field.';
                    ApplicationArea = All;
                }
            }
            
        }
        
    }
    
}
