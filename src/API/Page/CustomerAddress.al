page 50212 "API IT Customer Address"
{
    PageType = API;

    APIVersion = 'v1.0';
    APIPublisher = 'Bagas';
    APIGroup = 'IT';
    EntitySetName = 'CustomerAddress';

    EntityCaption = 'CustomerAddress';
    EntitySetCaption = 'CustomerAddress';
    EntityName = 'CustomerAddress';

    ODataKeyFields = SystemId;
    SourceTable = "Ship-to Address";

    Extensible = false;
    DelayedInsert = true;
    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("CustomerNo"; Rec."Customer No.")
                {
                    ApplicationArea = All;
                }
                field(Address; Rec.Address)
                {
                    ApplicationArea = All;
                }
                field("Address2"; Rec."Address 2")
                {
                    ApplicationArea = All;
                }

            }
        }
    }
}