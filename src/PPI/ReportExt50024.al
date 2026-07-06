reportextension 50205 "Purchase - Invoice Custom Ext" extends "Purchase - Invoice Custom"
{
    dataset
    {
        add("Purch. Inv. Line")
        {
            column(Desc2_PurchInvLine; "Description 2") { }
        }
    }
}