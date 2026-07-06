page 50203 "API IT Dimension"
{
    PageType = API;

    APIVersion = 'v1.0';
    APIPublisher = 'Bagas';
    APIGroup = 'IT';
    EntitySetName = 'Dimension';

    EntityCaption = 'Dimension';
    EntitySetCaption = 'Dimension';
    EntityName = 'Dimension';

    ODataKeyFields = SystemId;
    SourceTable = "Dimension Value";

    Extensible = false;
    DelayedInsert = true;
    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("DimensionCode"; Rec."Dimension Code")
                {
                    ApplicationArea = All;
                }
                field(Code; Rec.Code)
                {
                    ApplicationArea = All;
                }
                field(Name; Rec.Name)
                {
                    ApplicationArea = All;
                }
                field("BranchPhoneNo"; Rec."Branch Phone No")
                {
                    ApplicationArea = All;
                }
                field(Blocked; Rec.Blocked)
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}