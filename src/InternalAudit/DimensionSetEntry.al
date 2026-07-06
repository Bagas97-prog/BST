page 50232 "API IT DimSetEntry IA"
{
    PageType = API;

    APIVersion = 'v1.0';
    APIPublisher = 'Bagas';
    APIGroup = 'IT';
    EntitySetName = 'IA_DimensionSetEntry';
    EntityCaption = 'IA_DimensionSetEntry';
    EntitySetCaption = 'IA_DimensionSetEntry';
    EntityName = 'IA_DimensionSetEntry';

    ODataKeyFields = SystemId;
    SourceTable = "Dimension Set Entry";

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
                field(dimensionSetId; Rec."Dimension Set ID")
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
                field(dimensionValueId; Rec."Dimension Value ID")
                {
                    ApplicationArea = All;
                }
                field(globalDimensionNo; Rec."Global Dimension No.")
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