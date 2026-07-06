reportextension 50202 "PO Print 2 Ext" extends "PO Print 2"
{
    dataset
    {
        add("Purchase Header")
        {
            column(Ship_to_Name_IT; "Ship-to Name") { }
            column(Ship_to_Address_IT; "Ship-to Address") { }
            column(Ship_to_Address_2_IT; "Ship-to Address 2") { }
            column(Ship_to_Contact_IT; "Ship-to Contact") { }
            column(Ship_to_Phone_No_IT; "Ship-to Phone No.") { }
        }
    }
}