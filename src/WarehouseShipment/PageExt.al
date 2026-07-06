pageextension 50215 "Warehouse Shipment Ext IT" extends "Warehouse Shipment"
{
    // actions
    // {
    //     modify("Get Source Documents")
    //     {
    //         trigger OnAfterAction()
    //         var
    //             WSL: Record "Warehouse Shipment Line";
    //             SOHead: Record "Sales Header";
    //             NoSO: Text[200];
    //         begin
    //             NoSO := '';
    //             WSL.SetRange("No.", Rec."No.");
    //             WSL.SetRange("Source Document", Enum::"Warehouse Activity Source Document"::"Sales Order");
    //             if WSL.FindSet() then begin
    //                 repeat
    //                     SOHead.Reset();
    //                     SOHead.SetRange("No.", WSL."Source No.");
    //                     SOHead.SetRange("Document Type", Enum::"Sales Document Type"::Order);
    //                     SOHead.SetRange(Status, Enum::"Sales Document Status"::Closed);
    //                     if SOHead.FindFirst() then WSL.Delete();
    //                 until WSL.Next() = 0;
    //             end;
    //         end;
    //     }
    // }
}