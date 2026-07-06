pageextension 50206 "Item List Ext IT" extends "Item List"
{
    layout
    {
        addafter("Description 2")
        {
            field("Category Product"; Rec."Category Product")
            {
                ApplicationArea = All;
            }

        }
    }
}