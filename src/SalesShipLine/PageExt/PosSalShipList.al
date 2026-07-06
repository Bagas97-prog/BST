pageextension 50203 "Posted Sales Shipment Lines" extends "Posted Sales Shipment Lines"
{
    layout
    {
        addafter("Document No.")
        {
            field("Posting Date"; Rec."Posting Date") { ApplicationArea = All; }
            field("Order No."; Rec."Order No.") { ApplicationArea = All; }
            field("Line No."; Rec."Line No.") { ApplicationArea = All; }
            field(Type2; Rec.Type) { ApplicationArea = All; }
            field("Unit Cost"; Rec."Unit Cost") { ApplicationArea = All; }
            field("Unit Price"; Rec."Unit Price") { ApplicationArea = All; }
            field("Shortcut Dimension 1 Code2"; Rec."Shortcut Dimension 1 Code") { ApplicationArea = All; Caption = 'Global Dimension 1 Code'; }
        }
    }
}