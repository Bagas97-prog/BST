tableextension 50205 "Purchase Line Ext" extends "Purchase Line"
{
    fields
    {
        field(50200; "Discount 1 Percentage"; Decimal)
        {
            DecimalPlaces = 0 : 5;
        }
        field(50201; "Discount 1 Amount"; Decimal)
        {
            DecimalPlaces = 0 : 5;

            trigger OnValidate()
            begin
                CountDiscounts();
            end;
        }
        field(50202; "Discount 2 Percentage"; Decimal)
        {
            DecimalPlaces = 0 : 5;

            trigger OnValidate()
            begin
                CountDiscounts();
            end;
        }
        field(50203; "Discount 2 Amount"; Decimal)
        {
            DecimalPlaces = 0 : 5;
        }
        field(50204; "Discount 3 Percentage"; Decimal)
        {
            DecimalPlaces = 0 : 5;
        }
        field(50205; "Discount 3 Amount"; Decimal)
        {
            DecimalPlaces = 0 : 5;

            trigger OnValidate()
            begin
                CountDiscounts();
            end;
        }
        modify("Direct Unit Cost")
        {
            trigger OnAfterValidate()
            begin
                CountDiscounts();
            end;
        }
    }
    local procedure CountDiscounts()
    Var
        AmountAfterDiscount: Decimal;
        TotalDiscount: Decimal;
    begin
        if Rec."Document Type" <> Rec."Document Type"::Order then
            exit;
        if Quantity = 0 then
            exit;
        // AmountAfterDiscount := Abs(Quantity * "Direct Unit Cost");
        if "Discount 1 Amount" > 0 then begin
            "Discount 1 Percentage" := Round(("Discount 1 Amount" / "Direct Unit Cost") * 100, 0.00001);
            AmountAfterDiscount := Abs(Quantity * ("Direct Unit Cost" - "Discount 1 Amount"));
        end
        else begin
            "Discount 1 Percentage" := 0;
            AmountAfterDiscount := Abs(Quantity * ("Direct Unit Cost" - "Discount 1 Amount"));
        end;
        if "Discount 2 Percentage" > 0 then begin
            "Discount 2 Amount" := Round(AmountAfterDiscount * "Discount 2 Percentage" / 100, 0.01);
            AmountAfterDiscount := AmountAfterDiscount - "Discount 2 Amount";
        end
        else begin
            "Discount 2 Amount" := 0;
            AmountAfterDiscount := AmountAfterDiscount - "Discount 2 Amount";
        end;
        if "Discount 3 Amount" > 0 then begin
            "Discount 3 Percentage" := Round(("Discount 3 Amount" / ("Direct Unit Cost" * Quantity)) * 100, 0.00001);
            AmountAfterDiscount := AmountAfterDiscount - "Discount 3 Amount";
        end
        else begin
            "Discount 3 Percentage" := 0;
            AmountAfterDiscount := AmountAfterDiscount - "Discount 3 Amount";
        end;
        TotalDiscount := ("Direct Unit Cost" * Quantity) - AmountAfterDiscount;
        if TotalDiscount < 0 then Error('Total Discount Amount cannot be greater than Line Amount.');
        Validate("Line Discount Amount", TotalDiscount);
    end;
}