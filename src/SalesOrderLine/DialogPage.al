page 50238 "Change Unit Price Dialog"
{
    PageType = StandardDialog;
    Caption = 'Change Unit Price';
    UsageCategory = None;

    layout
    {
        area(content)
        {
            field(NewPrice; NewPrice)
            {
                ApplicationArea = All;
                Caption = 'New Unit Price';
            }
        }
    }

    var
        NewPrice: Decimal;

    procedure GetNewPrice(): Decimal
    begin
        exit(NewPrice);
    end;
}