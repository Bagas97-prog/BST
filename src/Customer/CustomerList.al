pageextension 50211 "Customer List Ext IT" extends "Customer List"
{
    layout
    {
        addafter(Name)
        {
            field(Longlat; Rec.Longlat)
            {
                ApplicationArea = All;
            }
        }
    }
}