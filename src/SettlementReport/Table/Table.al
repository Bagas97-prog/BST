table 50200 "Settlement Report"
{
    DataClassification = ToBeClassified;
    Permissions = tabledata "Settlement Report" = RIMD;
    fields
    {
        field(1; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
            DataClassification = ToBeClassified;
        }
        field(2; "Posting Date"; Date)
        {
            Caption = 'Posting Date';
            DataClassification = ToBeClassified;
        }
        field(3; "Document Date"; Date)
        {
            Caption = 'Document Date';
            DataClassification = ToBeClassified;
        }
        field(4; "Document Type"; Enum "Gen. Journal Document Type")
        {
            Caption = 'Document Type';
            DataClassification = ToBeClassified;
        }
        field(5; "Principal Code"; Code[20])
        {
            Caption = 'Principal Code';
            DataClassification = ToBeClassified;
        }
        field(6; "Document No"; Code[20])
        {
            Caption = 'Document No';
            DataClassification = ToBeClassified;
        }

        field(7; "Cust Posting Group"; Code[20])
        {
            Caption = 'Cust Posting Group';
            DataClassification = ToBeClassified;
        }
        field(8; "Invoice Amount"; Decimal)
        {
            Caption = 'Invoice Amount';
            DataClassification = ToBeClassified;
        }
        field(9; "Cust No"; Code[20])
        {
            Caption = 'Cust No';
            DataClassification = ToBeClassified;
        }
        field(10; "Cust Name"; Text[200])
        {
            Caption = 'Cust Name';
            DataClassification = ToBeClassified;
        }
        field(11; "Posting Date Settlement"; Date)
        {
            Caption = 'Posting Date Settlement';
            DataClassification = ToBeClassified;
        }
        field(12; "Document Type Settlement"; Enum "Gen. Journal Document Type")
        {
            Caption = 'Document Type Settlement';
            DataClassification = ToBeClassified;
        }
        field(13; "Document No Settlement"; Code[20])
        {
            Caption = 'Document No Settlement';
            DataClassification = ToBeClassified;
        }
        field(14; "Amount LCY Settlement"; Decimal)
        {
            Caption = 'Amount LCY Settlement';
            DataClassification = ToBeClassified;
        }
        field(15; "Customer Ledger Entry"; Integer)
        {
            Caption = 'Customer Ledger Entry';
            DataClassification = ToBeClassified;
        }
        field(16; "Entry Type"; Enum "Detailed CV Ledger Entry Type")
        {
            Caption = 'Entry Type';
            DataClassification = ToBeClassified;
        }
        field(17; "Unapplied"; Boolean)
        {
            Caption = 'Unapplied';
            DataClassification = ToBeClassified;
        }

    }

    keys
    {
        key(PK; "Entry No.")
        {
            Clustered = true;
        }
    }

}