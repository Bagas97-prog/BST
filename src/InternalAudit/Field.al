page 50221 "API IT Field IA"
{
    PageType = API;

    APIVersion = 'v1.0';
    APIPublisher = 'Bagas';
    APIGroup = 'IT';
    EntitySetName = 'IA_Field';

    EntityCaption = 'IA_Field';
    EntitySetCaption = 'IA_Field';
    EntityName = 'IA_Field';

    ODataKeyFields = SystemId;
    SourceTable = Field;

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
                field(TableNo; Rec.TableNo)
                {
                    ApplicationArea = All;
                }
                field("No"; Rec."No.")
                {
                    ApplicationArea = All;
                }
                field(TableName; Rec.TableName)
                {
                    ApplicationArea = All;
                }
                field(FieldName; Rec.FieldName)
                {
                    ApplicationArea = All;
                }
                field("FieldCaption"; Rec."Field Caption")
                {
                    ApplicationArea = All;
                }
                field(Type; Rec.Type)
                {
                    ApplicationArea = All;
                }
                field(Len; Rec.Len)
                {
                    ApplicationArea = All;
                }
                field(Class; Rec.Class)
                {
                    ApplicationArea = All;
                }
                field(Enabled; Rec.Enabled)
                {
                    ApplicationArea = All;
                }
                field("TypeName"; Rec."Type Name")
                {
                    ApplicationArea = All;
                }
                field(ExternalName; Rec.ExternalName)
                {
                    ApplicationArea = All;
                }
                field(RelationTableNo; Rec.RelationTableNo)
                {
                    ApplicationArea = All;
                }
                field(RelationFieldNo; Rec.RelationFieldNo)
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