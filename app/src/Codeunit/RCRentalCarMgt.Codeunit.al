codeunit 50000 "RC Rental Car Mgt."
{
    procedure DeleteRentalSalesLine(RentalSalesHeader: Code[20])
    var
        RCRadioSalesLine: Record "RC Rental Sales Line";
    begin
        RCRadioSalesLine.SetRange("Line No.", RentalSalesHeader);
        RCRadioSalesLine.DeleteAll(true);
    end;
}