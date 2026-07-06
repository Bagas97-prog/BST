pageextension 50208 "Purchase Order Subform Ext" extends "Purchase Order Subform"
{
    layout
    {
        modify("Description 2")
        {
            Visible = true;
        }
        modify("Line Discount Amount")
        {
            Editable = false;
        }
        modify("Line Discount %")
        {
            Editable = false;
        }
        addafter("Line Discount Amount")
        {
            field("Discount 1 Percentage"; Rec."Discount 1 Percentage")
            {
                ApplicationArea = All;
                Caption = 'Discount by percentage unit price';
                Editable = false;
            }
            field("Discount 1 Amount"; Rec."Discount 1 Amount")
            {
                ApplicationArea = All;
                Caption = 'Discount by amount unit price';
            }
            field("Discount 2 Percentage"; Rec."Discount 2 Percentage")
            {
                ApplicationArea = All;
                Caption = 'Discount by percentage';
            }
            field("Discount 2 Amount"; Rec."Discount 2 Amount")
            {
                ApplicationArea = All;
                Editable = false;
                Caption = 'Discount by amount';
            }
            field("Discount 3 Percentage"; Rec."Discount 3 Percentage")
            {
                ApplicationArea = All;
                Editable = false;
                Caption = 'Discount by total percentage';

            }
            field("Discount 3 Amount"; Rec."Discount 3 Amount")
            {
                ApplicationArea = All;
                Caption = 'Discount by total amount';

            }
        }
    }
    actions
    {
        addafter("Dr&op Shipment")
        {
            action(CancelDropship)
            {
                ApplicationArea = All;
                Visible = IsIT;
                trigger OnAction()
                begin
                    if Rec."Drop Shipment" = true then Rec."Drop Shipment" := false else Rec."Drop Shipment" := true;
                end;
            }
        }
    }
    var
        IsIT: Boolean;

    trigger OnOpenPage()
    begin
        if UserId() = 'ADMINBC' then IsIT := true else IsIT := false;
    end;

    local procedure CountDiscounts(): Boolean
    begin

    end;
}