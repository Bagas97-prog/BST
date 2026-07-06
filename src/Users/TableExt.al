tableextension 50201 "User Setup Ext IT" extends "User Setup"
{
    fields
    {
        field(50200; "Employee"; Code[20])
        {
            Caption = 'Employee';
            DataClassification = ToBeClassified;
            TableRelation = Employee."No.";
        }

    }

}