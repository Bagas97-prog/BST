tableextension 50204 "Sales Cr.Memo Header Ext" extends "Sales Cr.Memo Header"
{
    fields
    {
        field(50200; "Tax Invoice No. IT"; Code[50])
        {
            Caption = 'Tax Invoice No. IT';
            FieldClass = FlowField;
            CalcFormula = lookup("Pajak Header P001 GITS"."No. Faktur Pajak" where("Posted Sales Invoice No." = field("Applies-to Doc. No.")));
        }
        field(50201; "Tax Invoice Date IT"; Date)
        {
            Caption = 'Tax Invoice Date IT';
            FieldClass = FlowField;
            CalcFormula = lookup("Pajak Header P001 GITS"."Tanggal Faktur Pajak" where("Posted Sales Invoice No." = field("Applies-to Doc. No.")));
        }
    }

}