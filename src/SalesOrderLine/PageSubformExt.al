pageextension 50213 "Sales Order Subform Ext" extends "Sales Order Subform"
{
    layout
    {
        modify("Unit Cost (LCY)")
        {
            Editable = false;
        }

    }
    actions
    {
        addafter(SelectMultiItems)
        {
            action(ChangeUnitPrice)
            {
                ApplicationArea = All;
                Caption = 'Change Unit Price';
                Image = ChangePaymentTolerance;
                Visible = UserCheck;

                trigger OnAction()
                var
                    PriceDialog: Page "Change Unit Price Dialog";
                    NewPrice: Decimal;
                    SalesHeader: Record "Sales Header";
                begin
                    // cek status SO
                    if SalesHeader.Get(Rec."Document Type", Rec."Document No.") then
                        if SalesHeader.Status <> SalesHeader.Status::Open then
                            Error('Sales Order harus status Open.');

                    if PriceDialog.RunModal() = Action::OK then begin
                        NewPrice := PriceDialog.GetNewPrice();

                        Rec.Validate("Unit Price", NewPrice);
                        Rec.Modify(true);

                        CurrPage.Update();
                        Message('Berhasil. Price baru: %1', NewPrice);
                    end;
                end;
            }
        }
    }

    var
        UserCheck: Boolean;

    trigger OnOpenPage()
    begin
        UserCheck := false;
        if (UserId = 'ADMINBC') OR (UserId = 'SARAH.RAMADHINA') then UserCheck := true;
        // UserCheck := UpperCase(UserId()) = 'ADMINBC';
        // UserCheck := UpperCase(UserId()) = 'SARAH.RAMADHINA';
    end;
}