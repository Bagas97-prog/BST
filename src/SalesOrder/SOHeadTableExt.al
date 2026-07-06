tableextension 50211 "Sales Header Ext" extends "Sales Header"
{
    fields
    {
        field(50200; "SO Send Approval Check"; Boolean)
        {
            Caption = 'SO Send Approval Check';
            DataClassification = ToBeClassified;
        }
        field(50201; "SI Send Approval Check"; Boolean)
        {
            Caption = 'SI Send Approval Check';
            DataClassification = ToBeClassified;
        }
        field(50202; "Prepayment Amount"; Decimal)
        {
            Caption = 'Prepayment Amount';
            DataClassification = ToBeClassified;

            trigger OnValidate()
            var
                SOL: Record "Sales Line";
                SOAmount: Decimal;
                PrepmtPercent: Decimal;
            begin
                SOL.SetRange("Document Type", Rec."Document Type");
                SOL.SetRange("Document No.", Rec."No.");

                SOL.CalcSums("Original Amount");
                SOAmount := SOL."Original Amount";

                if SOAmount = 0 then
                    Error('Sales Order Amount cannot be zero.');

                if "Prepayment Amount" < 0 then
                    Error('Prepayment Amount cannot be negative.');

                if "Prepayment Amount" > SOAmount then
                    Error('Prepayment Amount cannot be greater than Sales Order Amount.');

                PrepmtPercent := ("Prepayment Amount" / SOAmount) * 100;

                Rec.Validate("Prepayment %", PrepmtPercent);
            end;
        }
        modify("Prepayment %")
        {
            trigger OnAfterValidate()
            var
                SOL: Record "Sales Line";
                SOLAmount: Decimal;
            begin
                SOL.SetRange("Document Type", Rec."Document Type");
                SOL.SetRange("Document No.", Rec."No.");

                SOL.CalcSums("Prepmt. Line Amount");

                Rec."Prepayment Amount" := SOL."Prepmt. Line Amount";
            end;
        }
    }
}