page 50220 "API IT SalesLimit IA"
{
    PageType = API;

    APIVersion = 'v1.0';
    APIPublisher = 'Bagas';
    APIGroup = 'IT';
    EntitySetName = 'IA_SalesLimit';

    EntityCaption = 'IA_SalesLimit';
    EntitySetCaption = 'IA_SalesLimit';
    EntityName = 'IA_SalesLimit';

    ODataKeyFields = SystemId;
    SourceTable = "Sales TOP and Credit Limit";

    Extensible = false;
    DelayedInsert = false;
    InsertAllowed = false;
    ModifyAllowed = false;
    DeleteAllowed = false;
    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field(Branch; Rec.Branch)
                {
                    ApplicationArea = All;
                }
                field("CustomerNo"; Rec."Customer No.")
                {
                    ApplicationArea = All;
                }
                field("CustomerName"; Rec."Customer Name")
                {
                    ApplicationArea = All;
                }
                field("ItemCategory"; Rec."Item Category")
                {
                    ApplicationArea = All;
                }
                field("PaymentTermCode"; Rec."Payment Term Code")
                {
                    ApplicationArea = All;
                }
                field("CreditLimitLCY"; Rec."Credit Limit(LCY)")
                {
                    ApplicationArea = All;
                }
                field("GlobalDimension1Code"; Rec."Global Dimension 1 Code")
                {
                    ApplicationArea = All;
                }
                field(SystemId; Rec.SystemId)
                {
                    ApplicationArea = All;
                }
                field(SystemCreatedAt; Rec.SystemCreatedAt)
                {
                    ApplicationArea = All;
                }
                field(SystemCreatedBy; Rec.SystemCreatedBy)
                {
                    ApplicationArea = All;
                }
                field(SystemModifiedAt; Rec.SystemModifiedAt)
                {
                    ApplicationArea = All;
                }
                field(SystemModifiedBy; Rec.SystemModifiedBy)
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}