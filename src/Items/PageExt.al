pageextension 50205 "Item Ext IT" extends "Item Card"
{
    layout
    {
        addafter("Over-Receipt Code")
        {
            field("Category Product"; Rec."Category Product")
            {
                ApplicationArea = All;
            }
        }
    }
}