page 50237 "API IT DefaultDim IA"
{
    PageType = API;

    APIVersion = 'v1.0';
    APIPublisher = 'Bagas';
    APIGroup = 'IT';
    EntitySetName = 'IA_DefaultDimension';
    EntityCaption = 'IA_DefaultDimension';
    EntitySetCaption = 'IA_DefaultDimension';
    EntityName = 'IA_DefaultDimension';

    ODataKeyFields = SystemId;
    SourceTable = "Default Dimension";

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
                field(tableId; Rec."Table ID")
                {
                    ApplicationArea = All;
                }
                field(no; Rec."No.")
                {
                    ApplicationArea = All;
                }
                field(dimensionCode; Rec."Dimension Code")
                {
                    ApplicationArea = All;
                }
                field(dimensionValueCode; Rec."Dimension Value Code")
                {
                    ApplicationArea = All;
                }
                field(valuePosting; Rec."Value Posting")
                {
                    ApplicationArea = All;
                }
                field(multiSelectionAction; Rec."Multi Selection Action")
                {
                    ApplicationArea = All;
                }
                field(parentType; Rec."Parent Type")
                {
                    ApplicationArea = All;
                }
                field(allowedValuesFilter; Rec."Allowed Values Filter")
                {
                    ApplicationArea = All;
                }
                field(parentId; Rec.ParentId)
                {
                    ApplicationArea = All;
                }
                field(dimensionId; Rec.DimensionId)
                {
                    ApplicationArea = All;
                }
                field(dimensionValueId; Rec.DimensionValueId)
                {
                    ApplicationArea = All;
                }
                field(systemId; Rec.SystemId)
                {
                    ApplicationArea = All;
                }
                field(systemCreatedAt; Rec.SystemCreatedAt)
                {
                    ApplicationArea = All;
                }
                field(systemCreatedBy; Rec.SystemCreatedBy)
                {
                    ApplicationArea = All;
                }
                field(systemModifiedAt; Rec.SystemModifiedAt)
                {
                    ApplicationArea = All;
                }
                field(systemModifiedBy; Rec.SystemModifiedBy)
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}