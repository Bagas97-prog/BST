page 50218 "API IT PSIL IA"
{
    PageType = API;

    APIVersion = 'v1.0';
    APIPublisher = 'Bagas';
    APIGroup = 'IT';
    EntitySetName = 'IA_PSIL';

    EntityCaption = 'IA_PSIL';
    EntitySetCaption = 'IA_PSIL';
    EntityName = 'IA_PSIL';

    ODataKeyFields = SystemId;
    SourceTable = "Sales Invoice Line";

    Extensible = false;
    DelayedInsert = false;
    InsertAllowed = false;
    ModifyAllowed = false;
    DeleteAllowed = false;
    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("SelltoCustomerNo"; Rec."Sell-to Customer No.")
                {
                    ApplicationArea = All;
                }
                field("DocumentNo"; Rec."Document No.")
                {
                    ApplicationArea = All;
                }
                field("LineNo"; Rec."Line No.")
                {
                    ApplicationArea = All;
                }
                field(Type; Rec.Type)
                {
                    ApplicationArea = All;
                }
                field("No"; Rec."No.")
                {
                    ApplicationArea = All;
                }
                field("LocationCode"; Rec."Location Code")
                {
                    ApplicationArea = All;
                }
                field("PostingGroup"; Rec."Posting Group")
                {
                    ApplicationArea = All;
                }
                field("ShipmentDate"; Rec."Shipment Date")
                {
                    ApplicationArea = All;
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                }
                field("Description2"; Rec."Description 2")
                {
                    ApplicationArea = All;
                }
                field("UnitofMeasure"; Rec."Unit of Measure")
                {
                    ApplicationArea = All;
                }
                field(Quantity; Rec.Quantity)
                {
                    ApplicationArea = All;
                }
                field("UnitPrice"; Rec."Unit Price")
                {
                    ApplicationArea = All;
                }
                field("UnitCostLCY"; Rec."Unit Cost (LCY)")
                {
                    ApplicationArea = All;
                }
                field("VATPercent"; Rec."VAT %")
                {
                    ApplicationArea = All;
                }
                field("LineDiscountPercent"; Rec."Line Discount %")
                {
                    ApplicationArea = All;
                }
                field("LineDiscountAmount"; Rec."Line Discount Amount")
                {
                    ApplicationArea = All;
                }
                field(Amount; Rec.Amount)
                {
                    ApplicationArea = All;
                }
                field("AmountIncludingVAT"; Rec."Amount Including VAT")
                {
                    ApplicationArea = All;
                }
                field("AllowInvoiceDisc"; Rec."Allow Invoice Disc.")
                {
                    ApplicationArea = All;
                }
                field("GrossWeight"; Rec."Gross Weight")
                {
                    ApplicationArea = All;
                }
                field("NetWeight"; Rec."Net Weight")
                {
                    ApplicationArea = All;
                }
                field("UnitsperParcel"; Rec."Units per Parcel")
                {
                    ApplicationArea = All;
                }
                field("UnitVolume"; Rec."Unit Volume")
                {
                    ApplicationArea = All;
                }
                field("AppltoItemEntry"; Rec."Appl.-to Item Entry")
                {
                    ApplicationArea = All;
                }
                field("ShortcutDimension1Code"; Rec."Shortcut Dimension 1 Code")
                {
                    ApplicationArea = All;
                }
                field("ShortcutDimension2Code"; Rec."Shortcut Dimension 2 Code")
                {
                    ApplicationArea = All;
                }
                field("CustomerPriceGroup"; Rec."Customer Price Group")
                {
                    ApplicationArea = All;
                }
                field("JobNo"; Rec."Job No.")
                {
                    ApplicationArea = All;
                }
                field("WorkTypeCode"; Rec."Work Type Code")
                {
                    ApplicationArea = All;
                }
                field("ShipmentNo"; Rec."Shipment No.")
                {
                    ApplicationArea = All;
                }
                field("ShipmentLineNo"; Rec."Shipment Line No.")
                {
                    ApplicationArea = All;
                }
                field("OrderNo"; Rec."Order No.")
                {
                    ApplicationArea = All;
                }
                field("OrderLineNo"; Rec."Order Line No.")
                {
                    ApplicationArea = All;
                }
                field("BilltoCustomerNo"; Rec."Bill-to Customer No.")
                {
                    ApplicationArea = All;
                }
                field("InvDiscountAmount"; Rec."Inv. Discount Amount")
                {
                    ApplicationArea = All;
                }
                field("DropShipment"; Rec."Drop Shipment")
                {
                    ApplicationArea = All;
                }
                field("GenBusPostingGroup"; Rec."Gen. Bus. Posting Group")
                {
                    ApplicationArea = All;
                }
                field("GenProdPostingGroup"; Rec."Gen. Prod. Posting Group")
                {
                    ApplicationArea = All;
                }
                field("VATCalculationType"; Rec."VAT Calculation Type")
                {
                    ApplicationArea = All;
                }
                field("TransactionType"; Rec."Transaction Type")
                {
                    ApplicationArea = All;
                }
                field("TransportMethod"; Rec."Transport Method")
                {
                    ApplicationArea = All;
                }
                field("AttachedtoLineNo"; Rec."Attached to Line No.")
                {
                    ApplicationArea = All;
                }
                field("ExitPoint"; Rec."Exit Point")
                {
                    ApplicationArea = All;
                }
                field("Area"; Rec."Area")
                {
                    ApplicationArea = All;
                }
                field("TransactionSpecification"; Rec."Transaction Specification")
                {
                    ApplicationArea = All;
                }
                field("TaxCategory"; Rec."Tax Category")
                {
                    ApplicationArea = All;
                }
                field("TaxAreaCode"; Rec."Tax Area Code")
                {
                    ApplicationArea = All;
                }
                field("TaxLiable"; Rec."Tax Liable")
                {
                    ApplicationArea = All;
                }
                field("TaxGroupCode"; Rec."Tax Group Code")
                {
                    ApplicationArea = All;
                }
                field("VATClauseCode"; Rec."VAT Clause Code")
                {
                    ApplicationArea = All;
                }
                field("VATBusPostingGroup"; Rec."VAT Bus. Posting Group")
                {
                    ApplicationArea = All;
                }
                field("VATProdPostingGroup"; Rec."VAT Prod. Posting Group")
                {
                    ApplicationArea = All;
                }
                field("BlanketOrderNo"; Rec."Blanket Order No.")
                {
                    ApplicationArea = All;
                }
                field("BlanketOrderLineNo"; Rec."Blanket Order Line No.")
                {
                    ApplicationArea = All;
                }
                field("VATBaseAmount"; Rec."VAT Base Amount")
                {
                    ApplicationArea = All;
                }
                field("UnitCost"; Rec."Unit Cost")
                {
                    ApplicationArea = All;
                }
                field("SystemCreatedEntry"; Rec."System-Created Entry")
                {
                    ApplicationArea = All;
                }
                field("LineAmount"; Rec."Line Amount")
                {
                    ApplicationArea = All;
                }
                field("VATDifference"; Rec."VAT Difference")
                {
                    ApplicationArea = All;
                }
                field("VATIdentifier"; Rec."VAT Identifier")
                {
                    ApplicationArea = All;
                }
                field("ICPartnerRefType"; Rec."IC Partner Ref. Type")
                {
                    ApplicationArea = All;
                }
                field("ICPartnerReference"; Rec."IC Partner Reference")
                {
                    ApplicationArea = All;
                }
                field("PrepaymentLine"; Rec."Prepayment Line")
                {
                    ApplicationArea = All;
                }
                field("ICPartnerCode"; Rec."IC Partner Code")
                {
                    ApplicationArea = All;
                }
                field("PostingDate"; Rec."Posting Date")
                {
                    ApplicationArea = All;
                }
                field("ICItemReferenceNo"; Rec."IC Item Reference No.")
                {
                    ApplicationArea = All;
                }
                field("PmtDiscountAmount"; Rec."Pmt. Discount Amount")
                {
                    ApplicationArea = All;
                }
                field("LineDiscountCalculation"; Rec."Line Discount Calculation")
                {
                    ApplicationArea = All;
                }
                field("DimensionSetID"; Rec."Dimension Set ID")
                {
                    ApplicationArea = All;
                }
                field("JobTaskNo"; Rec."Job Task No.")
                {
                    ApplicationArea = All;
                }
                field("JobContractEntryNo"; Rec."Job Contract Entry No.")
                {
                    ApplicationArea = All;
                }
                field("DeferralCode"; Rec."Deferral Code")
                {
                    ApplicationArea = All;
                }
                field("AllocationAccountNo"; Rec."Allocation Account No.")
                {
                    ApplicationArea = All;
                }
                field("VariantCode"; Rec."Variant Code")
                {
                    ApplicationArea = All;
                }
                field("BinCode"; Rec."Bin Code")
                {
                    ApplicationArea = All;
                }
                field("QtyperUnitofMeasure"; Rec."Qty. per Unit of Measure")
                {
                    ApplicationArea = All;
                }
                field("UnitofMeasureCode"; Rec."Unit of Measure Code")
                {
                    ApplicationArea = All;
                }
                field("QuantityBase"; Rec."Quantity (Base)")
                {
                    ApplicationArea = All;
                }
                field("FAPostingDate"; Rec."FA Posting Date")
                {
                    ApplicationArea = All;
                }
                field("DepreciationBookCode"; Rec."Depreciation Book Code")
                {
                    ApplicationArea = All;
                }
                field("DepruntilFAPostingDate"; Rec."Depr. until FA Posting Date")
                {
                    ApplicationArea = All;
                }
                field("DuplicateinDepreciationBook"; Rec."Duplicate in Depreciation Book")
                {
                    ApplicationArea = All;
                }
                field("UseDuplicationList"; Rec."Use Duplication List")
                {
                    ApplicationArea = All;
                }
                field("ResponsibilityCenter"; Rec."Responsibility Center")
                {
                    ApplicationArea = All;
                }
                field("ItemCategoryCode"; Rec."Item Category Code")
                {
                    ApplicationArea = All;
                }
                field(Nonstock; Rec.Nonstock)
                {
                    ApplicationArea = All;
                }
                field("PurchasingCode"; Rec."Purchasing Code")
                {
                    ApplicationArea = All;
                }
                field("ItemReferenceNo"; Rec."Item Reference No.")
                {
                    ApplicationArea = All;
                }
                field("ItemReferenceUnitofMeasure"; Rec."Item Reference Unit of Measure")
                {
                    ApplicationArea = All;
                }
                field("ItemReferenceType"; Rec."Item Reference Type")
                {
                    ApplicationArea = All;
                }
                field("ItemReferenceTypeNo"; Rec."Item Reference Type No.")
                {
                    ApplicationArea = All;
                }
                field("ApplfromItemEntry"; Rec."Appl.-from Item Entry")
                {
                    ApplicationArea = All;
                }
                field("ReturnReasonCode"; Rec."Return Reason Code")
                {
                    ApplicationArea = All;
                }
                field("PriceCalculationMethod"; Rec."Price Calculation Method")
                {
                    ApplicationArea = All;
                }
                field("AllowLineDisc"; Rec."Allow Line Disc.")
                {
                    ApplicationArea = All;
                }
                field("CustomerDiscGroup"; Rec."Customer Disc. Group")
                {
                    ApplicationArea = All;
                }
                field("Pricedescription"; Rec."Price description")
                {
                    ApplicationArea = All;
                }
                field("SelltoCustomerName"; Rec."Sell-to Customer Name")
                {
                    ApplicationArea = All;
                }
                field("DiscLv1Percent"; Rec."Disc. Lv. 1 (%)")
                {
                    ApplicationArea = All;
                }
                field("DiscLv2Percent"; Rec."Disc. Lv. 2 (%)")
                {
                    ApplicationArea = All;
                }
                field("DiscLv3Percent"; Rec."Disc. Lv. 3 (%)")
                {
                    ApplicationArea = All;
                }
                field("DiscPembulatanAmt"; Rec."Disc. Pembulatan (Amt)")
                {
                    ApplicationArea = All;
                }
                field("OriginalAmount"; Rec."Original Amount")
                {
                    ApplicationArea = All;
                }
                field("ShortcutDimension9Code"; Rec."Shortcut Dimension 9 Code")
                {
                    ApplicationArea = All;
                }
                field(Bonus; Rec.Bonus)
                {
                    ApplicationArea = All;
                }
                field("DGSWHTBusPostingGroup"; Rec."DGS WHT Bus. Posting Group")
                {
                    ApplicationArea = All;
                }
                field("DGSWHTProdPostingGroup"; Rec."DGS WHT Prod. Posting Group")
                {
                    ApplicationArea = All;
                }
                field("DGSWHTPercentDecimal"; Rec."DGS WHT %, decimal")
                {
                    ApplicationArea = All;
                }
                field("DGSWHTAmount"; Rec."DGS WHT Amount")
                {
                    ApplicationArea = All;
                }
                field("DGSWHTAmountLCY"; Rec."DGS WHT Amount (LCY)")
                {
                    ApplicationArea = All;
                }
                field("DGSLineisWHT"; Rec."DGS Line is WHT")
                {
                    ApplicationArea = All;
                }
                field("DGSTaxLineType"; Rec."DGS Tax Line Type")
                {
                    ApplicationArea = All;
                }
                field("DGSTaxLineCode"; Rec."DGS Tax Line Code")
                {
                    ApplicationArea = All;
                }
                field("DGSTaxDescription"; Rec."DGS Tax Description")
                {
                    ApplicationArea = All;
                }
                field("DGSTaxNo"; Rec."DGS Tax No.")
                {
                    ApplicationArea = All;
                }
                field("DGSTaxDPPNilaiLain"; Rec."DGS Tax DPP Nilai Lain")
                {
                    ApplicationArea = All;
                }
                field(SystemId; Rec.SystemId)
                {
                    ApplicationArea = All;
                }
                field(SystemCreatedAt; Rec.SystemCreatedAt)
                {
                    ApplicationArea = All;
                }
                field(SystemCreatedBy; Rec.SystemCreatedBy)
                {
                    ApplicationArea = All;
                }
                field(SystemModifiedAt; Rec.SystemModifiedAt)
                {
                    ApplicationArea = All;
                }
                field(SystemModifiedBy; Rec.SystemModifiedBy)
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}