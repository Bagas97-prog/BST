reportextension 50207 "KonfirmasiAR Ext" extends KonfirmasiAR
{
    dataset
    {
        add("Cust. Ledger Entry")
        {
            column(Principal; "Global Dimension 2 Code") { }
            column(CustomerGroupCode; "Shortcut Dimension 4 Code") { }
        }
    }
}