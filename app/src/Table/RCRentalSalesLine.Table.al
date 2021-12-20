table 50001 "RC Rental Sales Line"
{
    Caption = 'Rental Sales Line';
    DataClassification = ToBeClassified;

    fields
    {
        field(10; "Line No."; Code[20])
        {
            Caption = 'Line No.';
            DataClassification = CustomerContent;
        }
        field(20; "Item No."; Code[20])
        {
            Caption = 'Item No.';
            DataClassification = CustomerContent;
        }
        field(30; Name; Text[50])
        {
            Caption = 'Name ';
            DataClassification = CustomerContent;
        }
    }
    keys
    {
        key(PK; "Line No.")
        {
            Clustered = true;
        }
        key(MK; "Item No.", "Line No.")
        {

        }
    }

}
