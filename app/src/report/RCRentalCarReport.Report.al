report 50000 "RC Rental Car Report"
{
    ApplicationArea = All;
    Caption = 'RC Rental Car Report';
    UsageCategory = ReportsAndAnalysis;
    // WordLayout = 'src\layout\RentalCar.docx';
    RDLCLayout = 'src\layout\RentalCar.rdlc';
    DefaultLayout = RDLC;


    dataset
    {
        dataitem(RCRentalSalesHeader; "RC Rental Sales Header")
        {
            column(RentalCarsColors; "Rental Cars Colors")
            {
                IncludeCaption = true;

            }
            column(SalespersonNo; "Salesperson No.")
            {
                IncludeCaption = true;
            }
            column(ListNo; "List No.")
            {
                IncludeCaption = true;
            }
            column(DocNo; "Doc. No.")
            {
            }
            column(CustomerNo; "Customer No.")
            {
            }
            column(Caption; NameLbl)
            {
            }
            column(Caption1; RCRentalSalesHeader.FieldCaption("Customer No."))
            {
            }
        }
    }
    var
        NameLbl: Label 'Car index';
}