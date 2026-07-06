page 50231 "API IT DimValue IA"
{
    PageType = API;

    APIVersion = 'v1.0';
    APIPublisher = 'Bagas';
    APIGroup = 'IT';
    EntitySetName = 'IA_DimensionValue';
    EntityCaption = 'IA_DimensionValue';
    EntitySetCaption = 'IA_DimensionValue';
    EntityName = 'IA_DimensionValue';

    ODataKeyFields = SystemId;
    SourceTable = "Dimension Value";

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
                field(dimensionCode; Rec."Dimension Code")
                {
                    ApplicationArea = All;
                }
                field(code; Rec.Code)
                {
                    ApplicationArea = All;
                }
                field(name; Rec.Name)
                {
                    ApplicationArea = All;
                }
                field(dimensionValueType; Rec."Dimension Value Type")
                {
                    ApplicationArea = All;
                }
                field(totaling; Rec.Totaling)
                {
                    ApplicationArea = All;
                }
                field(blocked; Rec.Blocked)
                {
                    ApplicationArea = All;
                }
                field(consolidationCode; Rec."Consolidation Code")
                {
                    ApplicationArea = All;
                }
                field(indentation; Rec.Indentation)
                {
                    ApplicationArea = All;
                }
                field(globalDimensionNo; Rec."Global Dimension No.")
                {
                    ApplicationArea = All;
                }
                field(mapToICDimensionCode; Rec."Map-to IC Dimension Code")
                {
                    ApplicationArea = All;
                }
                field(mapToICDimensionValueCode; Rec."Map-to IC Dimension Value Code")
                {
                    ApplicationArea = All;
                }
                field(dimensionValueId; Rec."Dimension Value ID")
                {
                    ApplicationArea = All;
                }
                field(lastModifiedDateTime; Rec."Last Modified Date Time")
                {
                    ApplicationArea = All;
                }
                field(dimensionId; Rec."Dimension Id")
                {
                    ApplicationArea = All;
                }
                field(branchPhoneNo; Rec."Branch Phone No")
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