page 50003 "RC Rental Sales Header Card"
{

    Caption = 'Rental Sales Header Card';
    PageType = Card;
    SourceTable = "RC Rental Sales Header";

    layout
    {
        area(content)
        {
            group(General)
            {
                field("Customer No."; Rec."Customer No.")
                {
                    ToolTip = 'Specifies the value of the Customer No. field.';
                    ApplicationArea = All;
                }
                field("Doc. No."; Rec."Doc. No.")
                {
                    ToolTip = 'Specifies the value of the Doc. No. field.';
                    ApplicationArea = All;
                }
                field("Salesperson No."; Rec."Salesperson No.")
                {
                    ToolTip = 'Specifies the value of the Salesperson No. field.';
                    ApplicationArea = All;
                }
                field("List No."; Rec."List No.")
                {
                    ToolTip = 'Specifies the value of the List No. field.';
                    ApplicationArea = All;
                }

                field("No. Series"; Rec."No. Series")
                {
                    ToolTip = 'Specifies the value of the No. Series field.';
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
