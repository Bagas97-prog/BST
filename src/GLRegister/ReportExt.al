reportextension 50200 "G/L Register Ext" extends "G/L Register"
{
    dataset
    {
        add("G/L Register")
        {
            column(PrintDate; workdate()) { }
        }
    }
}