tableextension 50210 "Sales Invoice Header Ext IT" extends "Sales Invoice Header"
{
    fields
    {
        field(50200; "Salesman Code"; Code[20])
        {
            Caption = 'Salesman Code';
            FieldClass = FlowField;
            CalcFormula = lookup("Dimension Set Entry"."Dimension Value Code" where("Dimension Code" = const('SALESMAN'), "Dimension Set ID" = field("Dimension Set ID")));
        }

    }

}