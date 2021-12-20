table 50000 "RC Rental Sales Header"
{
    Caption = 'Rental Sales Header ';
    DataClassification = ToBeClassified;
    LookupPageId = "RC Rental Sales Header List";
    DrillDownPageId = "RC Rental Sales Header List";


    fields
    {
        field(10; "Doc. No."; Code[20])
        {
            Caption = 'Doc. No.', Comment = 'ESP.Code';
            DataClassification = CustomerContent;

            trigger OnValidate()
            var
                RCRentalCarSetup: Record "RC Rental Car Setup";
                NoSeriesMgt: Codeunit NoSeriesManagement;
            begin
                if "Doc. No." <> xRec."Doc. No." then begin
                    TestNoSeries(RCRentalCarSetup);
                    NoSeriesMgt.TestManual(RCRentalCarSetup."Rental Car Nos.");
                    "No. Series" := '';
                end;
            end;

        }
        field(20; "Salesperson No."; Code[20])
        {
            Caption = 'Salesperson No.';
            DataClassification = CustomerContent;
        }
        field(30; "Customer No."; Code[20])
        {
            Caption = 'Customer Index';
            DataClassification = CustomerContent;
        }

        field(35; "List No."; Code[20])
        {
            Caption = 'List No.';
            DataClassification = CustomerContent;
            TableRelation = "RC Rental Sales Line"."Line No.";
        }
        field(40; "No. Series"; Code[20])
        {
            Caption = 'No. Series';
            DataClassification = CustomerContent;
            Editable = false;
            Enabled = false;
            TableRelation = "RC Rental Car Setup"."Rental Car Nos.";
        }

        field(45; "Rental Cars Colors"; Enum "RC Rental Car Colors")
        {
            Caption = 'Rental Cars Colors';
            DataClassification = CustomerContent;

        }
    }
    keys
    {
        key(PK; "Doc. No.")
        {
            Clustered = true;
        }
    }

    local procedure InitInsert()
    var
        RentalCarSetup: Record "RC Rental Car Setup";
        NoSeriesMgt: Codeunit NoSeriesManagement;

    begin
        if "Doc. No." <> '' then
            exit;
        TestNoSeries(RentalCarSetup);
        NoSeriesMgt.InitSeries(RentalCarSetup."Rental Car Nos.", xRec."No. Series", 0D, "Doc. No.", "No. Series");
    end;

    local procedure TestNoSeries(var RentalCarSetup: Record "RC Rental Car Setup")
    // var
    //     RentalCarNosError: Label 'The field %1 should not be empty', Comment = '%1 = fieldCaption';
    begin
        if not RentalCarSetup.get() then begin
            RentalCarSetup.Insert();
            Commit();
        end;

        RentalCarSetup.TestField("Rental Car Nos.");

        // if RentalCarSetup."Rental Car Nos." = '' then
        //     Error(RentalCarNosError, RentalCarSetup.FieldCaption("Rental Car Nos."));
    end;

}
