report 50202 "Print PSI"
{
    DefaultLayout = RDLC;
    RDLCLayout = './Rdlc/PostedSalesInvoiceIT.rdl';
    Caption = 'Posted Sales Invoice IT';
    WordMergeDataItem = "Posted Sales Invoice IT";

    dataset
    {
        dataitem("Posted Sales Invoice IT"; "Sales Invoice Header")
        {
            column(No_; "No.") { }
            column(VAT_Registration_No_; "VAT Registration No.") { }
            column(FindLocationAddress; FindLocationAddress) { }
            column(Bill_to_Name; "Bill-to Name") { }
            column(Bill_to_Address; "Bill-to Address") { }
            column(Ship_to_Name; "Ship-to Name") { }
            column(Ship_to_Address; "Ship-to Address") { }
            column(Posting_Date; FORMAT("Posting Date", 0, '<Day,2>/<Month,2>/<Year4>')) { }
            column(Payment_Terms_Code; "Payment Terms Code") { }
            column(Shipment_Date; FORMAT("Shipment Date", 0, '<Day,2>/<Month,2>/<Year4>')) { }
            column(Shipment_Method_Code; "Shipment Method Code") { }
            column(External_Document_No_; "External Document No.") { }
            column(FindSalesman; FindSalesman) { }
            column(TotalInvoice; TotalInvoice) { }
            column(TotalTax; TotalTax) { }
            column(Total; Total) { }
            column(ConvertNumberToWords; ConvertNumberToWords(TotalInvoice())) { }
            dataitem("Company Information"; "Company Information")
            {
                column(Name; Name) { }
            }
            dataitem("Sales Invoice Line IT"; "Sales Invoice Line")
            {
                DataItemLink = "Document No." = field("No.");
                DataItemLinkReference = "Posted Sales Invoice IT";
                DataItemTableView = where("No." = filter(<> ''));
                column(ItemNo_; "No.") { }
                column(RowNumber; RowNumber) { }
                column(Description; Description) { }
                column(Quantity; Quantity) { }
                column(Unit_of_Measure; "Unit of Measure") { }
                column(Unit_Price; "Unit Price") { }
                column(Line_Discount_Amount; "Line Discount Amount") { }
                column(Line_Amount; "Line Amount") { }
                column(VAT__; "VAT %") { }

                trigger OnAfterGetRecord()
                begin
                    if "No." <> '' then RowNumber := RowNumber + 1;
                end;
            }
        }
    }
    procedure FindSalesman() SalesMan: Text[50];
    begin
        Dimension.Reset();
        Dimension.SetRange("Dimension Set ID", "Posted Sales Invoice IT"."Dimension Set ID");
        Dimension.SetFilter("Dimension Code", 'SALESMAN');
        if Dimension.FindFirst() then begin
            DimensionValue.Reset();
            DimensionValue.SetRange(Code, Dimension."Dimension Value Code");
            if DimensionValue.FindFirst() then SalesMan := DimensionValue.Name;
            exit(SalesMan);
        end;
    end;

    procedure FindLocationAddress() LocationAddress: Text[100]
    begin
        PSIL.Reset();
        PSIL.SetRange("Document No.", "Posted Sales Invoice IT"."No.");
        if PSIL.FindLast() then begin
            if Location.Get(PSIL."Location Code") then begin
                LocationAddress := Location.Address;
                exit(LocationAddress);
            end;
        end;
    end;

    procedure TotalInvoice() TotalInvoice: Decimal;
    begin
        PSIL.Reset();
        PSIL.SetRange("Document No.", "Posted Sales Invoice IT"."No.");
        if PSIL.FindSet() then begin
            repeat
                TotalInvoice := TotalInvoice + PSIL."Amount Including VAT";
            until PSIL.Next() = 0;
        end;
    end;

    procedure Total() Total: Decimal;
    begin
        PSIL.Reset();
        PSIL.SetRange("Document No.", "Posted Sales Invoice IT"."No.");
        if PSIL.FindSet() then begin
            repeat
                Total := Total + PSIL."Amount";
            until PSIL.Next() = 0;
        end;
    end;

    procedure TotalTax() TotalTax: Decimal;
    var
        ITAmount: Decimal;
        ITAmountIncTax: Decimal;
    begin
        PSIL.Reset();
        PSIL.SetRange("Document No.", "Posted Sales Invoice IT"."No.");
        if PSIL.FindSet() then begin
            repeat
                ITAmount := Total();
                ITAmountIncTax := TotalInvoice();
                TotalTax := ITAmountIncTax - ITAmount;
            until PSIL.Next() = 0;
        end;
    end;

    procedure ConvertNumberToWords(Angka: Decimal): Text
    var
        Satuan: array[10] of Text[20];
        Grup: array[5] of Text[20];
        Result: Text;
        TempAngka: Decimal;
        PosisiGrup: Integer;
        Nilai: Integer;
    begin
        Satuan[1] := 'Satu';
        Satuan[2] := 'Dua';
        Satuan[3] := 'Tiga';
        Satuan[4] := 'Empat';
        Satuan[5] := 'Lima';
        Satuan[6] := 'Enam';
        Satuan[7] := 'Tujuh';
        Satuan[8] := 'Delapan';
        Satuan[9] := 'Sembilan';
        Grup[1] := '';
        Grup[2] := 'Ribu';
        Grup[3] := 'Juta';
        Grup[4] := 'Miliar';
        Grup[5] := 'Triliun';
        TempAngka := Angka;
        PosisiGrup := 1;
        while TempAngka > 0 do begin
            Nilai := TempAngka mod 1000;
            if Nilai > 0 then
                Result := ProsesTigaDigit(Nilai, Satuan) + ' ' + Grup[PosisiGrup] + ' ' + Result;

            TempAngka := TempAngka div 1000;
            PosisiGrup += 1;
        end;

        if Result = '' then
            Result := 'Nol';
        while (StrLen(Result) > 0) and (CopyStr(Result, 1, 1) = ' ') do
            Result := CopyStr(Result, 2, StrLen(Result) - 1);
        while (StrLen(Result) > 0) and (CopyStr(Result, StrLen(Result), 1) = ' ') do
            Result := CopyStr(Result, 1, StrLen(Result) - 1);
        Result += ' RUPIAH';
        exit(UpperCase(Result));
    end;

    procedure ProsesTigaDigit(Angka: Integer; Satuan: array[10] of Text[20]): Text
    var
        Ratusan: Integer;
        Puluhan: Integer;
        Sisa: Integer;
        Result: Text;
    begin
        Ratusan := Angka div 100;
        Puluhan := (Angka mod 100) div 10;
        Sisa := Angka mod 10;
        if Ratusan > 0 then begin
            if Ratusan = 1 then
                Result := 'Seratus'
            else
                Result := Satuan[Ratusan] + ' Ratus';
        end;
        if Puluhan = 1 then begin
            case Sisa of
                0:
                    Result += ' Sepuluh';
                1:
                    Result += ' Sebelas';
                else
                    Result += ' ' + Satuan[Sisa] + ' Belas';
            end;
        end else begin
            if Puluhan > 0 then
                Result += ' ' + Satuan[Puluhan] + ' Puluh';
            if Sisa > 0 then
                Result += ' ' + Satuan[Sisa];
        end;

        exit(Result);
    end;

    var
        Location: Record Location;
        PSIL: Record "Sales Invoice Line";
        RowNumber: Integer;
        Dimension: Record "Dimension Set Entry";
        DimensionValue: Record "Dimension Value";
}