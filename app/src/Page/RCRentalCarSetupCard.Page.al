page 50004 "RC Rental Car Setup Card"
{
    
    Caption = 'RC Rental Car Setup Card';
    PageType = Card;
    SourceTable = "RC Rental Car Setup";
    ApplicationArea = All;
    UsageCategory = Administration;
    
    layout
    {
        area(content)
        {
            group(Numbering)
            {
                field("Rental Car Nos."; Rec."Rental Car Nos.")
                {
                    ToolTip = 'Specifies the value of the Rental Car Nos. field.';
                    ApplicationArea = All;
                }
            }
        }
    }
    
}
