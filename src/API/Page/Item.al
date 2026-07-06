page 50209 "API IT Item"
{
    PageType = API;

    APIVersion = 'v1.0';
    APIPublisher = 'Bagas';
    APIGroup = 'IT';
    EntitySetName = 'Item';

    EntityCaption = 'Item';
    EntitySetCaption = 'Item';
    EntityName = 'Item';

    ODataKeyFields = SystemId;
    SourceTable = "Item";

    Extensible = false;
    DelayedInsert = true;
    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("ItemNo"; Rec."No.")
                {
                    ApplicationArea = All;
                }
                field(Principal; Rec."Global Dimension 2 Code")
                {
                    ApplicationArea = All;
                }
                field(ItemGroup; Rec."Item Category Code")
                {
                    ApplicationArea = All;
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                }
                field(UOM; Rec."Base Unit of Measure")
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