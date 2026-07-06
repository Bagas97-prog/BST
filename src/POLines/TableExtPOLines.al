// tableextension 50201 "Purchase Line Ext" extends "Purchase Line"
// {
//     fields
//     {
//         field(50200; "Buy-from Vendor Name"; Text[250])
//         {
//             Caption = 'Buy-from Vendor Name';
//             CalcFormula = lookup(Vendor.Name where("No." = field("Buy-from Vendor No.")));
//             FieldClass = FlowField;
//         }
//         field(50201; "Pay-to Vendor Name"; Text[250])
//         {
//             Caption = 'Pay-to Vendor Name';
//             CalcFormula = lookup(Vendor.Name where("No." = field("Pay-to Vendor No.")));
//             FieldClass = FlowField;
//         }
//         field(50202; "Vendor Order No."; Code[50])
//         {
//             Caption = 'Vendor Order No.';
//             CalcFormula = lookup("Purchase Header"."Vendor Order No." where("No." = field("Document No.")));
//             FieldClass = FlowField;
//         }
//         field(50203; "Status"; Enum "Purchase Document Status")
//         {
//             Caption = 'Status';
//             CalcFormula = lookup("Purchase Header".Status where("No." = field("Document No.")));
//             FieldClass = FlowField;
//         }
//         // field(50204; "Receipt Date"; Date)
//         // {
//         //     Caption = 'Receipt Date';
//         //     CalcFormula = ("Purch. Rcpt. Line"."Posting Date" where("No." = field("Document No."), ));
//         //     FieldClass = FlowField;
//         // }
//     }

// }