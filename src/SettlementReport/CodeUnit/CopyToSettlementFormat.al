codeunit 50200 "Settlement Format"
{
    Permissions = tabledata "Settlement Report" = RIMD;

    var
        CusLeEnt: Record "Cust. Ledger Entry";
        Settlement: Record "Settlement Report";
        DetailedCustLedEnt: Record "Detailed Cust. Ledg. Entry";
        i: Integer;
        Amount: Decimal;
        // \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
        CekkCusLeEnt: Record "Cust. Ledger Entry";

    trigger OnRun();
    begin
        InsertDataSettlement();
    end;

    procedure InsertDataSettlement()
    begin
        Settlement.DeleteAll(true);
        CusLeEnt.Reset();
        CusLeEnt.SetRange("Document Type", Enum::"Gen. Journal Document Type"::Invoice);
        IF CusLeEnt.FINDSET THEN BEGIN
            REPEAT
                DetailedCustLedEnt.Reset();
                DetailedCustLedEnt.SetRange("Cust. Ledger Entry No.", CusLeEnt."Entry No.");
                DetailedCustLedEnt.SetRange("Entry Type", Enum::"Detailed CV Ledger Entry Type"::"Initial Entry");
                DetailedCustLedEnt.FindFirst();
                Amount := DetailedCustLedEnt."Amount (LCY)";
                DetailedCustLedEnt.Reset();
                DetailedCustLedEnt.SetRange("Cust. Ledger Entry No.", CusLeEnt."Entry No.");
                if DetailedCustLedEnt.FindSet then begin
                    repeat
                        Settlement.Init();
                        i := i + 1;
                        Settlement."Entry No." := i;
                        Settlement."Posting Date" := CusLeEnt."Posting Date";
                        Settlement."Document Date" := CusLeEnt."Document Date";
                        Settlement."Document Type" := CusLeEnt."Document Type";
                        Settlement."Principal Code" := CusLeEnt."Global Dimension 1 Code";
                        Settlement."Cust Posting Group" := CusLeEnt."Customer Posting Group";
                        Settlement."Document No" := CusLeEnt."Document No.";
                        Settlement."Invoice Amount" := Amount;
                        Settlement."Cust No" := CusLeEnt."Customer No.";
                        Settlement."Cust Name" := CusLeEnt."Customer Name";
                        Settlement."Posting Date Settlement" := DetailedCustLedEnt."Posting Date";
                        Settlement."Document Type Settlement" := DetailedCustLedEnt."Document Type";
                        Settlement."Document No Settlement" := DetailedCustLedEnt."Document No.";
                        Settlement."Amount LCY Settlement" := DetailedCustLedEnt."Amount (LCY)";
                        Settlement."Customer Ledger Entry" := DetailedCustLedEnt."Cust. Ledger Entry No.";
                        Settlement."Entry Type" := DetailedCustLedEnt."Entry Type";
                        Settlement.Unapplied := DetailedCustLedEnt.Unapplied;
                        Settlement.Insert();
                    until DetailedCustLedEnt.NEXT = 0;
                end;
            UNTIL CusLeEnt.NEXT = 0;
        END;
    end;
}