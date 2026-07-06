page 50207 "API IT Sales Price"
{
    PageType = API;

    APIVersion = 'v1.0';
    APIPublisher = 'Bagas';
    APIGroup = 'IT';
    EntitySetName = 'SalesPrice';

    EntityCaption = 'Sales Price';
    EntitySetCaption = 'Sales Price';
    EntityName = 'SalesPrice';

    ODataKeyFields = SystemId;
    SourceTable = "Sales Price";

    Extensible = false;
    DelayedInsert = true;
    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("CustomerNo"; Rec."Sales Code")
                {
                    ApplicationArea = All;
                }
                field("ItemNo"; Rec."Item No.")
                {
                    ApplicationArea = All;
                }
                field("UnitPrice"; Rec."Unit Price")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}