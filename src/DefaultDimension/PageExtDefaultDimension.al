pageextension 50212 "Default Dimension Ext" extends "Default Dimensions"
{
    layout
    {
        modify("Dimension Value Code")
        {
            trigger OnAfterValidate()
            var
                Customer: Record Customer;
            begin
                if (Rec."Table ID" = 18) AND (Rec."Dimension Code" = 'SALESMAN') then begin
                    Customer.Get(Rec."No.");
                    Customer.Salesman := Rec."Dimension Value Code";
                    Customer.Modify();
                end;
            end;
        }
    }
}