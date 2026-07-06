pageextension 50217 "Sales Order Ext" extends "Sales Order"
{
    layout
    {
        addafter(Status)
        {
            field("SO Send Approval Check"; Rec."SO Send Approval Check")
            {
                ApplicationArea = All;
            }
        }
        addbefore("Prepayment %")
        {
            field("Prepayment Amount"; Rec."Prepayment Amount")
            {
                ApplicationArea = All;
            }
        }
    }
}