pageextension 50202 "Ext CusLeEnt" extends "Customer Ledger Entries"
{
    layout
    {
        addafter("Description")
        {
            field(SystemCreatedAt; Rec.SystemCreatedAt)
            {
                ApplicationArea = All;
            }
            field(SystemModifiedAt; Rec.SystemModifiedAt)
            {
                ApplicationArea = All;
            }
            field(SystemCreatedBy; GetCreatedByName())
            {
                ApplicationArea = All;
            }
            field(SystemModifiedBy; GetModifiedByName())
            {
                ApplicationArea = All;
            }
        }
    }

    local procedure GetCreatedByName(): Text[100]
    var
        UserRec: Record User;
    begin
        if UserRec.Get(Rec.SystemCreatedBy) then
            exit(UserRec."User Name");

        exit('');
    end;

    local procedure GetModifiedByName(): Text[100]
    var
        UserRec: Record User;
    begin
        if UserRec.Get(Rec.SystemModifiedBy) then
            exit(UserRec."User Name");

        exit('');
    end;
}