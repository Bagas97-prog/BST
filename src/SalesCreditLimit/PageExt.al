pageextension 50216 "SalesTopnCreditLimit Ext" extends SalesTopnCreditLimit
{
    // layout
    // {
    //     addafter("Balance (LCY)")
    //     {
    //         field(Balance; SumAR())
    //         {
    //             ApplicationArea = All;
    //         }

    //     }
    // }
    // local procedure SumAR(): Decimal;
    // var
    //     CLE: Record "Cust. Ledger Entry";
    //     DCLE: Record "Detailed Cust. Ledg. Entry";
    //     Result: Decimal;
    // begin
    //     Result := 0;
    //     CLE.Reset();
    //     CLE.SetRange("Customer No.", Rec."Customer No.");
    //     CLE.SetRange("Global Dimension 2 Code", Rec.Branch);
    //     if CLE.FindSet() then begin
    //         repeat
    //             DCLE.Reset();
    //             DCLE.SetRange("Cust. Ledger Entry No.", CLE."Entry No.");
    //             if DCLE.FindSet() then begin
    //                 DCLE.CalcSums(Amount);
    //                 Result := Result + DCLE.Amount;
    //             end;
    //         until CLE.Next() = 0;
    //     end;
    //     exit(Result);
    // end;
}