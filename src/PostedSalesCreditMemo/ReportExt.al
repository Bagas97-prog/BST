reportextension 50204 "Posted Sales Cr. Memo Ext" extends "Posted Sales Cr. Memo"
{
    dataset
    {
        add("Sales Cr.Memo Header")
        {
            column(Tax_Invoice_No__IT; "Tax Invoice No. IT") { }
            column(Tax_Invoice_Date_IT; "Tax Invoice Date IT") { }
            column(Applies_to_Doc__No_; "Applies-to Doc. No.") { }
        }
    }
}