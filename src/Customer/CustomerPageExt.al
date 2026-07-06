pageextension 50220 "Customer Card Ext IT" extends "Customer Card"
{
    layout
    {
        addafter("Parent Customer Code")
        {
            field(Longlat; Rec.Longlat)
            {
                ApplicationArea = All;
            }
        }
    }
}