reportextension 50208 "DGS Posted Sales Invoice Ext" extends "DGS Posted Sales Invoice"
{
    dataset
    {
        // add("Sales Invoice Header")
        // {
        //     column(Prepayment_Invoice; "Prepayment Invoice") { }
        //     column(SOamount; SOAmount("Sales Invoice Header")) { }
        //     column(findPrepaymentInvoice; findPrepaymentInvoice("Sales Invoice Header")) { }
        // }
    }

    // procedure SOAmount(SIH: Record "Sales Invoice Header"): Decimal
    // var
    //     SOLines: Record "Sales Line";
    //     VSOAmount: Decimal;
    // begin
    //     VSOamount := 0;
    //     if SIH."Prepayment Invoice" then begin
    //         SOLines.SetRange("Document Type", SOLines."Document Type"::Order);
    //         SOLines.SetRange("Document No.", SIH."Prepayment Order No.");
    //         SOLines.CalcSums(Amount);
    //         VSOamount := SOLines.Amount;
    //     end
    //     else begin
    //         SOLines.SetRange("Document Type", SOLines."Document Type"::Order);
    //         SOLines.SetRange("Document No.", SIH."Order No.");
    //         SOLines.CalcSums(Amount);
    //         VSOamount := SOLines.Amount
    //     end;
    //     exit(VSOamount);
    // end;

    // procedure findPrepaymentInvoice(SIH: Record "Sales Invoice Header"): Boolean
    // var
    //     SalInvoiceHeader: Record "Sales Invoice Header";
    //     Result: Boolean;
    // begin
    //     Result := false;
    //     if SIH."Prepayment Invoice" then Result := true;
    //     "Sales Invoice Header".Reset();
    //     "Sales Invoice Header".SetRange("Prepayment Order No.", SIH."Order No.");
    //     if "Sales Invoice Header".FindFirst() then Result := true;
    //     exit(Result);
    // end;
}