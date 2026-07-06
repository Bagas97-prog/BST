page 50204 "API IT SI Header"
{
    PageType = API;

    APIVersion = 'v1.0';
    APIPublisher = 'Bagas';
    APIGroup = 'IT';
    EntitySetName = 'SIHeader';

    EntityCaption = 'SI Header';
    EntitySetCaption = 'SI Header';
    EntityName = 'SIHeader';

    ODataKeyFields = SystemId;
    SourceTable = "Sales Invoice Header";

    Extensible = false;
    DelayedInsert = true;
    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("SalesmanCode"; Rec."Salesman Code")
                {
                    ApplicationArea = All;
                }

                field("CustomerNo"; Rec."Sell-to Customer No.")
                {
                    ApplicationArea = All;
                }
                field("BCSINo"; Rec."No.")
                {
                    ApplicationArea = All;
                }
                field("BCSONo"; Rec."Order No.")
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
                field("PrincipalCode"; Rec."Shortcut Dimension 2 Code")
                {
                    ApplicationArea = All;
                }
                field("BranchCode"; Rec."Shortcut Dimension 1 Code")
                {
                    ApplicationArea = All;
                }
                field("RemainingAmount"; Rec."Remaining Amount")
                {
                    ApplicationArea = All;
                }
                field("Amount"; Rec."Amount Including VAT")
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
            }
        }
    }
}