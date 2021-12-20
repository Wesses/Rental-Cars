tableextension 50001 "RC Rental Sales Customer" extends Customer
{
    fields
    {
        field(50000; "RC Discount"; Decimal)
        {
            Caption = 'Discount';
            DataClassification = CustomerContent;
        }
    }
}
