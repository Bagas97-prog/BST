pageextension 50214 "Location Card Ext" extends "Location Card"
{
    layout
    {
        addafter("Use As In-Transit")
        {
            field(Block; Rec.Block)
            {
                ApplicationArea = All;
            }
        }
    }
}