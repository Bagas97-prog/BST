reportextension 50201 "Inventory Valuation Ext" extends "Inventory Valuation"
{
    requestpage
    {
        trigger OnOpenPage()
        var
            UserSetup: Record "User Setup";
            Employee: Record Employee;
        begin
            UserSetup.Reset();
            UserSetup.SetRange("User ID", UserId);
            if UserSetup.FindFirst() then begin
                if UserSetup.Employee <> '' then begin
                    Employee.Reset();
                    Employee.SetRange("No.", UserSetup.Employee);
                    if Employee.FindFirst() then begin
                        if Employee."Job Title" = 'SALESMAN' then
                            Error('Seems your role cant access this report, please contact your administrator.');
                    end;
                end;
            end;
        end;
    }
}
