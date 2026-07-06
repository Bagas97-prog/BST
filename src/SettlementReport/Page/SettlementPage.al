page 50200 "Settlement Report"
{
    Caption = 'Settlement Report';
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Settlement Report";
    InsertAllowed = false;
    Editable = false;
    DeleteAllowed = false;
    layout
    {
        area(Content)
        {
            repeater(Control)
            {
                field("Posting Date"; Rec."Posting Date")
                {
                    ApplicationArea = All;
                }
                field("Document Date"; Rec."Document Date")
                {
                    ApplicationArea = All;
                }
                field("Document Type"; Rec."Document Type")
                {
                    ApplicationArea = All;
                }
                field("Principal Code"; Rec."Principal Code")
                {
                    ApplicationArea = All;
                }
                field("Cust Posting Group"; Rec."Cust Posting Group")
                {
                    ApplicationArea = All;
                }
                field("Document No"; Rec."Document No")
                {
                    ApplicationArea = All;
                }
                field("Invoice Amount"; Rec."Invoice Amount")
                {
                    ApplicationArea = All;
                }
                field("Cust No"; Rec."Cust No")
                {
                    ApplicationArea = All;
                }
                field("Cust Name"; Rec."Cust Name")
                {
                    ApplicationArea = All;
                }
                field("Posting Date Settlement"; Rec."Posting Date Settlement")
                {
                    ApplicationArea = All;
                }
                field("Document Type Settlement"; Rec."Document Type Settlement")
                {
                    ApplicationArea = All;
                }
                field(Unapplied; Rec.Unapplied)
                {
                    ApplicationArea = All;
                }

                field("Document No Settlement"; Rec."Document No Settlement")
                {
                    ApplicationArea = All;
                }
                field("Amount LCY Settlement"; Rec."Amount LCY Settlement")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
    actions
    {
        area(Processing)
        {
            action("Settlement Report Update")
            {
                Caption = 'Settlement Report Update Manual';
                ApplicationArea = All;
                Image = Report;
                trigger OnAction()
                var
                    CI: Codeunit "Settlement Format";
                begin
                    CI.Run();
                end;
            }
        }
    }
    // trigger OnOpenPage()
    // var
    //     Runner: Codeunit "Settlement Format";
    // begin
    //     Runner.Run()
    // end;
}