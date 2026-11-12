// codeunit 50060 CodAdvoAPI
// {
//     trigger OnRun()
//     begin

//     end;

//     procedure InsertSOTakingOrderHeader
//     (
//         no: Text[100];
//         postingdate: Date;
//         custno: Text[20];
//         principalcode: Text[50];
//         branchcode: Text[50];
//         staffcode: Text[50];
//         dropship: Boolean;
//         location: Text[20]
//     ) ReturnV: Text;
//     var
//         soheader: Record "Sales Header";
//         doctype: enum "Sales Document Type";
//         _NoSeriesRelation: Record "No. Series Relationship";
//         _SalesnReceivableSetup: Record "Sales & Receivables Setup";
//         //_NoSeriesMgt: Codeunit NoSeriesManagement;
//         _NoSeriesMgt: Codeunit "No. Series";
//         _NoSeriesCode: Code[20];
//         PaymentTerms: Record "Payment Terms";
//         SlsLimit: record "Sales TOP and Credit Limit";
//     begin
//         ConvertDocType(doctype, 'Order');

//         soheader.SetRange("Document Type", doctype);
//         soheader.SetRange("Advo Ref No.", no);

//         if soheader.FindFirst() then begin
//             /*soheader.Modify(true);

//             if soheader.Status = soheader.Status::Open then begin
//                 soheader."Posting Date" := postingdate;
//                 soheader."Document Date" := postingdate;
//                 //soheader."Sell-to Customer No." := custno;
//                 soheader.Validate("Sell-to Customer No.", custno);
//                 soheader."Shortcut Dimension 1 Code" := branchcode;
//                 soheader."Shortcut Dimension 2 Code" := principalcode;
//                 soheader."Shortcut Dimension 6" := staffcode;
//                 soheader."Salesperson Code" := staffcode;
//                 soheader."Advo Ref No." := no;
//                 soheader."Advo Dropship" := dropship;
//                 soheader.Modify(true);
//             end;
//             ReturnV := no + ' - Modify Sukses';*/
//             ReturnV := 'Advo No:' + no + ' sudah ada';
//             Error(ReturnV);
//         end else begin
//             //soheader.Init();
//             if _SalesnReceivableSetup.get() then
//                 _NoSeriesCode := _SalesnReceivableSetup."Order Nos.";
//             _NoSeriesRelation.SetRange(Code, _NoSeriesCode);
//             _NoSeriesRelation.SetRange("Global Dimension 1 Code", branchcode);
//             if _NoSeriesRelation.FindFirst() then
//                 _NoSeriesCode := _NoSeriesRelation."Series Code";
//             //_NoSeriesMgt.InitSeries(_NoSeriesCode, soheader."No. Series", soheader."Posting Date", soheader."No.", soheader."No. Series");
//             if soheader."No." = '' then begin
//                 soheader."No. Series" := _NoSeriesCode;
//                 soheader."No." := _NoSeriesMgt.GetNextNo(_NoSeriesCode, soheader."Posting Date", false);
//             end;
//             soheader."Document Type" := doctype;
//             //soheader."Posting Date":= postingdate;
//             soheader."Document Date" := postingdate;
//             soheader."Bill-to Customer No." := custno;
//             soheader."Sell-to Customer No." := custno;
//             soheader.Validate("Sell-to Customer No.", custno);
//             SlsLimit.Reset();
//             SlsLimit.SetRange("Customer No.", soheader."Sell-to Customer No.");
//             SlsLimit.SetRange(Branch, principalcode);
//             if SlsLimit.FindSet() then begin
//                 soheader."Payment Terms Code" := SlsLimit."Payment Term Code";
//                 PaymentTerms.Get(soheader."Payment Terms Code");
//                 soheader."Due Date" := CalcDate(PaymentTerms."Due Date Calculation", soheader."Document Date");
//             end;
//             soheader."Shortcut Dimension 1 Code" := branchcode;
//             soheader."Shortcut Dimension 2 Code" := principalcode;
//             soheader."Shortcut Dimension 6" := staffcode;
//             soheader."Salesperson Code" := staffcode;
//             soheader."Advo Ref No." := no;
//             soheader."Advo Dropship" := dropship;
//             soheader.Insert(true);
//             //soheader.Validate("Shortcut Dimension 1 Code", principalcode);
//             soheader.Validate("Shortcut Dimension 2 Code", principalcode);
//             soheader.Validate("Shortcut Dimension 6", staffcode);
//             soheader.Validate("Posting Date", postingdate);
//             if location <> '' then
//                 soheader."Location Code" := location;
//             soheader.Modify();

//             ReturnV := No + '- Insert Sukses';
//         end;
//     end;

//     procedure InsertSOTakingOrderLine
//    (
//        docno: Text[100];
//        tipe: Text[50];
//        itemcode: Text[50];
//        lLineNo: Integer;
//        unitofmeasurecode: Text[50];
//        qty: Integer;
//        unitprice: Decimal;
//        disc: Decimal;
//        discamount: Decimal
//    ) ReturnV: Text;
//     var
//         soline: Record "Sales Line";
//         soheader: Record "Sales Header";
//         //lLineNo: Integer;
//         type: enum "Sales Line Type";
//         lItem, lItem2 : Record Item;
//         nosoheader: Text[50];
//         rlocation: Record Location;
//         doctype: enum "Sales Document Type";
//         gResult: Decimal;
//         gCu_CalcSalesDisc: Codeunit "Calc. Sales Discount Mgt";
//         rVatPos: Record "VAT Posting Setup";
//         itemgroup: code[20];
//         rDimVal: Record "Default Dimension";
//         GlSetup: record "General Ledger Setup";
//         DimMgt: Codeunit DimensionManagement;
//         itemvar: Record "Item Variant";
//         UOMMgt: Codeunit "Unit of Measure Management";
//         ReleaseSalesDoc: Codeunit "Release Sales Document";
//         _locCode: Text;
//     begin
//         ConvertType(type, 'Item');
//         ConvertDocType(doctype, 'Order');

//         GlSetup.Get();

//         soheader.SetRange("Document Type", doctype);
//         soheader.SetRange("Advo Ref No.", docno);

//         if soheader.FindFirst() then begin
//             nosoheader := soheader."No.";

//             lItem2.Reset();
//             lItem2.SetRange("No.", itemcode);
//             lItem2.SetRange("Global Dimension 2 Code", soheader."Shortcut Dimension 2 Code");
//             if lItem2.Findset() then begin
//                 soline.Reset();
//                 soline.SetCurrentKey("Document No.", "Line No.");
//                 soline.SetRange("Document No.", nosoheader);
//                 soline.SetRange("No.", itemcode);

//                 if soline.FindFirst() then begin
//                     /*soline.Modify(true);
//                     ReturnV := 'Modify Sukses';
//                     soline.Type := Type;
//                     soline."No." := itemcode;
//                     //soline.Validate("No.", itemcode);
//                     //soline.Validate("VAT Bus. Posting Group", soheader."VAT Bus. Posting Group");
//                     soline."VAT Bus. Posting Group" := soheader."VAT Bus. Posting Group";
//                     lItem.Reset();
//                     lItem.SetRange("No.", itemcode);
//                     if lItem.FindFirst() then begin
//                         soline.Description := lItem.Description;
//                         soline."Description 2" := lItem."Description 2";
//                         soline."Gen. Prod. Posting Group" := lItem."Gen. Prod. Posting Group";
//                         soline."VAT Prod. Posting Group" := lItem."VAT Prod. Posting Group";
//                         rDimVal.Reset();
//                         rDimVal.SetRange("Table ID", 27);
//                         rDimVal.SetRange("Dimension Code", GlSetup."Shortcut Dimension 3 Code");
//                         rDimVal.SetRange("No.", itemcode);
//                         if rDimVal.FindSet() then
//                             itemgroup := rDimVal."Dimension Value Code";
//                         soline."Posting Group" := lItem."Inventory Posting Group";
//                     end;
//                     soline."Unit of Measure Code" := unitofmeasurecode;
//                     rlocation.Reset();
//                     rlocation.SetRange("Shortcut Dimension 6 Code", soheader."Shortcut Dimension 6");
//                     rlocation.SetRange(Type, rlocation.Type::"Gudang Utama");
//                     if rlocation.FindFirst() then
//                         soline."Location Code" := rlocation.Code;
//                     rVatPos.Reset();
//                     rVatPos.SetRange("VAT Bus. Posting Group", soheader."VAT Bus. Posting Group");
//                     rVatPos.SetRange("VAT Prod. Posting Group", lItem."VAT Prod. Posting Group");
//                     if rVatPos.FindFirst() then
//                         soline."VAT %" := rVatPos."VAT %";
//                     soline.Amount := unitprice - (unitprice * rVatPos."VAT %" / 100);
//                     soline."Unit Price" := unitprice;
//                     soline."Amount Including VAT" := unitprice;
//                     soline.Quantity := qty;
//                     // soline.Validate("Unit Price", unitprice);
//                     //soline.Validate("Amount Including VAT", unitprice);
//                     soline.Validate(Quantity, qty);
//                     soline."Disc. Lv. 1 (%)" := disc;
//                     soline."Disc. Pembulatan (Amt)" := discamount;
//                     gResult := 0;
//                     gResult := gCu_CalcSalesDisc.CalcSalesDisc(soline, 0, disc, 0, 0, discamount);
//                     soline.Validate("Disc. Lv. 1 (%)", gResult);
//                     soline."Disc. Default" := 0;
//                     //soline."Line Discount %" := gResult;
//                     soline."Sell-to Customer No." := soheader."Sell-to Customer No.";
//                     //soline.Validate("Gen. Bus. Posting Group", soheader."Gen. Bus. Posting Group");
//                     //soline.Validate("VAT Bus. Posting Group", soheader."VAT Bus. Posting Group");
//                     soline."Gen. Bus. Posting Group" := soheader."Gen. Bus. Posting Group";
//                     soline."VAT Bus. Posting Group" := soheader."VAT Bus. Posting Group";
//                     soline."Shortcut Dimension 1 Code" := soheader."Shortcut Dimension 1 Code";
//                     soline."Shortcut Dimension 2 Code" := soheader."Shortcut Dimension 2 Code";

//                     DimMgt.ValidateShortcutDimValues(1, soheader."Shortcut Dimension 1 Code", soheader."Dimension Set ID");
//                     DimMgt.ValidateShortcutDimValues(2, soheader."Shortcut Dimension 2 Code", soheader."Dimension Set ID");
//                     DimMgt.ValidateShortcutDimValues(3, itemgroup, soheader."Dimension Set ID");
//                     DimMgt.ValidateShortcutDimValues(6, soheader."Shortcut Dimension 6", soheader."Dimension Set ID");
//                     soheader.Status := soheader.Status::Released;
//                     soheader.Modify();*/
//                     ReturnV := 'Advo No:' + soheader."No." + ' sudah ada';
//                     Error(ReturnV);
//                 end else begin
//                     soline.Init();
//                     soline."Document Type" := soheader."Document Type";
//                     soline."Document No." := soheader."No.";
//                     soline."Line No." := lLineNo;
//                     soline.Type := Type;
//                     soline.Insert();
//                     //soline."No." := itemcode;
//                     soline.Validate("No.", itemcode);
//                     //soline.Validate("VAT Bus. Posting Group", soheader."VAT Bus. Posting Group");
//                     soline."VAT Bus. Posting Group" := soheader."VAT Bus. Posting Group";
//                     lItem.Reset();
//                     lItem.SetRange("No.", itemcode);
//                     if lItem.FindFirst() then begin
//                         soline.Description := lItem.Description;
//                         soline."Description 2" := lItem."Description 2";
//                         soline."Gen. Prod. Posting Group" := lItem."Gen. Prod. Posting Group";
//                         soline."VAT Prod. Posting Group" := lItem."VAT Prod. Posting Group";
//                         rDimVal.Reset();
//                         rDimVal.SetRange("Table ID", 27);
//                         rDimVal.SetRange("Dimension Code", GlSetup."Shortcut Dimension 3 Code");
//                         rDimVal.SetRange("No.", itemcode);
//                         if rDimVal.FindSet() then
//                             itemgroup := rDimVal."Dimension Value Code";
//                         soline."Posting Group" := lItem."Inventory Posting Group";
//                         itemvar.Reset();
//                         itemvar.SetRange("Item No.", lItem."No.");
//                         if itemvar.FindSet() then
//                             soline."Variant Code" := itemvar.Code;
//                     end;
//                     soline."Unit of Measure Code" := unitofmeasurecode;
//                     if soheader."Location Code" <> '' then
//                         soline."Location Code" := soheader."Location Code"
//                     else
//                         if soheader."Advo Dropship" = true then begin
//                             rlocation.Reset();
//                             rlocation.SetRange("Global Dimension 1 Code", soheader."Shortcut Dimension 1 Code");
//                             rlocation.SetRange(Type, rlocation.Type::"Gudang Utama");
//                             if rlocation.FindSet() then begin
//                                 repeat
//                                     _locCode := rlocation.Code;
//                                     if _locCode.Contains('WH') then
//                                         soline."Location Code" := rlocation.Code;
//                                 until rlocation.Next = 0;
//                             end;
//                         end;

//                     rVatPos.Reset();
//                     rVatPos.SetRange("VAT Bus. Posting Group", soheader."VAT Bus. Posting Group");
//                     rVatPos.SetRange("VAT Prod. Posting Group", lItem."VAT Prod. Posting Group");
//                     if rVatPos.FindFirst() then
//                         soline."VAT %" := rVatPos."VAT %";
//                     soline."Drop Shipment" := soheader."Advo Dropship";
//                     //soline.Amount := unitprice - (unitprice * rVatPos."VAT %" / 100);
//                     //soline."Unit Price" := unitprice;
//                     //soline."Amount Including VAT" := unitprice;
//                     soline.Quantity := qty;
//                     soline."Qty. to Ship" := qty;
//                     //soline.Validate("Amount Including VAT", unitprice);
//                     //soline.Validate(Quantity, qty);
//                     //soline.Validate("Unit Price", unitprice);
//                     soline.Validate(Quantity, qty);
//                     soline.Validate("Unit Price", unitprice);
//                     soline.Validate("Qty. to Ship", qty);
//                     soline."Disc. Lv. 1 (%)" := disc;
//                     soline."Disc. Pembulatan (Amt)" := discamount;
//                     gResult := 0;
//                     gResult := gCu_CalcSalesDisc.CalcSalesDisc(soline, 0, disc, 0, 0, discamount);
//                     soline.Validate("Line Discount %", gResult);
//                     soline."Sell-to Customer No." := soheader."Sell-to Customer No.";
//                     soline."Gen. Bus. Posting Group" := soheader."Gen. Bus. Posting Group";
//                     soline."VAT Bus. Posting Group" := soheader."VAT Bus. Posting Group";
//                     //soline."Shortcut Dimension 1 Code" := soheader."Shortcut Dimension 1 Code";
//                     //soline."Shortcut Dimension 2 Code" := soheader."Shortcut Dimension 2 Code";
//                     //soline."Qty. to Invoice" := qty;
//                     //soline."Qty. to Ship (Base)" :=
//                     //    UOMMgt.CalcBaseQty(soline."No.", soline."Variant Code", soline."Unit of Measure Code", soline."Qty. to Ship", soline."Qty. per Unit of Measure");
//                     //soline."Qty. to Invoice (Base)" :=
//                     //    UOMMgt.CalcBaseQty(soline."No.", soline."Variant Code", soline."Unit of Measure Code", soline."Qty. to Invoice", soline."Qty. per Unit of Measure");
//                     //soline.Modify();
//                     //soline.Insert(true);
//                     soline.Modify();

//                     ReturnV := 'Insert Sukses';
//                 end;
//                 DimMgt.ValidateShortcutDimValues(1, soheader."Shortcut Dimension 1 Code", soheader."Dimension Set ID");
//                 DimMgt.ValidateShortcutDimValues(2, soheader."Shortcut Dimension 2 Code", soheader."Dimension Set ID");
//                 DimMgt.ValidateShortcutDimValues(3, itemgroup, soheader."Dimension Set ID");
//                 DimMgt.ValidateShortcutDimValues(6, soheader."Shortcut Dimension 6", soheader."Dimension Set ID");
//                 soheader.Modify();
//                 ReleaseSalesDoc.PerformManualRelease(soheader);
//             end
//             else begin
//                 //soheader.Status := soheader.Status::Released;
//                 //soheader.Modify();
//                 //if soheader.get(doctype, nosoheader) then
//                 //    soheader.Delete();
//                 Error('Invalid Pricipal Code');
//             end;
//         end;
//     end;

//     procedure ConvertDocType
//     (
//         var doc_type: enum "Sales Document Type";
//             doc_type_so: Text[50]
//     )
//     begin
//         if doc_type_so = 'Quote' then
//             doc_type := doc_type::Quote else
//             if doc_type_so = 'Order' then
//                 doc_type := doc_type::Order else
//                 if doc_type_so = 'Invoice' then
//                     doc_type := doc_type::Invoice else
//                     if doc_type_so = 'Credit Memo' then
//                         doc_type := doc_type::"Credit Memo" else
//                         if doc_type_so = 'Blanket Order' then
//                             doc_type := doc_type::"Blanket Order" else
//                             if doc_type_so = 'Return Order' then
//                                 doc_type := doc_type::"Return Order";
//     end;



//     procedure ConvertType
//     (
//         var tipe: enum "Sales Line Type";
//             tipeitem: Text[50]
//     )
//     begin
//         if tipeitem = '' then
//             tipe := tipe::" " else
//             if tipeitem = 'G/L Account' then
//                 tipe := tipe::"G/L Account" else
//                 if tipeitem = 'Item' then
//                     tipe := tipe::Item else
//                     if tipeitem = 'Resource' then
//                         tipe := tipe::Resource else
//                         if tipeitem = 'Fixed Asset' then
//                             tipe := tipe::"Fixed Asset" else
//                             if tipeitem = 'Charge (Item)' then
//                                 tipe := tipe::"Charge (Item)";
//     end;


//     procedure InsertSITakingOrderHeader
//     (
//         no: Text[100];
//         postingdate: Date;
//         duedate: date;
//         custno: Text[20];
//         principalcode: Text[50];
//         branchcode: Text[50];
//         staffcode: Text[50];
//         linecount: decimal
//     ) ReturnV: Text;
//     var
//         siheader: Record "Sales Header";
//         doctype: enum "Sales Document Type";
//         _NoSeriesRelation: Record "No. Series Relationship";
//         _SalesnReceivableSetup: Record "Sales & Receivables Setup";
//         //_NoSeriesMgt: Codeunit NoSeriesManagement;
//         _NoSeriesMgt: Codeunit "No. Series";
//         _NoSeriesCode: Code[20];
//         PaymentTerms: Record "Payment Terms";
//         SlsLimit: record "Sales TOP and Credit Limit";
//     begin
//         ConvertDocType(doctype, 'Invoice');

//         siheader.SetRange("Document Type", doctype);
//         siheader.SetRange("Advo Ref No. SI", no);

//         if siheader.FindFirst() then begin
//             /*siheader.Modify(true);

//             if siheader.Status = siheader.Status::Open then begin
//                 siheader."Posting Date" := postingdate;
//                 siheader."Document Date" := postingdate;
//                 //siheader."Sell-to Customer No." := custno;
//                 siheader.Validate("Sell-to Customer No.", custno);
//                 siheader."Shortcut Dimension 1 Code" := branchcode;
//                 siheader."Shortcut Dimension 2 Code" := principalcode;
//                 siheader."Shortcut Dimension 6" := staffcode;
//                 siheader."Salesperson Code" := staffcode;
//                 siheader."Advo Ref No. SI" := no;
//                 //siheader.Validate("Due Date", duedate);
//                 siheader."Due Date" := duedate;
//                 siheader.Modify(true);
//             end;
//             ReturnV := no + ' - Modify Sukses';*/
//             ReturnV := 'Advo No:' + no + ' sudah ada';
//             Error(ReturnV);
//         end else begin
//             //siheader.Init();

//             if _SalesnReceivableSetup.get() then
//                 _NoSeriesCode := _SalesnReceivableSetup."Invoice Nos.";
//             _NoSeriesRelation.SetRange(Code, _NoSeriesCode);
//             _NoSeriesRelation.SetRange("Global Dimension 1 Code", branchcode);
//             if _NoSeriesRelation.FindFirst() then
//                 _NoSeriesCode := _NoSeriesRelation."Series Code";
//             //_NoSeriesMgt.InitSeries(_NoSeriesCode, siheader."No. Series", siheader."Posting Date", siheader."No.", siheader."No. Series");
//             if siheader."No." = '' then begin
//                 siheader."No. Series" := _NoSeriesCode;
//                 siheader."No." := _NoSeriesMgt.GetNextNo(_NoSeriesCode, siheader."Posting Date", false);
//             end;


//             siheader."Document Type" := doctype;
//             //siheader."Posting Date":=postingdate
//             //siheader."Document Date":= postingdate;

//             //siheader."Sell-to Customer No." := custno;
//             siheader.Validate("Sell-to Customer No.", custno);
//             SlsLimit.Reset();
//             SlsLimit.SetRange("Customer No.", siheader."Sell-to Customer No.");
//             if SlsLimit.FindSet() then begin
//                 siheader."Payment Terms Code" := SlsLimit."Payment Term Code";
//                 PaymentTerms.Get(siheader."Payment Terms Code");
//                 siheader."Due Date" := CalcDate(PaymentTerms."Due Date Calculation", siheader."Document Date");
//             end;
//             siheader."Shortcut Dimension 1 Code" := branchcode;
//             siheader."Shortcut Dimension 2 Code" := principalcode;
//             siheader."Shortcut Dimension 6" := staffcode;
//             siheader."Salesperson Code" := staffcode;
//             siheader."Advo Ref No. SI" := no;
//             //siheader."Due Date" := duedate;
//             siheader."Advo index SI" := linecount;


//             siheader.Insert(true);
//             siheader.Validate("Shortcut Dimension 2 Code", principalcode);
//             siheader.Validate("Shortcut Dimension 6", staffcode);
//             siheader.Validate("Posting Date", postingdate);
//             siheader.Modify();
//             ReturnV := No + '- Insert Sukses';
//         end;
//     end;

//     procedure InsertSITakingOrderLine
//    (
//        docno: Text[100];
//        tipe: Text[50];
//        itemcode: Text[50];
//        lLineNo: Integer;
//        unitofmeasurecode: Text[50];
//        qty: Integer;
//        unitprice: Decimal;
//        disc: Decimal;
//        discamount: Decimal
//    ) ReturnV: Text;
//     var
//         siline: Record "Sales Line";
//         siheader: Record "Sales Header";
//         //lLineNo: Integer;
//         type: enum "Sales Line Type";
//         lItem: Record Item;
//         litem2: Record Item;
//         nosoheader: Text[50];
//         rlocation: Record Location;
//         doctype: enum "Sales Document Type";
//         gResult: Decimal;
//         gCu_CalcSalesDisc: Codeunit "Calc. Sales Discount Mgt";
//         rVatPos: Record "VAT Posting Setup";
//         itemgroup: code[20];
//         rDimVal: Record "Default Dimension";
//         GlSetup: record "General Ledger Setup";
//         DimMgt: Codeunit DimensionManagement;
//         linecount: Decimal;
//         itemvar: Record "Item Variant";
//     begin
//         ConvertType(type, 'Item');
//         ConvertDocType(doctype, 'Invoice');

//         GlSetup.Get();

//         siheader.SetRange("Document Type", doctype);
//         siheader.SetRange("Advo Ref No. SI", docno);

//         if siheader.FindFirst() then begin
//             nosoheader := siheader."No.";

//             lItem2.Reset();
//             lItem2.SetRange("No.", itemcode);
//             lItem2.SetRange("Global Dimension 2 Code", siheader."Shortcut Dimension 2 Code");
//             if lItem2.Findset() then begin
//                 siline.Reset();
//                 siline.SetCurrentKey("Document No.", "Line No.");
//                 siline.SetRange("Document No.", nosoheader);
//                 siline.SetRange("No.", itemcode);

//                 if siline.FindFirst() then begin
//                     /*siline.Modify(true);
//                     ReturnV := 'Modify Sukses';
//                     siline.Validate(Type, type);
//                     siline.Validate("No.", itemcode);
//                     siline.Validate("VAT Bus. Posting Group", siheader."VAT Bus. Posting Group");
//                     lItem.Reset();
//                     lItem.SetRange("No.", itemcode);
//                     if lItem.FindFirst() then begin
//                         siline.Description := lItem.Description;
//                         siline."Description 2" := lItem."Description 2";
//                         siline."Gen. Prod. Posting Group" := lItem."Gen. Prod. Posting Group";
//                         siline."VAT Prod. Posting Group" := lItem."VAT Prod. Posting Group";
//                         itemgroup := lItem."Item Category Code";
//                         rDimVal.Reset();
//                         rDimVal.SetRange("Table ID", 27);
//                         rDimVal.SetRange("Dimension Code", GlSetup."Shortcut Dimension 3 Code");
//                         rDimVal.SetRange("No.", itemcode);
//                         if rDimVal.FindSet() then
//                             itemgroup := rDimVal."Dimension Value Code";
//                     end;
//                     siline."Unit of Measure Code" := unitofmeasurecode;
//                     rlocation.Reset();
//                     rlocation.SetRange("Shortcut Dimension 6 Code", siheader."Shortcut Dimension 6");
//                     rlocation.SetRange(Type, rlocation.Type::"Gudang Kanvas");
//                     if rlocation.FindFirst() then
//                         siline."Location Code" := rlocation.Code;
//                     rVatPos.Reset();
//                     rVatPos.SetRange("VAT Bus. Posting Group", siheader."VAT Bus. Posting Group");
//                     rVatPos.SetRange("VAT Prod. Posting Group", lItem."VAT Prod. Posting Group");
//                     if rVatPos.FindFirst() then
//                         siline."VAT %" := rVatPos."VAT %";
//                     siline.Amount := unitprice - (unitprice * rVatPos."VAT %" / 100);
//                     siline.Validate("Unit Price", unitprice);
//                     siline.Validate("Amount Including VAT", unitprice);
//                     siline.Validate(Quantity, qty);
//                     siline."Disc. Lv. 1 (%)" := disc;
//                     siline."Disc. Pembulatan (Amt)" := discamount;
//                     gResult := 0;
//                     gResult := gCu_CalcSalesDisc.CalcSalesDisc(siline, 0, disc, 0, 0, discamount);
//                     siline.Validate("Disc. Lv. 1 (%)", gResult);
//                     siline."Disc. Default" := 0;
//                     siline."Sell-to Customer No." := siheader."Sell-to Customer No.";
//                     siline.Validate("Gen. Bus. Posting Group", siheader."Gen. Bus. Posting Group");
//                     siline.Validate("VAT Bus. Posting Group", siheader."VAT Bus. Posting Group");
//                     DimMgt.ValidateShortcutDimValues(1, siheader."Shortcut Dimension 1 Code", siheader."Dimension Set ID");
//                     DimMgt.ValidateShortcutDimValues(2, siheader."Shortcut Dimension 2 Code", siheader."Dimension Set ID");
//                     DimMgt.ValidateShortcutDimValues(3, itemgroup, siheader."Dimension Set ID");
//                     DimMgt.ValidateShortcutDimValues(6, siheader."Shortcut Dimension 6", siheader."Dimension Set ID");
//                     siheader.Status := siheader.Status::Released;
//                     siheader.Status := siheader.Status::Released;
//                     siheader.Modify();*/
//                     ReturnV := 'Advo No:' + siheader."No." + ' sudah ada';
//                     Error(ReturnV);
//                     ;
//                 end else begin
//                     siline.Init();
//                     siline."Document Type" := siheader."Document Type";
//                     siline."Document No." := siheader."No.";
//                     siline."Line No." := lLineNo;
//                     siline.Type := Type;
//                     siline.Insert();
//                     siline.Validate("No.", itemcode);
//                     //siline."No." := itemcode;
//                     //soline.Validate("VAT Bus. Posting Group", soheader."VAT Bus. Posting Group");
//                     siline."VAT Bus. Posting Group" := siheader."VAT Bus. Posting Group";
//                     lItem.Reset();
//                     lItem.SetRange("No.", itemcode);
//                     if lItem.FindFirst() then begin
//                         siline.Description := lItem.Description;
//                         siline."Description 2" := lItem."Description 2";
//                         siline."Gen. Prod. Posting Group" := lItem."Gen. Prod. Posting Group";
//                         siline."VAT Prod. Posting Group" := lItem."VAT Prod. Posting Group";
//                         rDimVal.Reset();
//                         rDimVal.SetRange("Table ID", 27);
//                         rDimVal.SetRange("Dimension Code", GlSetup."Shortcut Dimension 3 Code");
//                         rDimVal.SetRange("No.", itemcode);
//                         if rDimVal.FindSet() then
//                             itemgroup := rDimVal."Dimension Value Code";
//                         itemvar.Reset();
//                         itemvar.SetRange("Item No.", lItem."No.");
//                         if itemvar.FindSet() then
//                             siline."Variant Code" := itemvar.Code;
//                     end;
//                     siline."Unit of Measure Code" := unitofmeasurecode;
//                     rlocation.Reset();
//                     rlocation.SetRange("Shortcut Dimension 6 Code", siheader."Shortcut Dimension 6");
//                     rlocation.SetRange(Type, rlocation.Type::"Gudang Kanvas");
//                     if rlocation.FindFirst() then
//                         siline."Location Code" := rlocation.Code;
//                     rVatPos.Reset();
//                     rVatPos.SetRange("VAT Bus. Posting Group", siheader."VAT Bus. Posting Group");
//                     rVatPos.SetRange("VAT Prod. Posting Group", lItem."VAT Prod. Posting Group");
//                     if rVatPos.FindFirst() then
//                         siline."VAT %" := rVatPos."VAT %";
//                     //siline.Amount := unitprice - (unitprice * rVatPos."VAT %" / 100);
//                     //siline."Unit Price" := unitprice;
//                     //siline."Amount Including VAT" := unitprice;
//                     //siline.Quantity := qty;
//                     //siline.Validate("Amount Including VAT", unitprice);
//                     siline.Quantity := qty;
//                     siline."Qty. to Ship" := qty;
//                     siline.Validate(Quantity, qty);
//                     siline.Validate("Unit Price", unitprice);
//                     siline.Validate("Qty. to Ship", qty);
//                     siline."Disc. Lv. 1 (%)" := disc;
//                     siline."Disc. Pembulatan (Amt)" := discamount;
//                     gResult := 0;
//                     gResult := gCu_CalcSalesDisc.CalcSalesDisc(siline, 0, disc, 0, 0, discamount);
//                     siline.Validate("Line Discount %", gResult);
//                     //soline."Line Discount %" := gResult;
//                     siline."Sell-to Customer No." := siheader."Sell-to Customer No.";
//                     //soline.Validate("Gen. Bus. Posting Group", soheader."Gen. Bus. Posting Group");
//                     //soline.Validate("VAT Bus. Posting Group", soheader."VAT Bus. Posting Group");
//                     siline."Gen. Bus. Posting Group" := siheader."Gen. Bus. Posting Group";
//                     siline."VAT Bus. Posting Group" := siheader."VAT Bus. Posting Group";
//                     // siline."Shortcut Dimension 1 Code" := siheader."Shortcut Dimension 1 Code";
//                     // siline."Shortcut Dimension 2 Code" := siheader."Shortcut Dimension 2 Code";
//                     siline.Modify();

//                     DimMgt.ValidateShortcutDimValues(1, siheader."Shortcut Dimension 1 Code", siheader."Dimension Set ID");
//                     DimMgt.ValidateShortcutDimValues(2, siheader."Shortcut Dimension 2 Code", siheader."Dimension Set ID");
//                     DimMgt.ValidateShortcutDimValues(3, itemgroup, siheader."Dimension Set ID");
//                     DimMgt.ValidateShortcutDimValues(6, siheader."Shortcut Dimension 6", siheader."Dimension Set ID");
//                     siheader.Status := siheader.Status::Released;
//                     siheader."Advo LineCount" := siheader."Advo LineCount" + 1;
//                     siheader.Modify();

//                     /*if siheader."Document Type" = siheader."Document Type"::Invoice then begin
//                         if (siheader."Advo Ref No. SI" <> '') and (siheader.Status = siheader.Status::Released) then begin
//                             if siheader."Advo LineCount" = siheader."Advo index SI" then
//                                 Codeunit.Run(Codeunit::"Sales-Post (Yes/No)", siheader);
//                         end;
//                     end;*/
//                     ReturnV := 'Insert Sukses';
//                 end;
//             end
//             else begin
//                 //siheader.Status := siheader.Status::Released;
//                 //siheader.Modify();
//                 Error('Invalid Pricipal Code');
//             end;
//         end;
//     end;

//     procedure InsertPayment
//     (
//       branchcode: Text[50];
//       paymentno: Text[100];
//       postingdate: Date;
//       customercode: Text[50];
//       sino: Text[100];
//       amount: Decimal;
//       accounttype: Text[50];
//       accountno: Text[50]
//     ) ReturnValue: Text;
//     var
//         _PL: record PaymentLineAdvo;
//     begin
//         // if CheckNull(branchcode, paymentno, customercode, sino, accounttype, accountno) then begin
//         if CheckAdvoPayment(paymentno) then begin
//             if not (CheckSINO(sino)) then begin
//                 _PL.Init();
//                 _PL."Payment No." := paymentno;
//                 _PL."Posting Date" := postingdate;
//                 _PL."Branch Code" := branchcode;
//                 _PL."Customer Code" := customercode;
//                 _PL."SI No." := sino;
//                 _PL.Amount := amount;
//                 _PL."Account Type" := accounttype;
//                 _PL."Account No." := accountno;
//                 _PL.Status := _PL.Status::Open;
//                 _PL.Insert(true);
//                 ReturnValue := paymentno + ' - Insert Sukses';
//             end else
//                 Error('No. Invoice tidak ditemukan. Insert Gagal');
//         end
//         else
//             Error('Advo Payment No. :' + paymentno + ' sudah ada');
//         //end else
//         //    Error('Data Payment belum lengkap.Pastikan semua field sudah terisi');

//     end;

//     procedure ConvertAccounttype
//     (
//         var Acctype: enum "Gen. Journal Account Type";
//             acctype2: Text[50]
//     )
//     begin
//         if acctype2 = 'G/L Account' then
//             Acctype := Acctype::"G/L Account" else
//             if acctype2 = 'Customer' then
//                 Acctype := Acctype::Customer else
//                 if acctype2 = 'Vendor' then
//                     Acctype := Acctype::Vendor else
//                     if acctype2 = 'Pending Prepayment' then
//                         Acctype := Acctype::"Bank Account" else
//                         if acctype2 = 'Fixed Asset' then
//                             Acctype := Acctype::"Fixed Asset" else
//                             if acctype2 = 'IC Partner' then
//                                 Acctype := Acctype::"IC Partner" else
//                                 if acctype2 = 'Employee' then
//                                     Acctype := Acctype::Employee;
//     end;

//     procedure ConvertAppDoc
//     (
//         var appAccType: enum "Gen. Journal Document Type";
//             appdoctype: Text[50]
//     )
//     begin
//         if appdoctype = ' ' then
//             appAccType := appAccType::" "
//         else
//             if appdoctype = 'Payment' then
//                 appAccType := appAccType::Payment
//             else
//                 if appdoctype = 'Invoice' then
//                     appAccType := appAccType::Invoice
//                 else
//                     if appdoctype = 'Credit Memo' then
//                         appAccType := appAccType::"Credit Memo"
//                     else
//                         if appdoctype = 'Finance Charge Memo' then
//                             appAccType := appAccType::"Finance Charge Memo"
//                         else
//                             if appdoctype = 'Reminder' then
//                                 appAccType := appAccType::Reminder
//                             else
//                                 if appdoctype = 'Refund' then
//                                     appAccType := appAccType::Refund;

//     end;

//     procedure DeleteTakingOrder(var noadvo: Text[50]; jns: Text[50]) returnValue: Text[100];
//     var
//         rSOHeader: Record SOTakingOrderheader;
//         rSOLine: Record SOTakingOrderLine;
//         rSIHeader: Record SITakingOrderheader;
//         rSILine: Record SITakingOrderLine;
//     begin
//         if jns = 'Order' then begin
//             rSOHeader.Reset();
//             rSOHeader.SetRange("No.", noadvo);
//             if rSOHeader.FindFirst() then begin
//                 //rSOLine.Reset();
//                 //rSOLine.SetRange("Document No.", noadvo);
//                 //if rSOLine.FindSet() then
//                 //    rSOLine.DeleteALL();
//                 rSOHeader.Delete();
//                 returnvalue := 'Delete sukses'
//             end else
//                 returnvalue := noadvo + ' tidak ditemukan di table BC';
//         end;
//         if jns = 'Invoice' then begin
//             rSIHeader.Reset();
//             rSIHeader.SetRange("No.", noadvo);
//             if rSIHeader.FindFirst() then begin
//                 //rSILine.Reset();
//                 //rSILine.SetRange("Document No.", noadvo);
//                 //if rSILine.FindSet() then
//                 //    rSILine.DeleteAll();
//                 rSIHeader.Delete();
//                 returnvalue := 'Delete sukses'
//             end else
//                 returnvalue := noadvo + ' tidak ditemukan di table BC';
//         end;
//     end;

//     procedure PostSI(advono: Text[20]; countso: decimal) returnValue: decimal;//Text[50];
//     var
//         rSITOLine: record SITakingOrderLine;
//         rSIToHeader: Record SITakingOrderheader;
//         countline: decimal;
//     begin
//         countline := 0;
//         rSIToHeader.Reset();
//         rSIToHeader.SetRange("No.", advono);
//         if rSIToHeader.FindSet() then begin
//             rSITOLine.Reset();
//             rSITOLine.SetRange("Document No.", rSIToHeader."No.");
//             if rSITOLine.FindSet() then begin
//                 repeat
//                     if countline < rSITOLine."Line No." then
//                         countline := rSITOLine."Line No.";
//                 until rSITOLine.Next = 0;
//             end;
//         end;
//         returnValue := countline + 10000
//     end;

//     procedure CheckAdvoPayment(Advono: Text[500]): Boolean
//     var
//         _PL: record PaymentLineAdvo;
//         _GJL: Record "Gen. Journal Line";
//         _CLE: Record "Cust. Ledger Entry";
//         _stat: Boolean;
//     begin
//         _stat := true;
//         _PL.Reset();
//         _PL.SetRange("Payment No.", Advono);
//         if _pl.FindSet() then
//             _stat := false;

//         if _stat then begin
//             _GJL.Reset();
//             _GJL.SetRange("Advo Ref No. Payment", Advono);
//             if _GJL.FindSet() then
//                 _stat := false;
//         end;

//         if _stat then begin
//             _CLE.Reset();
//             _CLE.SetRange("Advo Ref No. Payment", Advono);
//             if _CLE.FindSet() then
//                 _stat := false;
//         end;

//         exit(_stat);
//     end;

//     procedure CheckSINO(sino: Text[500]): Boolean
//     var
//         _CLE: Record "Cust. Ledger Entry";
//         _stat: Boolean;
//     begin
//         _stat := True;

//         _CLE.Reset();
//         _CLE.SetRange("Advo Ref No. SI", sino);
//         _CLE.Setfilter("Remaining Amount", '<>0');
//         if _CLE.FindSet() then
//             _stat := False;

//         if _stat then begin
//             _CLE.Reset();
//             _CLE.SetRange("Advo Ref No.", sino);
//             _CLE.Setfilter("Remaining Amount", '<>0');
//             if _CLE.FindSet() then
//                 _stat := False;
//         end;

//         if _stat then begin
//             _CLE.Reset();
//             _CLE.SetRange("Document No.", sino);
//             _CLE.Setfilter("Remaining Amount", '<>0');
//             if _CLE.FindSet() then
//                 _stat := False;
//         end;

//         exit(_stat);
//     end;

//     procedure GetDataSI(sino: text; var invbc: text; var dim2: text; var dim3: Text; var doctype: Text; var postdate: Date)
//     var
//         _CLE: Record "Cust. Ledger Entry";
//         _stat: Boolean;
//     begin
//         _stat := True;

//         _CLE.Reset();
//         _CLE.SetRange("Advo Ref No. SI", sino);
//         //_CLE.Setfilter("Remaining Amount", '<>0');
//         _CLE.SetRange("Document Type", _CLE."Document Type"::Invoice);
//         if _CLE.FindFirst() then begin
//             _stat := False;
//             invbc := _CLE."Document No.";
//             dim2 := _CLE."Global Dimension 2 Code";
//             dim3 := _CLE."Shortcut Dimension 3 Code";
//             doctype := Format(_CLE."Document Type");
//             postdate := _CLE."Posting Date";
//         end;

//         if _stat then begin
//             _CLE.Reset();
//             _CLE.SetRange("Advo Ref No.", sino);
//             //_CLE.Setfilter("Remaining Amount", '<>0');
//             _CLE.SetRange("Document Type", _CLE."Document Type"::Invoice);
//             if _CLE.FindFirst() then begin
//                 _stat := False;
//                 invbc := _CLE."Document No.";
//                 dim2 := _CLE."Global Dimension 2 Code";
//                 dim3 := _CLE."Shortcut Dimension 3 Code";
//                 doctype := Format(_CLE."Document Type");
//                 postdate := _CLE."Posting Date";
//             end;
//         end;

//         if _stat then begin
//             _CLE.Reset();
//             _CLE.SetRange("Document No.", sino);
//             //_CLE.Setfilter("Remaining Amount", '<>0');
//             _CLE.SetRange("Document Type", _CLE."Document Type"::Invoice);
//             if _CLE.FindFirst() then begin
//                 _stat := False;
//                 invbc := _CLE."Document No.";
//                 dim2 := _CLE."Global Dimension 2 Code";
//                 dim3 := _CLE."Shortcut Dimension 3 Code";
//                 doctype := Format(_CLE."Document Type");
//                 postdate := _CLE."Posting Date";
//             end;
//         end;

//     end;

//     /*procedure InsertCashReceipt(
//       branchcode: Text[50];
//       paymentno: Text[100];
//       postingdate: Date;
//       customercode: Text[50];
//       sino: Text[50];
//       amount: Decimal;
//       accounttype: Text[50];
//       accountno: Text[50]): Text;*/
//     procedure InsertCashReceipt(advono: Text): Text;
//     var
//         _GJL: Record "Gen. Journal Line";
//         _xGJL: Record "Gen. Journal Line";
//         _PL: Record PaymentLineAdvo;
//         _GJT: record "Gen. Journal Template";
//         _GenJnlBatch: Record "Gen. Journal Batch";
//         _defdim: Record "Default Dimension";
//         _GLS: Record "General Ledger Setup";
//         //_NoSeriesMgt: Codeunit NoSeriesManagement;
//         NoSeriesMgt: Codeunit "No. Series";
//         appAccType: enum "Gen. Journal Document Type";
//         Acctype: enum "Gen. Journal Account Type";
//         _DimVal: Record "Default Dimension";
//         journaltemplate, batchcode, docno, noinvBC, principalcode, itemgrpcode, DocTypeCLE : Text[100];
//         LineNo: Integer;
//         postdatesi: Date;
//         _NoSeriesBatch: codeunit "No. Series - Batch";
//     begin
//         _GLS.Get();
//         _PL.Reset();
//         _PL.SetRange("Payment No.", advono);
//         if _PL.FindSet() then begin
//             //_GJL.SetRange("Advo Ref No. Payment", paymentno);
//             //if not (_GJL.FindSet()) then begin
//             GetDataSI(_PL."SI No.", noinvBC, principalcode, itemgrpcode, DocTypeCLE, postdatesi);

//             _GJT.Reset();
//             _GJT.SetRange(Type, _GJT.Type::"Cash Receipts");
//             if _GJT.FindFirst() then
//                 journaltemplate := _GJT.Name;

//             _defdim.Reset();
//             _defdim.SetRange("Table ID", 18);
//             _defdim.SetRange("No.", _PL."Customer Code");
//             _defdim.SetRange("Dimension Code", _GLS."Shortcut Dimension 6 Code");
//             if _defdim.FindSet() then
//                 batchcode := _defdim."Dimension Value Code";

//             _GenJnlBatch.Get(journaltemplate, batchcode);

//             _xGJL.Reset();
//             _xGJL.SetRange("Journal Template Name", journaltemplate);
//             _xGJL.SetRange("Journal Batch Name", batchcode);
//             if _xGJL.FindLast() then begin
//                 //_xGJL.IncrementDocumentNo(_GenJnlBatch, _xGJL."Document No.");
//                 _xGJL."Document No." := _NoSeriesBatch.SimulateGetNextNo(_GenJnlBatch."No. Series", _xGJL."Posting Date", _xGJL."Document No.");
//                 docNo := _xGJL."Document No.";
//                 LineNo := _xGJL."Line No." + 10000
//             end
//             else begin
//                 if _GenJnlBatch."No. Series" <> '' then begin
//                     Clear(NoSeriesMgt);
//                     //_GJL."Document No." := NoSeriesMgt.TryGetNextNo(_GenJnlBatch."No. Series", _PL."Posting Date");
//                     _GJL."Document No." := NoSeriesMgt.PeekNextNo(_GenJnlBatch."No. Series");
//                     docNo := _GJL."Document No.";
//                     LineNo := 10000;
//                 end;
//             end;

//             _GJL.Init();
//             _GJL."Journal Template Name" := journaltemplate;
//             _GJL."Journal Batch Name" := batchcode;
//             _GJL."Line No." := LineNo;
//             _GJL."Document No." := docno;
//             _GJL."Posting Date" := _PL."Posting Date";
//             ConvertAppDoc(appAccType, 'Payment');
//             _GJL."Document Type" := appAccType;
//             ConvertAccounttype(Acctype, 'Customer');
//             _GJL.Validate("Account Type", Acctype);
//             _GJL.Validate("Account No.", _Pl."Customer Code");
//             _GJL.Validate(Amount, _Pl.Amount * -1);
//             _GJL."Advo Ref No. Payment" := _PL."Payment No.";
//             _GJL."Shortcut Dimension 2 Code" := principalcode;
//             _GJL.ItemGroupCode := itemgrpcode;
//             if postdatesi <= _pl."Posting Date" then begin
//                 ConvertAppDoc(appAccType, DocTypeCLE);
//                 _GJL."Applies-to Doc. Type" := appAccType;
//                 _GJL.Validate("Applies-to Doc. No.", noinvBC);
//             end else begin
//                 ConvertAppDoc(appAccType, ' ');
//                 _GJL."Applies-to Doc. Type" := appAccType;
//                 _GJL."Applies-to Doc. No." := '';
//             end;

//             _GJL.Insert(false);

//             //Lines 2 : Employee,Customer,GL Account,dll
//             _GJL."Journal Template Name" := journaltemplate;
//             _GJL."Journal Batch Name" := batchcode;
//             _GJL."Line No." := LineNo + 10000;
//             _GJL."Document No." := docNo;
//             _GJL."Posting Date" := _pl."Posting Date";
//             ConvertAppDoc(appAccType, 'Payment');
//             _GJL."Document Type" := appAccType;
//             ConvertAccounttype(Acctype, _pl."Account Type");
//             _GJL.Validate("Account Type", Acctype);
//             if _pl."Account Type" = 'Employee' then begin
//                 _DimVal.Reset();
//                 _DimVal.SetRange("Table ID", 5200);
//                 _DimVal.SetRange("Dimension Code", _GLS."Shortcut Dimension 6 Code");
//                 _DimVal.SetRange("Dimension Value Code", _pl."Account No.");
//                 if _DimVal.FindFirst() then
//                     _GJL.Validate("Account No.", _DimVal."No.");
//             end else
//                 _GJL.Validate("Account No.", _pl."Account No.");

//             _GJL.Validate(Amount, _pl.Amount);
//             _GJL."Advo Ref No. Payment" := _PL."Payment No.";
//             ConvertAppDoc(appAccType, ' ');
//             _GJL."Applies-to Doc. Type" := appAccType;
//             _GJL."Applies-to Doc. No." := '';
//             _GJL.Insert(false);

//             exit('Insert Sukses');

//         end;
//         //end;

//     end;

//     local procedure CheckNull(var Param1: Text; var Param2: Text; var Param3: Text; var Param4: Text; var Param5: Text; var Param6: Text): Boolean
//     begin
//         if (Param1 = '') or (Param2 = '') or (Param3 = '') or (Param4 = '') or (Param5 = '') or (Param6 = '') then
//             exit(false)
//         else
//             exit(true);
//     end;


// }