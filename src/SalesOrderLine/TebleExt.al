tableextension 50203 SO_Outstanding_Lines_IT extends SO_Outstanding_Lines
{
    fields
    {
        field(50200; "Description 2"; Text[300])
        {
            FieldClass = FlowField;
            CalcFormula = lookup("Sales Line"."Description 2" where("Line No." = field("Line No."), "Document No." = field("Document No."), "Document Type" = field("Document Type")));
        }
    }

}