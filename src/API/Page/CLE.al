page 50235 "API IT CLE"
{
    PageType = API;

    APIVersion = 'v1.0';
    APIPublisher = 'Bagas';
    APIGroup = 'IT';
    EntitySetName = 'CLE';

    EntityCaption = 'CLE';
    EntitySetCaption = 'CLE';
    EntityName = 'CLE';

    ODataKeyFields = SystemId;
    SourceTable = "Cust. Ledger Entry";

    Extensible = false;
    DelayedInsert = true;
    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("SalesmanCode"; Rec."Shortcut Dimension 6 Code")
                {
                    ApplicationArea = All;
                }
                field("CustomerNo"; Rec."Sell-to Customer No.")
                {
                    ApplicationArea = All;
                }
                field("BCSINo"; Rec."Document No.")
                {
                    ApplicationArea = All;
                }
                field("BCSONo"; SONo)
                {
                    ApplicationArea = All;
                }
                field("PostingDate"; Rec."Posting Date")
                {
                    ApplicationArea = All;
                }
                field("DueDate"; Rec."Due Date")
                {
                    ApplicationArea = All;
                }
                field("PrincipalCode"; Rec."Global Dimension 2 Code")
                {
                    ApplicationArea = All;
                }
                field("BranchCode"; Rec."Global Dimension 1 Code")
                {
                    ApplicationArea = All;
                }
                field("RemainingAmount"; Rec."Remaining Amount")
                {
                    ApplicationArea = All;
                }
                field("Amount"; Rec."Amount")
                {
                    ApplicationArea = All;
                }
                field("NoSIKanvas"; Rec."Advo Ref No. SI")
                {
                    ApplicationArea = All;
                }
                field("NoSOHarvest"; Rec."Advo Ref No.")
                {
                    ApplicationArea = All;
                }
                field("SourceCode"; Rec."Source Code")
                {
                    ApplicationArea = All;
                }
                field("CustomerPostingGroup"; Rec."Customer Posting Group")
                {
                    ApplicationArea = All;
                }
                field("DocumentType"; Rec."Document Type")
                {
                    ApplicationArea = All;
                }

            }
        }
    }
    var
        SONo: Code[50];

    trigger OnAfterGetRecord()
    var
        SalInv: Record "Sales Invoice Header";
    begin
        if SalInv.Get(Rec."Document No.") then
            SONo := SalInv."Order No."
        else
            SONo := '';
    end;
}