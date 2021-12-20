page 50006 "RC Rental Car Card Part"
{

    Caption = 'RC Rental Car Card Part';
    PageType = Card;
    SourceTable = "RC Rental Sales Header";

    layout
    {
        area(content)
        {
            group(General)
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
            part(SalesLines; "RC Rental Car List Part")
            {
                ApplicationArea = All;
                SubPageLink = "Rental Cars No." = FIELD("Doc. No.");
                UpdatePropagation = Both;
            }
        }
    }

}
