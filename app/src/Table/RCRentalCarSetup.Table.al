table 50002 "RC Rental Car Setup"
{
    Caption = 'RC Rental Car Setup';
    DataClassification = ToBeClassified;
    
    fields
    {
        field(10; "Code"; Code[10])
        {
            Caption = 'Code';
            DataClassification = CustomerContent;
        }
        field(20; "Rental Car Nos."; Code[20])
        {
            Caption = 'Rental Car Nos.';
            DataClassification = CustomerContent;
            TableRelation = "No. Series";
        }
    }
    keys
    {
        key(PK; "Code")
        {
            Clustered = true;
        }
    }
    
}
