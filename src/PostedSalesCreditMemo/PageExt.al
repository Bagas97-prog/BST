pageextension 50210 "Posted Sales Credit Memo Ext" extends "Posted Sales Credit Memo"
{
    layout
    {
        addafter("Tanggal Lapor Pajak")
        {
            field("Tax Invoice No. IT"; Rec."Tax Invoice No. IT")
            {
                ApplicationArea = All;
            }
            field("Tax Invoice Date IT"; Rec."Tax Invoice Date IT")
            {
                ApplicationArea = All;
            }
        }
    }
}