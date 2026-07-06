codeunit 50201 CodeUnitIT
{
    [ServiceEnabled]
    procedure GetRemainingQty(ItemCode: Code[20]; LocationCode: Code[10]): Decimal
    var
        ItemLedgerEntry: Record "Item Ledger Entry";
    begin
        ItemLedgerEntry.SetRange("Item No.", ItemCode);
        ItemLedgerEntry.SetRange("Location Code", LocationCode);
        ItemLedgerEntry.SetRange(Open, true);
        ItemLedgerEntry.CalcSums("Remaining Quantity");
        exit(ItemLedgerEntry."Remaining Quantity");
    end;

    [ServiceEnabled]
    procedure CancelSO(SoNo: Text[50]): Text[100]
    var
        SalesOrder: Record "Sales Header";
        SalesLine: Record "Sales Line";
        ReleaseSalesDoc: Codeunit "Release Sales Document";
    begin
        SalesOrder.Reset();
        SalesOrder.SetRange("Advo Ref No.", SoNo);
        SalesOrder.SetRange(Status, Enum::"Sales Document Status"::Released);
        if SalesOrder.FindFirst() then begin
            SalesLine.Reset();
            SalesLine.SetRange("Document Type", Enum::"Sales Document Type"::Order);
            SalesLine.SetRange("Document No.", SalesOrder."No.");
            if SalesLine.FindSet() then begin
                repeat
                    if SalesLine."Quantity Shipped" <> SalesLine."Quantity Invoiced" then exit('SO ini tidak dapat di cancel karena sudah di proses!');
                until SalesLine.Next() = 0;
            end;
            ReleaseSalesDoc.PerformManualReopen(SalesOrder);
            SalesOrder.Status := Enum::"Sales Document Status"::Closed;
            SalesOrder.Modify();
            exit('Berhasil');
        end
        else
            exit(SoNo + ', tidak di temukan di Business Central');
    end;

    [ServiceEnabled]
    procedure PaymentCheck(PayNo: Text[50]): Text[100]
    var
        ListPaymentAPI: Record PaymentLineAdvo;
        CashReceipt: Record "Gen. Journal Line";
        CLE: Record "Cust. Ledger Entry";
    begin
        CLE.Reset();
        CLE.SetRange("Advo Ref No. Payment", PayNo);
        if CLE.FindFirst() then exit(CLE."Document No.");
        CashReceipt.Reset();
        CashReceipt.SetRange("Journal Template Name", 'CASHRCPT');
        CashReceipt.SetRange("Advo Ref No. Payment", PayNo);
        if CashReceipt.FindFirst() then exit('1');
        ListPaymentAPI.Reset();
        ListPaymentAPI.SetRange("Payment No.", PayNo);
        if ListPaymentAPI.FindFirst() then exit('2');
        exit('3');
    end;

    [ServiceEnabled]
    procedure CancelPayment(PayNo: Text[50]): Text[100]
    var
        CashReceipt: Record "Gen. Journal Line";
        CLE: Record "Cust. Ledger Entry";
        PayAPIAdvo: Record PaymentLineAdvo;
    begin
        CLE.Reset();
        CLE.SetRange("Advo Ref No. Payment", PayNo);
        if CLE.FindFirst() then exit(CLE."Document No.");
        PayAPIAdvo.Reset();
        PayAPIAdvo.SetRange("Payment No.", PayNo);
        PayAPIAdvo.SetRange(Status, PayAPIAdvo.Status::Open);
        if PayAPIAdvo.FindFirst() then begin
            PayAPIAdvo.Status := PayAPIAdvo.Status::Released;
            PayAPIAdvo.Modify();
        end;
        CashReceipt.Reset();
        CashReceipt.SetRange("Journal Template Name", 'CASHRCPT');
        CashReceipt.SetRange("Advo Ref No. Payment", PayNo);
        if CashReceipt.FindSet() then begin
            repeat
                CashReceipt.Delete();
            until CashReceipt.Next() = 0;
            exit('Berhasil Cancel');
        end;
        exit('Not Found');
    end;
}