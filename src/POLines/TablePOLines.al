table 50201 "PO Lines"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Entry No."; Integer)
        {
            DataClassification = ToBeClassified;
        }

        field(36; "Document Type"; Enum "Purchase Document Type")
        {
            DataClassification = ToBeClassified;
        }
        field(2; "Order Date"; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(3; "Document No."; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(4; "Vendor Order No."; Code[50])
        {
            DataClassification = ToBeClassified;
        }
        field(5; "Buy-from Vendor No."; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(6; "Buy-from Vendor Name"; Text[250])
        {
            DataClassification = ToBeClassified;
        }
        field(7; "Pay-to Vendor No."; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(8; "Pay-to Vendor Name"; Text[250])
        {
            DataClassification = ToBeClassified;
        }
        field(9; "Line No."; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(10; "Location Code"; Code[10])
        {
            DataClassification = ToBeClassified;
        }
        field(11; Type; Enum "Purchase Line Type")
        {
            DataClassification = ToBeClassified;
        }
        field(12; "No."; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(13; Description; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(14; "VAT Prod. Posting Group"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(15; Quantity; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(16; "Unit of Measure Code"; Code[10])
        {
            DataClassification = ToBeClassified;
        }
        field(17; "Direct Unit Cost"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(18; "Line Discount Amount"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(19; Amount; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(20; "Amount Including VAT"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(21; "Line Amount"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(22; "Outstanding Quantity"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(23; "Quantity Received"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(24; "Outstanding Amount"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(25; "Outstanding Amount (LCY)"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(26; "Quantity Invoiced"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(27; "Shortcut Dimension 1 Code"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(28; "Shortcut Dimension 2 Code"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(29; "Receipt No."; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(30; "Order No."; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(31; "Order Line No."; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(32; "Gen. Bus. Posting Group"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(33; "Gen. Prod. Posting Group"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(34; "Drop Shipment"; Boolean)
        {
            DataClassification = ToBeClassified;
        }
        field(35; Status; Enum "Purchase Document Status")
        {
            DataClassification = ToBeClassified;
        }
        field(37; "Receipt Date"; Date)
        {
            Caption = 'Receipt Date';
            DataClassification = ToBeClassified;
        }

    }

}