pageextension 50223 "General Ledger Entries Ext" extends "General Ledger Entries"
{
    layout
    {
        addafter("Posting Date")
        {
            field(SystemCreatedAt; Rec.SystemCreatedAt)
            {
                ApplicationArea = All;
            }
        }
    }
}