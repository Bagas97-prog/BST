page 50202 "API IT Customer"
{
    PageType = API;

    APIVersion = 'v1.0';
    APIPublisher = 'Bagas';
    APIGroup = 'IT';
    EntitySetName = 'Customer';

    EntityCaption = 'Customer';
    EntitySetCaption = 'Customer';
    EntityName = 'Customer';

    ODataKeyFields = SystemId;
    SourceTable = "Customer";

    Extensible = false;
    DelayedInsert = true;
    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("CustomerNo"; Rec."No.")
                {
                    ApplicationArea = All;
                }
                field(Name; Rec.Name)
                {
                    ApplicationArea = All;
                }
                field(Address; Rec.Address)
                {
                    ApplicationArea = All;
                }
                field(Branch; Rec."Global Dimension 1 Code")
                {
                    ApplicationArea = All;
                }
                field(Longlat; Rec.Longlat)
                {
                    ApplicationArea = All;
                }
                field(Contact; Rec.Contact)
                {
                    ApplicationArea = All;
                }
                field("PhoneNo"; Rec."Phone No.")
                {
                    ApplicationArea = All;
                }
                field(Blocked; Rec.Blocked)
                {
                    ApplicationArea = All;
                }
                field(Salesman; Rec.Salesman)
                {
                    ApplicationArea = All;
                }
                field("CustomerPriceGroup"; Rec."Customer Price Group")
                {
                    ApplicationArea = All;
                }
                field("HarvestCustomerNo"; Rec."Harvest Customer No.")
                {
                    ApplicationArea = All;
                }

            }
        }
    }
}