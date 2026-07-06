page 50214 "API IT SO Header"
{
    PageType = API;

    APIVersion = 'v1.0';
    APIPublisher = 'Bagas';
    APIGroup = 'IT';
    EntitySetName = 'SOHeader';

    EntityCaption = 'SO Header';
    EntitySetCaption = 'SO Header';
    EntityName = 'SOHeader';

    ODataKeyFields = SystemId;
    SourceTable = "Sales Header";

    Extensible = false;
    DelayedInsert = true;
    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("NoSOHarvest"; Rec."Advo Ref No.")
                {
                    ApplicationArea = All;
                }
                field("NoSOBC"; Rec."No.")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}