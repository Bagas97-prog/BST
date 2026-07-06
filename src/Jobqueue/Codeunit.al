codeunit 50203 "BTP CU"
{
    trigger OnRun()
    begin
        AutoSendApprovalSO();
    end;

    local procedure AutoSendApprovalSO()
    var
        ApprovalsMgmt: Codeunit "Approvals Mgmt.";
        SalOrd: Record "Sales Header";
    begin
        SalOrd.Reset();
        SalOrd.SetRange(Status, Enum::"Sales Document Status"::Open);
        SalOrd.SetFilter("Advo Ref No.", '<>%1', '');
        SalOrd.SetRange("SO Send Approval Check", true);
        if SalOrd.FindSet() then begin
            repeat
                if ApprovalsMgmt.CheckSalesApprovalPossible(SalOrd) then
                    ApprovalsMgmt.OnSendSalesDocForApproval(SalOrd);
            until SalOrd.Next() = 0;
        end;
    end;

    // [EventSubscriber(
    // ObjectType::Report,
    // Report::"Get Source Documents",
    // 'OnBeforeWhseShptHeaderInsert',
    // '',
    // false,
    // false)]
    // local procedure TEST_OnBeforeWhseShptHeaderInsert(
    // var WarehouseShipmentHeader: Record "Warehouse Shipment Header";
    // var WarehouseRequest: Record "Warehouse Request";
    // SalesLine: Record "Sales Line";
    // TransferLine: Record "Transfer Line";
    // SalesHeader: Record "Sales Header")
    // begin
    //     Message(
    //         'EVENT KE-TRIGGER!\nSales Order: %1\nRequest Source No: %2',
    //         SalesHeader."No.",
    //         WarehouseRequest."Source No."
    //     );
    // end;
}