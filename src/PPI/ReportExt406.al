reportextension 50206 "Purchase - Invoice Ext" extends "Purchase - Invoice"
{
    dataset
    {
        add("Purch. Inv. Line")
        {
            column(Desc2_PurchInvLine; "Description 2") { }
        }
    }
}