tableextension 50206 "Customer Ext" extends Customer
{
    fields
    {
        field(50200; "Salesman"; Code[50])
        {
            Caption = 'Salesman';
            DataClassification = ToBeClassified;
        }
        field(50201; "Longlat"; Text[100])
        {
            Caption = 'Longlat';
            DataClassification = ToBeClassified;
        }

    }

}