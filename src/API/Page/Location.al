page 50208 "API IT Location"
{
    PageType = API;

    APIVersion = 'v1.0';
    APIPublisher = 'Bagas';
    APIGroup = 'IT';
    EntitySetName = 'Location';

    EntityCaption = 'Location';
    EntitySetCaption = 'Location';
    EntityName = 'Location';

    ODataKeyFields = SystemId;
    SourceTable = "Location";

    Extensible = false;
    DelayedInsert = true;
    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("LocationNo"; Rec.Code)
                {
                    ApplicationArea = All;
                }
                field(Name; Rec.Name)
                {
                    ApplicationArea = All;
                }
                field(Type; Rec.Type)
                {
                    Caption = 'LocationType';
                    ApplicationArea = All;
                }
                field(Branch; Rec."Global Dimension 1 Code")
                {
                    ApplicationArea = All;
                }
                field(Block; Rec.Block)
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}