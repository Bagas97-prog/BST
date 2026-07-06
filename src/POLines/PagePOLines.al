page 50201 "PO Lines"
{
    Caption = 'PO Lines';
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "PO Lines";
    InsertAllowed = false;
    Editable = false;
    DeleteAllowed = false;

    layout
    {
        area(Content)
        {
            repeater(Control)
            {
                field("Document Type"; Rec."Document Type")
                {
                    ApplicationArea = All;
                }
                field("Order Date"; Rec."Order Date")
                {
                    ApplicationArea = All;
                }
                field("Document No."; Rec."Document No.")
                {
                    ApplicationArea = All;
                }
                field("Vendor Order No."; Rec."Vendor Order No.")
                {
                    ApplicationArea = All;
                }

                field("Buy-from Vendor No."; Rec."Buy-from Vendor No.")
                {
                    ApplicationArea = All;
                }
                field("Buy-from Vendor Name"; Rec."Buy-from Vendor Name")
                {
                    ApplicationArea = All;
                }

                field("Pay-to Vendor No."; Rec."Pay-to Vendor No.")
                {
                    ApplicationArea = All;
                }
                field("Pay-to Vendor Name"; Rec."Pay-to Vendor Name")
                {
                    ApplicationArea = All;
                }

                field("Line No."; Rec."Line No.")
                {
                    ApplicationArea = All;
                }
                field("Location Code"; Rec."Location Code")
                {
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
                field("VAT Prod. Posting Group"; Rec."VAT Prod. Posting Group")
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
                field("Direct Unit Cost"; Rec."Direct Unit Cost")
                {
                    ApplicationArea = All;
                }
                field("Line Discount Amount"; Rec."Line Discount Amount")
                {
                    ApplicationArea = All;
                }
                field(Amount; Rec.Amount)
                {
                    ApplicationArea = All;
                }
                field("Amount Including VAT"; Rec."Amount Including VAT")
                {
                    ApplicationArea = All;
                }
                field("Line Amount"; Rec."Line Amount")
                {
                    ApplicationArea = All;
                }
                field("Outstanding Quantity"; Rec."Outstanding Quantity")
                {
                    ApplicationArea = All;
                }
                field("Quantity Received"; Rec."Quantity Received")
                {
                    ApplicationArea = All;
                }
                field("Outstanding Amount"; Rec."Outstanding Amount")
                {
                    ApplicationArea = All;
                }
                field("Outstanding Amount (LCY)"; Rec."Outstanding Amount (LCY)")
                {
                    ApplicationArea = All;
                }
                field("Quantity Invoiced"; Rec."Quantity Invoiced")
                {
                    ApplicationArea = All;
                }
                field("Shortcut Dimension 1 Code"; Rec."Shortcut Dimension 1 Code")
                {
                    ApplicationArea = All;
                }
                field("Shortcut Dimension 2 Code"; Rec."Shortcut Dimension 2 Code")
                {
                    ApplicationArea = All;
                }
                field("Receipt No."; Rec."Receipt No.")
                {
                    ApplicationArea = All;
                }
                field("Receipt Date"; Rec."Receipt Date")
                {
                    ApplicationArea = All;
                }

                field("Order No."; Rec."Order No.")
                {
                    ApplicationArea = All;
                }
                field("Order Line No."; Rec."Order Line No.")
                {
                    ApplicationArea = All;
                }
                field("Gen. Bus. Posting Group"; Rec."Gen. Bus. Posting Group")
                {
                    ApplicationArea = All;
                }
                field("Gen. Prod. Posting Group"; Rec."Gen. Prod. Posting Group")
                {
                    ApplicationArea = All;
                }
                field("Drop Shipment"; Rec."Drop Shipment")
                {
                    ApplicationArea = All;
                }
                field(Status; Rec.Status)
                {
                    ApplicationArea = All;
                }

            }
        }
    }
    trigger OnOpenPage()
    var
        POL: Record "Purchase Line";
        MyPOL: Record "PO Lines";
        Entry: Integer;
        Vendor: Record Vendor;
        POHead: Record "Purchase Header";
        PORecv: Record "Purch. Rcpt. Line";
    begin
        MyPOL.DeleteAll();
        if POL.FindSet then begin
            repeat
                Entry := Entry + 1;
                MyPOL.Init();
                POHead.Reset();
                POHead.SetRange("No.", POL."Document No.");
                POHead.FindFirst();
                MyPOL."Document Type" := POL."Document Type";
                MyPOL."Order Date" := POL."Order Date";
                MyPOL."Document No." := POL."Document No.";
                MyPOL."Vendor Order No." := POHead."Vendor Order No.";
                MyPOL."Buy-from Vendor No." := POL."Buy-from Vendor No.";
                Vendor.SetRange("No.", POL."Buy-from Vendor No.");
                if Vendor.FindFirst() then begin
                    MyPOL."Buy-from Vendor Name" := Vendor.Name;
                end;
                Vendor.Reset();
                MyPOL."Pay-to Vendor No." := POL."Pay-to Vendor No.";
                Vendor.SetRange("No.", POL."Pay-to Vendor No.");
                if Vendor.FindFirst() then begin
                    MyPOL."Pay-to Vendor Name" := Vendor.Name;
                end;
                Vendor.Reset();
                MyPOL."Line No." := POL."Line No.";
                MyPOL."Location Code" := POL."Location Code";
                MyPOL.Type := POL.Type;
                MyPOL."No." := POL."No.";
                MyPOL.Description := POL.Description;
                MyPOL."VAT Prod. Posting Group" := POL."VAT Prod. Posting Group";
                MyPOL.Quantity := POL.Quantity;
                MyPOL."Unit of Measure Code" := POL."Unit of Measure Code";
                MyPOL."Direct Unit Cost" := POL."Direct Unit Cost";
                MYPOL."Line Discount Amount" := POL."Line Discount Amount";
                MyPOL.Amount := POL.Amount;
                MyPOL."Amount Including VAT" := POL."Amount Including VAT";
                MyPOL."Line Amount" := POL."Line Amount";
                MyPOL."Outstanding Quantity" := POL."Outstanding Quantity";
                MyPOL."Quantity Received" := POL."Quantity Received";
                MyPOL."Outstanding Amount" := POL."Outstanding Amount";
                MyPOL."Outstanding Amount (LCY)" := POL."Outstanding Amount (LCY)";
                MyPOL."Quantity Invoiced" := POL."Quantity Invoiced";
                MyPOL."Shortcut Dimension 1 Code" := POL."Shortcut Dimension 1 Code";
                MyPOL."Shortcut Dimension 2 Code" := POL."Shortcut Dimension 2 Code";
                MyPOL."Receipt No." := POL."Receipt No.";
                MyPOL."Order No." := POL."Order No.";
                MyPOL."Order Line No." := POL."Order Line No.";
                MyPOL."Gen. Bus. Posting Group" := POL."Gen. Bus. Posting Group";
                MyPOL."Gen. Prod. Posting Group" := POL."Gen. Prod. Posting Group";
                MyPOL.Status := POHead.Status;
                MyPOL."Entry No." := Entry;
                PORecv.SetRange("Order No.", POL."Order No.");
                if PORecv.FindFirst() then begin
                    MyPOL."Receipt Date" := PORecv."Posting Date";
                end;
                PORecv.Reset();
                MyPOL.Insert(true)
            until POL.Next = 0;
        end;
    end;
}