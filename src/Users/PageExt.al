pageextension 50204 "User Setup Ext IT" extends "User Setup"
{
    layout
    {
        addafter("User ID")
        {
            field(Employee; Rec.Employee)
            {
                ApplicationArea = All;
            }
        }
    }
}