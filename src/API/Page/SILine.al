page 50213 "API IT SI Line"
{
    PageType = API;

    APIVersion = 'v1.0';
    APIPublisher = 'Bagas';
    APIGroup = 'IT';
    EntitySetName = 'SILine';

    EntityCaption = 'SI Line';
    EntitySetCaption = 'SI Line';
    EntityName = 'SILine';

    ODataKeyFields = SystemId;
    SourceTable = "Sales Invoice Line";

    Extensible = false;
    DelayedInsert = true;
    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field(Type; Rec.Type)
                {
                    ApplicationArea = All;
                }

                field("BCSINo"; Rec."Document No.")
                {
                    ApplicationArea = All;
                }

                field("LineNo"; Rec."Line No.")
                {
                    ApplicationArea = All;
                }
                field("ItemNo"; Rec."No.")
                {
                    ApplicationArea = All;
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                }

                field(Quantity; Rec.Quantity)
                {
                    ApplicationArea = All;
                }
                field("UOM"; Rec."Unit of Measure")
                {
                    ApplicationArea = All;
                }
                field("UnitPrice"; Rec."Unit Price")
                {
                    ApplicationArea = All;
                }
                field(Amount; Rec.Amount)
                {
                    ApplicationArea = All;
                }
                field("DiscountAmount"; Rec."Inv. Discount Amount")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}