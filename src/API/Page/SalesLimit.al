page 50205 "API IT Sales Limit"
{
    PageType = API;

    APIVersion = 'v1.0';
    APIPublisher = 'Bagas';
    APIGroup = 'IT';
    EntitySetName = 'SalesLimit';

    EntityCaption = 'Sales Limit';
    EntitySetCaption = 'Sales Limit';
    EntityName = 'SalesLimit';

    ODataKeyFields = SystemId;
    SourceTable = "Sales TOP and Credit Limit";

    Extensible = false;
    DelayedInsert = true;
    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("CustomerNo"; Rec."Customer No.")
                {
                    ApplicationArea = All;
                }
                field(Principal; Rec.Branch)
                {
                    ApplicationArea = All;
                }
                field(Branch; Rec."Global Dimension 1 Code")
                {
                    ApplicationArea = All;
                }
                field("ItemGroup"; Rec."Item Category")
                {
                    ApplicationArea = All;
                }
                field(TOP; Rec."Payment Term Code")
                {
                    ApplicationArea = All;
                }
                field("CreditLimit"; Rec."Credit Limit(LCY)")
                {
                    ApplicationArea = All;
                }
                field(Used; GetUsed())
                {
                    ApplicationArea = All;
                }
                field(Balance; Rec."Credit Limit(LCY)" - SumAR())
                {
                    ApplicationArea = All;
                }
            }
        }
    }
    var
        Used: Decimal;

    local procedure CountBalance(): Decimal
    begin
        exit(Rec."Credit Limit(LCY)" - Used);
    end;

    local procedure GetUsed(): Decimal
    var
        SIH: Record "Sales Invoice Header";
        DCLE: Record "Detailed Cust. Ledg. Entry";
        Remaining: Decimal;
    begin
        Remaining := 0;
        SIH.SetRange("Sell-to Customer No.", Rec."Customer No.");
        SIH.SetRange("Shortcut Dimension 2 Code", Rec.Branch);
        SIH.SetFilter("Remaining Amount", '>0');
        if SIH.FindSet() then begin
            DCLE.Reset();
            DCLE.SetRange("Cust. Ledger Entry No.", SIH."Cust. Ledger Entry No.");
            DCLE.FindSet();
            DCLE.CalcSums(Amount);
            Remaining += DCLE.Amount;
        end;
        Used := Remaining;
        exit(Remaining);
    end;

    local procedure SumAR(): Decimal;
    var
        CLE: Record "Cust. Ledger Entry";
        DCLE: Record "Detailed Cust. Ledg. Entry";
        Result: Decimal;
    begin
        Result := 0;
        CLE.Reset();
        CLE.SetRange("Customer No.", Rec."Customer No.");
        CLE.SetRange("Global Dimension 2 Code", Rec.Branch);
        if CLE.FindSet() then begin
            repeat
                DCLE.Reset();
                DCLE.SetRange("Cust. Ledger Entry No.", CLE."Entry No.");
                if DCLE.FindSet() then begin
                    DCLE.CalcSums(Amount);
                    Result := Result + DCLE.Amount;
                end;
            until CLE.Next() = 0;
        end;
        exit(Result);
    end;
}