page 50000 "RC Rental Sales Header List"
{

    ApplicationArea = All;
    Caption = 'Rental Sales Header List';
    PageType = List;
    SourceTable = "RC Rental Sales Header";
    UsageCategory = Lists;
    Editable = true;
    CardPageId = "RC Rental Sales Header Card";

    layout
    {
        area(content)
        {
            repeater(General)
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
