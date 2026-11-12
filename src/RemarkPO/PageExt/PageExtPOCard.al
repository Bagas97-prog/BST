pageextension 50201 "Additional data PO Card" extends "Purchase Order"
{
    layout
    {
        addafter(Status)
        {
            field(Remark_IT; Rec."Remark Bagas") { Caption = 'Remark'; ApplicationArea = All; }
            field(Note; Rec.Note)
            {
                ApplicationArea = All;
                MultiLine = true;
            }
        }
    }
    actions
    {
        addafter(Post)
        {
            action(OpenPO)
            {
                ApplicationArea = Basic, Suite;
                Caption = 'Open PO';
                Ellipsis = true;
                Image = Print;
                ToolTip = 'Prepare to print the document. A report request window for the document opens where you can specify what to include on the print-out.';

                trigger OnAction()
                begin
                    Rec.Status := "Purchase Document Status"::Open;
                end;
            }
        }
    }
}