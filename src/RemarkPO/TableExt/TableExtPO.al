tableextension 50200 "Additional data PO" extends "Purchase Header"
{
    fields
    {
        field(50200; "Remark Bagas"; Text[100])
        {
            Caption = 'Remark';
            DataClassification = ToBeClassified;
        }
        field(50201; "Note"; Text[150])
        {
            Caption = 'Note';
            DataClassification = ToBeClassified;
        }

    }

}