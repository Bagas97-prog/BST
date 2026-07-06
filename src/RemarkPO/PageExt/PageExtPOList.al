pageextension 50200 "Additional data PO List" extends "Purchase Order List"
{
    layout
    {
        addafter(Status)
        {
            field(Remark; Rec."Remark Bagas") { Caption = 'Remark'; ApplicationArea = All; }
        }
    }
}