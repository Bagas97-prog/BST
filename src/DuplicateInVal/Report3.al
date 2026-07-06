report 50203 "Inval All Branch IT"
{
    Caption = 'Inventory Valuation - All Branch IT';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultLayout = RDLC;
    RDLCLayout = './reports/Report50100_InvalByBranch.rdl';

    dataset
    {
        dataitem("Inventory Setup"; "Inventory Setup")
        {
            //RequestFilterFields = "Item No.";
            column(cName; gCompInfo.Name)
            { }
            column(Users; gUsers."User Name")
            { }

            dataitem(Integer; Integer)
            {
                DataItemTableView = SORTING(Number) ORDER(Ascending) WHERE(Number = FILTER(1 ..));
                column(Number; Number)
                {

                }
                column(BoM_Text; BoM_TextLbl)
                {
                }
                column(COMPANYNAME; COMPANYPROPERTY.DisplayName)
                {
                }
                column(STRSUBSTNO___1___2__Item_TABLECAPTION_ItemFilter_; StrSubstNo('%1: %2, %3: %4', gItem.TableCaption, ItemNo, _DimValue.TableCaption, _DimValue.Name))
                {
                }
                column(STRSUBSTNO_Text005_StartDateText_; StrSubstNo(Text005, StartDateText))
                {
                }
                column(STRSUBSTNO_Text005_FORMAT_EndDate__; StrSubstNo(Text005, Format(EndDate)))
                {
                }
                column(ShowExpected; ShowExpected)
                {
                }
                column(ItemFilter; ItemNo + '' + BranchFilter)
                {
                }
                column(Inventory_ValuationCaption; Inventory_ValuationCaptionLbl)
                {
                }
                column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
                {
                }
                column(This_report_includes_entries_that_have_been_posted_with_expected_costs_Caption; This_report_includes_entries_that_have_been_posted_with_expected_costs_CaptionLbl)
                {
                }
                column(ItemNoCaption; ValueEntry.FieldCaption("Item No."))
                {
                }
                column(ItemDescriptionCaption; gTmp_VE.FieldCaption(Description))
                {
                }
                column(IncreaseInvoicedQtyCaption; IncreaseInvoicedQtyCaptionLbl)
                {
                }
                column(DecreaseInvoicedQtyCaption; DecreaseInvoicedQtyCaptionLbl)
                {
                }
                column(QuantityCaption; QuantityCaptionLbl)
                {
                }
                column(ValueCaption; ValueCaptionLbl)
                {
                }
                column(QuantityCaption_Control31; QuantityCaption_Control31Lbl)
                {
                }
                column(QuantityCaption_Control40; QuantityCaption_Control40Lbl)
                {
                }
                column(InvCostPostedToGL_Control53Caption; InvCostPostedToGL_Control53CaptionLbl)
                {
                }
                column(QuantityCaption_Control58; QuantityCaption_Control58Lbl)
                {
                }
                column(TotalCaption; TotalCaptionLbl)
                {
                }
                column(Expected_Cost_IncludedCaption; Expected_Cost_IncludedCaptionLbl)
                {
                }
                column(Expected_Cost_Included_TotalCaption; Expected_Cost_Included_TotalCaptionLbl)
                {
                }
                column(Expected_Cost_TotalCaption; Expected_Cost_TotalCaptionLbl)
                {
                }
                column(GetUrlForReportDrilldown; 'GetUrlForReportDrilldown(gItem."No.")')
                {
                }
                column(ItemNo; gTmp_VE."Item No.")
                {
                }
                column(ItemDescription; gTmp_VE.Description)
                {
                }
                column(ItemBaseUnitofMeasure; gTmp_VE."Variant Code")
                {
                }
                column(Item_Inventory_Posting_Group; '"Inventory Posting Group"')
                {
                }
                column(Branch; gTmp_VE."Global Dimension 1 Code")
                { }
                column(Location; gTmp_VE."Location Code")
                { }
                column(StartingInvoicedQty; gTmp_VE."Valued Quantity")
                { }
                column(StartingInvoicedValue; gTmp_VE."Cost per Unit")
                { }
                column(IncreaseInvoicedQty; gTmp_VE."Invoiced Quantity")
                { }
                column(IncreaseInvoicedValue; gTmp_VE."Cost Amount (Actual)")
                { }
                column(DecreaseInvoicedQty; gTmp_VE."Discount Amount")
                { }
                column(DecreaseInvoicedValue; gTmp_VE."Cost per Unit (ACY)")
                { }
                column(DecreaseExpectedValue; gTmp_VE."Purchase Amount (Expected)")
                {
                    AutoFormatType = 1;
                }
                column(DecreaseExpectedQty; gTmp_VE."Purchase Amount (Actual)")
                {
                    DecimalPlaces = 0 : 5;
                }
                column(EndingInvoicedValue; gTmp_VE."Cost per Unit" + gTmp_VE."Cost Amount (Actual)" - gTmp_VE."Cost per Unit (ACY)")
                {
                }
                column(EndingInvoicedQty; gTmp_VE."Valued Quantity" + gTmp_VE."Invoiced Quantity" - gTmp_VE."Discount Amount")
                {
                }
                column(EndingExpectedValue; gTmp_VE."Cost Amount (Expected)" + gTmp_VE."Sales Amount (Expected)" - gTmp_VE."Purchase Amount (Expected)")
                {
                    AutoFormatType = 1;
                }
                column(EndingExpectedQty; gTmp_VE."Item Ledger Entry Quantity" + gTmp_VE."Sales Amount (Actual)" - gTmp_VE."Purchase Amount (Actual)")
                {
                }
                column(CostPostedToGL; gTmp_VE."Cost Posted to G/L (ACY)")
                {
                    AutoFormatType = 1;
                }
                column(InvCostPostedToGL; gTmp_VE."Cost Posted to G/L")
                {
                    AutoFormatType = 1;
                }
                column(ExpCostPostedToGL; gTmp_VE."Expected Cost Posted to G/L")
                {
                    AutoFormatType = 1;
                }
                column(StartingExpectedValue; gTmp_VE."Cost Amount (Expected)")
                {
                    AutoFormatType = 1;
                }
                column(StartingExpectedQty; gTmp_VE."Item Ledger Entry Quantity")
                {
                    DecimalPlaces = 0 : 5;
                }
                column(IncreaseExpectedValue; gTmp_VE."Sales Amount (Expected)")
                {
                    AutoFormatType = 1;
                }
                column(IncreaseExpectedQty; gTmp_VE."Sales Amount (Actual)")
                {
                    DecimalPlaces = 0 : 5;
                }

                trigger OnAfterGetRecord()
                begin
                    IF Number = 1 THEN
                        gTmp_VE.FINDFIRST
                    ELSE
                        gTmp_VE.NEXT;
                end;

                trigger OnPreDataItem()
                begin
                    gTmp_VE.RESET;
                    SETRANGE(Number, 1, gTmp_VE.COUNT);
                end;
            }
            trigger OnPreDataItem() //Header
            begin
                if gTmp_VE.IsTemporary then
                    gTmp_VE.DeleteAll();
            end;

            trigger OnAfterGetRecord()// Header
            var
                _GLS: Record "General Ledger Setup";
                _VE: Record "Value Entry";
                _Location: Record Location;
            begin
                _GLS.Get();
                if EndDate = 0D then
                    EndDate := DMY2Date(31, 12, 9999);

                _DimValue.Reset();
                _DimValue.SetRange("Dimension Code", _GLS."Global Dimension 1 Code");
                _DimValue.SetRange(Blocked, false);
                if BranchFilter <> '' then
                    _DimValue.SetRange(Code, BranchFilter);
                if _DimValue.FindSet() then begin
                    repeat
                        if _Item.FindSet() then begin
                            _Location.Reset();
                            _Location.SetRange("Global Dimension 1 Code", _DimValue.Code);
                            if _Location.FindSet() then begin
                                repeat
                                    IsEmptyLine := true;
                                    _Item.Reset();
                                    if ItemNo <> '' then
                                        _Item.SetRange("No.", ItemNo)
                                    else
                                        _Item.SetRange(type, _Item.Type::Inventory);
                                    _Item.SetRange(Blocked, false);
                                    repeat
                                        gTmp_VE.Init();
                                        gTmp_VE."Entry No." += 1;
                                        gTmp_VE."Item No." := _Item."No.";
                                        gTmp_VE.Description := _Item.Description;
                                        gTmp_VE."Variant Code" := _Item."Base Unit of Measure";
                                        gTmp_VE."Global Dimension 1 Code" := _DimValue.Name;
                                        gTmp_VE."Location Code" := _Location.Code;
                                        gTmp_VE.Insert();
                                        if StartDate > 0D then begin
                                            _VE.Reset();
                                            _VE.SetRange("Item No.", _Item."No.");
                                            _VE.SetRange("Posting Date", 0D, CalcDate('<-1D>', StartDate));
                                            _VE.SetRange("Global Dimension 1 Code", _DimValue.Code);
                                            _VE.SetRange("Location Code", _Location.Code);
                                            _VE.CalcSums("Item Ledger Entry Quantity", "Cost Amount (Actual)", "Cost Amount (Expected)", "Invoiced Quantity");
                                            gTmp_VE."Valued Quantity" := _VE."Invoiced Quantity";
                                            gTmp_VE."Cost per Unit" := _VE."Cost Amount (Actual)";
                                            gTmp_VE."Item Ledger Entry Quantity" := _VE."Item Ledger Entry Quantity";
                                            gTmp_VE."Cost Amount (Expected)" := _VE."Cost Amount (Expected)";
                                            IsEmptyLine := IsEmptyLine and ((_VE."Cost Amount (Actual)" = 0) and (_VE."Invoiced Quantity" = 0));
                                            if ShowExpected then
                                                IsEmptyLine := IsEmptyLine and ((_VE."Cost Amount (Expected)" = 0) and (_VE."Item Ledger Entry Quantity" = 0));
                                        end;
                                        _VE.Reset();
                                        _VE.SetRange("Item No.", _Item."No.");
                                        _VE.SetRange("Posting Date", StartDate, EndDate);
                                        _VE.SetRange("Global Dimension 1 Code", _DimValue.Code);
                                        _VE.SetRange("Location Code", _Location.Code);
                                        _VE.SetFilter(
                                        "Item Ledger Entry Type", '%1|%2|%3|%4',
                                        _VE."Item Ledger Entry Type"::Purchase,
                                        _VE."Item Ledger Entry Type"::"Positive Adjmt.",
                                        _VE."Item Ledger Entry Type"::Output,
                                        _VE."Item Ledger Entry Type"::"Assembly Output");
                                        _VE.CalcSums("Item Ledger Entry Quantity", "Cost Amount (Actual)", "Cost Amount (Expected)", "Invoiced Quantity");
                                        gTmp_VE."Invoiced Quantity" := _VE."Invoiced Quantity";
                                        gTmp_VE."Cost Amount (Actual)" := _VE."Cost Amount (Actual)";
                                        gTmp_VE."Sales Amount (Actual)" := _VE."Item Ledger Entry Quantity";
                                        gTmp_VE."Sales Amount (Expected)" := _VE."Cost Amount (Expected)";
                                        _VE.Reset();
                                        _VE.SetRange("Item No.", _Item."No.");
                                        _VE.SetRange("Posting Date", StartDate, EndDate);
                                        _VE.SetRange("Global Dimension 1 Code", _DimValue.Code);
                                        _VE.SetRange("Location Code", _Location.Code);
                                        _VE.SetFilter(
                                        "Item Ledger Entry Type", '%1|%2|%3|%4',
                                        _VE."Item Ledger Entry Type"::Sale,
                                        _VE."Item Ledger Entry Type"::"Negative Adjmt.",
                                        _VE."Item Ledger Entry Type"::Consumption,
                                        _VE."Item Ledger Entry Type"::"Assembly Consumption");
                                        _VE.CalcSums("Item Ledger Entry Quantity", "Cost Amount (Actual)", "Cost Amount (Expected)", "Invoiced Quantity");
                                        gTmp_VE."Discount Amount" := _VE."Invoiced Quantity" * -1;
                                        gTmp_VE."Cost per Unit (ACY)" := _VE."Cost Amount (Actual)" * -1;
                                        gTmp_VE."Purchase Amount (Actual)" := _VE."Item Ledger Entry Quantity" * -1;
                                        gTmp_VE."Purchase Amount (Expected)" := _VE."Cost Amount (Expected)" * -1;
                                        _VE.Reset();
                                        _VE.SetRange("Item No.", _Item."No.");
                                        _VE.SetRange("Posting Date", StartDate, EndDate);
                                        _VE.SetRange("Global Dimension 1 Code", _DimValue.Code);
                                        _VE.SetRange("Item Ledger Entry Type", _VE."Item Ledger Entry Type"::Transfer);
                                        _VE.SetRange("Location Code", _Location.Code);
                                        if _VE.FindSet then begin
                                            repeat
                                                if true in [_VE."Valued Quantity" < 0, not GetOutboundItemEntry(_VE."Item Ledger Entry No.")] then begin
                                                    gTmp_VE."Discount Amount" += _VE."Invoiced Quantity" * -1;
                                                    gTmp_VE."Cost per Unit (ACY)" += _VE."Cost Amount (Actual)" * -1;
                                                    gTmp_VE."Purchase Amount (Actual)" += _VE."Item Ledger Entry Quantity" * -1;
                                                    gTmp_VE."Purchase Amount (Expected)" += _VE."Cost Amount (Expected)" * -1;
                                                end else begin
                                                    gTmp_VE."Invoiced Quantity" += _VE."Invoiced Quantity";
                                                    gTmp_VE."Cost Amount (Actual)" += _VE."Cost Amount (Actual)";
                                                    gTmp_VE."Sales Amount (Actual)" += _VE."Item Ledger Entry Quantity";
                                                    gTmp_VE."Sales Amount (Expected)" += _VE."Cost Amount (Expected)";
                                                end;
                                            until _VE.Next() = 0;
                                        end;
                                        IsEmptyLine := IsEmptyLine and ((gTmp_VE."Cost Amount (Actual)" = 0) and (gTmp_VE."Invoiced Quantity" = 0));
                                        IsEmptyLine := IsEmptyLine and ((gTmp_VE."Cost per Unit (ACY)" = 0) and (gTmp_VE."Item Ledger Entry Quantity" = 0));
                                        if ShowExpected then begin
                                            IsEmptyLine := IsEmptyLine and ((gTmp_VE."Sales Amount (Expected)" = 0) and (gTmp_VE."Sales Amount (Actual)" = 0));
                                            IsEmptyLine := IsEmptyLine and ((gTmp_VE."Purchase Amount (Expected)" = 0) and (gTmp_VE."Purchase Amount (Actual)" = 0));
                                        end;
                                        _VE.Reset();
                                        _VE.SetRange("Item No.", _Item."No.");
                                        _VE.SetRange("Global Dimension 1 Code", _DimValue.Code);
                                        _VE.SetRange("Posting Date", 0D, EndDate);
                                        _VE.SetRange("Item Ledger Entry Type");
                                        _VE.SetRange("Location Code", _Location.Code);
                                        _VE.CalcSums("Cost Posted to G/L", "Expected Cost Posted to G/L");
                                        gTmp_VE."Expected Cost Posted to G/L" := _VE."Expected Cost Posted to G/L";
                                        gTmp_VE."Cost Posted to G/L" := _VE."Cost Posted to G/L";
                                        gTmp_VE."Cost Amount (Expected)" += gTmp_VE."Cost per Unit";
                                        gTmp_VE."Sales Amount (Expected)" += gTmp_VE."Cost Amount (Actual)";
                                        gTmp_VE."Purchase Amount (Expected)" += gTmp_VE."Cost per Unit (ACY)";
                                        gTmp_VE."Cost Posted to G/L (ACY)" := gTmp_VE."Expected Cost Posted to G/L" + gTmp_VE."Cost Posted to G/L";
                                        gTmp_VE.Modify();
                                    until _Item.Next() = 0;
                                until _Location.Next() = 0;
                            end;
                        end;
                    until _DimValue.Next() = 0;
                end;
            end;


        }

    }

    requestpage
    {
        layout
        {
            area(Content)
            {
                group(GroupName)
                {
                    field(StartDate; StartDate)
                    {
                        ApplicationArea = All;

                    }
                    field(EndDate; EndDate)
                    {
                        ApplicationArea = All;
                    }
                    field(ItemNo; ItemNo)
                    {
                        ApplicationArea = All;
                        TableRelation = Item;
                        Caption = 'Item No.';
                    }
                    field(BranchFilter; BranchFilter)
                    {
                        ApplicationArea = All;
                        Caption = 'Branch Code';
                        TableRelation = "Dimension Value".Code where("Dimension Code" = const('BRANCH'), Blocked = const(false));
                    }
                    field(LocationFilter; LocationFilter)
                    {
                        ApplicationArea = All;
                        Caption = 'Location Code';
                        TableRelation = Location.Code;
                    }
                    field(IncludeExpectedCost; ShowExpected)
                    {
                        ApplicationArea = Basic, Suite;
                        Caption = 'Include Expected Cost';
                        ToolTip = 'Specifies if you want the report to also show entries that only have expected costs.';
                    }
                }
            }
        }
    }
    labels
    {
        Inventory_Posting_Group_NameCaption = 'Branch Group Name';
        Expected_CostCaption = 'Expected Cost';
    }
    trigger OnInitReport()
    begin
        gCompInfo.get;
        gUsers.Get(UserSecurityId());

    end;

    trigger OnPreReport()
    begin
        if (StartDate = 0D) and (EndDate = 0D) then
            EndDate := WorkDate;

        if StartDate in [0D, 00000101D] then
            StartDateText := ''
        else
            StartDateText := Format(StartDate - 1);
    end;

    local procedure GetOutboundItemEntry(ItemLedgerEntryNo: Integer): Boolean
    var
        ItemApplnEntry: Record "Item Application Entry";
        ItemLedgEntry: Record "Item Ledger Entry";
    begin
        ItemApplnEntry.SetCurrentKey("Item Ledger Entry No.");
        ItemApplnEntry.SetRange("Item Ledger Entry No.", ItemLedgerEntryNo);
        if not ItemApplnEntry.FindFirst then
            exit(true);

        ItemLedgEntry.SetRange("Item No.", _Item."No.");
        ItemLedgEntry.SetFilter("Variant Code", _Item.GetFilter("Variant Filter"));
        ItemLedgEntry.SetFilter("Location Code", _Item.GetFilter("Location Filter"));
        ItemLedgEntry.SetFilter("Global Dimension 1 Code", _DimValue.Code);
        ItemLedgEntry.SetFilter("Global Dimension 2 Code", _Item.GetFilter("Global Dimension 2 Filter"));
        ItemLedgEntry."Entry No." := ItemApplnEntry."Outbound Item Entry No.";
        exit(not ItemLedgEntry.Find);
    end;

    var

        gTmp_VE: Record "Value Entry" temporary;

        gItem: Record Item;

        ItemNo: Code[20];

        gCompInfo: Record "Company Information";
        gUsers: Record User;
        Text005: Label 'As of %1';
        ValueEntry: Record "Value Entry";
        StartDate: Date;
        EndDate: Date;
        ShowExpected: Boolean;
        ItemFilter: Text;
        BoM_TextLbl: Label 'Base UoM';
        Inventory_ValuationCaptionLbl: Label 'Inventory Valuation';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        This_report_includes_entries_that_have_been_posted_with_expected_costs_CaptionLbl: Label 'This report includes entries that have been posted with expected costs.';
        IncreaseInvoicedQtyCaptionLbl: Label 'Increases (LCY)';
        DecreaseInvoicedQtyCaptionLbl: Label 'Decreases (LCY)';
        QuantityCaptionLbl: Label 'Quantity';
        ValueCaptionLbl: Label 'Value';
        QuantityCaption_Control31Lbl: Label 'Quantity';
        QuantityCaption_Control40Lbl: Label 'Quantity';
        InvCostPostedToGL_Control53CaptionLbl: Label 'Cost Posted to G/L';
        QuantityCaption_Control58Lbl: Label 'Quantity';
        TotalCaptionLbl: Label 'Total';
        Expected_Cost_Included_TotalCaptionLbl: Label 'Expected Cost Included Total';
        Expected_Cost_TotalCaptionLbl: Label 'Expected Cost Total';
        Expected_Cost_IncludedCaptionLbl: Label 'Expected Cost Included';
        InvCostPostedToGL: Decimal;
        CostPostedToGL: Decimal;
        ExpCostPostedToGL: Decimal;
        IsEmptyLine: Boolean;
        StartDateText: Text[10];

        StartingInvoicedValue: Decimal;
        StartingExpectedValue: Decimal;
        StartingInvoicedQty: Decimal;
        StartingExpectedQty: Decimal;
        IncreaseInvoicedValue: Decimal;
        IncreaseExpectedValue: Decimal;
        IncreaseInvoicedQty: Decimal;
        IncreaseExpectedQty: Decimal;
        DecreaseInvoicedValue: Decimal;
        DecreaseExpectedValue: Decimal;
        DecreaseInvoicedQty: Decimal;
        DecreaseExpectedQty: Decimal;

        _Item: Record Item;
        _DimValue: Record "Dimension Value";

        BranchFilter: Code[20];
        LocationFilter: Text[100];
}