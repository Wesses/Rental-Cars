tableextension 50000 "RC Rental Car" extends Item
{

    Caption = 'Rental Car';
    DataCaptionFields = "No.", Description;
    DrillDownPageID = "Item List";
    LookupPageID = "Item Lookup";

    fields
    {
        field(50000; "RC Item No."; Code[20])
        {
            Caption = 'Item No.';
            DataClassification = CustomerContent;
        }
        field(50010; "RC Name"; Text[50])
        {
            Caption = 'Name';
            DataClassification = CustomerContent;
        }
        field(50020; "RC Discount"; Decimal)
        {
            Caption = 'Discount';
            DataClassification = CustomerContent;
        }
        field(50030; "RC Rental Car Color"; Decimal)
        {
            Caption = 'Discount';
            DataClassification = CustomerContent;
        }

        field(50040; "RC Rental Car Mileage"; Decimal)
        {
            Caption = 'Discount';
            DataClassification = CustomerContent;
        }
    }
}
