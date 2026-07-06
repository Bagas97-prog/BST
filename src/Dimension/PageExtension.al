pageextension 50222 "Dimension Values Ext" extends "Dimension Values"
{
    layout
    {
        addafter("Dimension Value Type")
        {
            field("Branch Phone No"; Rec."Branch Phone No")
            {
                ApplicationArea = All;
            }

        }
    }
}