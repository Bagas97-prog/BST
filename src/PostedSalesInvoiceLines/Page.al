page 50239 "Posted Sales Invoice Line IT"
{
    Caption = 'Posted Sales Invoice Line IT';
    PageType = List;
    UsageCategory = Lists;
    ApplicationArea = All;
    SourceTable = "Sales Invoice Line";
    InsertAllowed = false;
    Editable = false;
    DeleteAllowed = false;

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field("Document No."; Rec."Document No.")
                {
                    ApplicationArea = All;
                }
                field("Sell-to Customer No."; Rec."Sell-to Customer No.")
                {
                    ApplicationArea = All;
                }
                field(CustomerName; CustomerName)
                {
                    ApplicationArea = All;
                }
                field(NPWP; NPWP)
                {
                    ApplicationArea = All;
                }
                field(IDTKU; IDTKU)
                {
                    Caption = 'ID TKU';
                    ApplicationArea = All;
                }
                field(Type; Rec.Type)
                {
                    ApplicationArea = All;
                }
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                }
                field(Quantity; Rec.Quantity)
                {
                    ApplicationArea = All;
                }
                field("Unit of Measure Code"; Rec."Unit of Measure Code")
                {
                    ApplicationArea = All;
                }
                field("Unit Price"; Rec."Unit Price")
                {
                    ApplicationArea = All;
                }
                field(RoundedUnitPrice; RoundedUnitPrice)
                {
                    Caption = 'Rounded Unit Price';
                    ApplicationArea = All;
                }
                field(UnitPriceAfterDiscount; UnitPriceAfterDiscount)
                {
                    Caption = 'Unit Price After Discount';
                    ApplicationArea = All;
                }
                field(Amount; Rec.Amount)
                {
                    ApplicationArea = All;
                }
                field("Line Discount %"; Rec."Line Discount %")
                {
                    ApplicationArea = All;
                }
                field("Line Discount Amount"; Rec."Line Discount Amount")
                {
                    ApplicationArea = All;
                }
                field("Posting Date"; Rec."Posting Date")
                {
                    ApplicationArea = All;
                }
                field(CustomerAddress; CustomerAddress)
                {
                    Caption = 'Bill-to Address';
                    ApplicationArea = All;
                }

                field(SystemCreatedAt; Rec.SystemCreatedAt)
                {
                    ApplicationArea = All;
                }
                field(SystemModifiedAt; Rec.SystemModifiedAt)
                {
                    ApplicationArea = All;
                }
                field(SystemCreatedBy; GetCreatedByName())
                {
                    ApplicationArea = All;
                }
                field(SystemModifiedBy; GetModifiedByName())
                {
                    ApplicationArea = All;
                }
            }
        }
    }
    var
        CustomerName: Text[250];
        NPWP: Text[50];
        IDTKU: Text[150];
        RoundedUnitPrice: Decimal;
        UnitPriceAfterDiscount: Decimal;
        CustomerAddress: Text[250];

    trigger OnAfterGetRecord()
    var
        customer: Record Customer;
        SalesInvoiceHeader: Record "Sales Invoice Header";
    begin
        if SalesInvoiceHeader.get(Rec."Document No.") then
            CustomerAddress := SalesInvoiceHeader."Bill-to Address"
        else
            CustomerAddress := '';
        if customer.get(Rec."Sell-to Customer No.") then begin
            CustomerName := customer.Name;
            if customer."VAT Registration No." <> '' then begin
                NPWP := '0' + DelChr(customer."VAT Registration No.", '=', '.- ');
                IDTKU := NPWP + '000000';
            end
            else begin
                NPWP := '';
                IDTKU := '';
            end;
        end
        else begin
            CustomerName := '';
            NPWP := '';
            IDTKU := '';
        end;
        RoundedUnitPrice := Round(Rec."Unit Price", 0.01, '=');
        if Rec.Quantity <> 0 then
            UnitPriceAfterDiscount := Round((Rec.Amount / Rec.Quantity), 0.01, '=')
        else
            UnitPriceAfterDiscount := 0;
    end;

    local procedure GetCreatedByName(): Text[100]
    var
        UserRec: Record User;
    begin
        if UserRec.Get(Rec.SystemCreatedBy) then
            exit(UserRec."User Name");

        exit('');
    end;

    local procedure GetModifiedByName(): Text[100]
    var
        UserRec: Record User;
    begin
        if UserRec.Get(Rec.SystemModifiedBy) then
            exit(UserRec."User Name");

        exit('');
    end;
}