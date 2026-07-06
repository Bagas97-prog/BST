page 50216 "API IT ValueEntry IA"
{
    PageType = API;

    APIVersion = 'v1.0';
    APIPublisher = 'Bagas';
    APIGroup = 'IT';
    EntitySetName = 'IA_ValueEntry';

    EntityCaption = 'IA_ValueEntry';
    EntitySetCaption = 'IA_ValueEntry';
    EntityName = 'IA_ValueEntry';

    ODataKeyFields = SystemId;
    SourceTable = "Value Entry";

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
                field("EntryNo"; Rec."Entry No.")
                {
                    ApplicationArea = All;
                }
                field("ItemNo"; Rec."Item No.")
                {
                    ApplicationArea = All;
                }
                field("PostingDate"; Rec."Posting Date")
                {
                    ApplicationArea = All;
                }
                field("ItemLedgerEntryType"; Rec."Item Ledger Entry Type")
                {
                    ApplicationArea = All;
                }
                field("SourceNo"; Rec."Source No.")
                {
                    ApplicationArea = All;
                }
                field("DocumentNo"; Rec."Document No.")
                {
                    ApplicationArea = All;
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                }
                field("LocationCode"; Rec."Location Code")
                {
                    ApplicationArea = All;
                }
                field("InventoryPostingGroup"; Rec."Inventory Posting Group")
                {
                    ApplicationArea = All;
                }
                field("SourcePostingGroup"; Rec."Source Posting Group")
                {
                    ApplicationArea = All;
                }
                field("ItemLedgerEntryNo"; Rec."Item Ledger Entry No.")
                {
                    ApplicationArea = All;
                }
                field("ValuedQuantity"; Rec."Valued Quantity")
                {
                    ApplicationArea = All;
                }
                field("ItemLedgerEntryQuantity"; Rec."Item Ledger Entry Quantity")
                {
                    ApplicationArea = All;
                }
                field("InvoicedQuantity"; Rec."Invoiced Quantity")
                {
                    ApplicationArea = All;
                }
                field("CostperUnit"; Rec."Cost per Unit")
                {
                    ApplicationArea = All;
                }
                field("SalesAmountActual"; Rec."Sales Amount (Actual)")
                {
                    ApplicationArea = All;
                }
                field("ItemRegisterNo"; Rec."Item Register No.")
                {
                    ApplicationArea = All;
                }
                field("SIFTBucketNo"; Rec."SIFT Bucket No.")
                {
                    ApplicationArea = All;
                }
                field("SalespersPurchCode"; Rec."Salespers./Purch. Code")
                {
                    ApplicationArea = All;
                }
                field("DiscountAmount"; Rec."Discount Amount")
                {
                    ApplicationArea = All;
                }
                field("UserID"; Rec."User ID")
                {
                    ApplicationArea = All;
                }
                field("SourceCode"; Rec."Source Code")
                {
                    ApplicationArea = All;
                }
                field("AppliestoEntry"; Rec."Applies-to Entry")
                {
                    ApplicationArea = All;
                }
                field("BranchCode"; Rec."Global Dimension 1 Code")
                {
                    ApplicationArea = All;
                }
                field("PrincipalCode"; Rec."Global Dimension 2 Code")
                {
                    ApplicationArea = All;
                }
                field("SourceType"; Rec."Source Type")
                {
                    ApplicationArea = All;
                }
                field("CostAmountActual"; Rec."Cost Amount (Actual)")
                {
                    ApplicationArea = All;
                }
                field("CostPostedtoGL"; Rec."Cost Posted to G/L")
                {
                    ApplicationArea = All;
                }
                field("ReasonCode"; Rec."Reason Code")
                {
                    ApplicationArea = All;
                }
                field("DropShipment"; Rec."Drop Shipment")
                {
                    ApplicationArea = All;
                }
                field("JournalBatchName"; Rec."Journal Batch Name")
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
                field("DocumentDate"; Rec."Document Date")
                {
                    ApplicationArea = All;
                }
                field("ExternalDocumentNo"; Rec."External Document No.")
                {
                    ApplicationArea = All;
                }
                field("CostAmountActualACY"; Rec."Cost Amount (Actual) (ACY)")
                {
                    ApplicationArea = All;
                }
                field("CostPostedtoGLACY"; Rec."Cost Posted to G/L (ACY)")
                {
                    ApplicationArea = All;
                }
                field("CostperUnitACY"; Rec."Cost per Unit (ACY)")
                {
                    ApplicationArea = All;
                }
                field("DocumentType"; Rec."Document Type")
                {
                    ApplicationArea = All;
                }
                field("DocumentLineNo"; Rec."Document Line No.")
                {
                    ApplicationArea = All;
                }
                field("VATDate"; Rec."VAT Reporting Date")
                {
                    ApplicationArea = All;
                }
                field("OrderType"; Rec."Order Type")
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
                field("ExpectedCost"; Rec."Expected Cost")
                {
                    ApplicationArea = All;
                }
                field("ItemChargeNo"; Rec."Item Charge No.")
                {
                    ApplicationArea = All;
                }
                field("ValuedByAverageCost"; Rec."Valued By Average Cost")
                {
                    ApplicationArea = All;
                }
                field("PartialRevaluation"; Rec."Partial Revaluation")
                {
                    ApplicationArea = All;
                }
                field(Inventoriable; Rec.Inventoriable)
                {
                    ApplicationArea = All;
                }
                field("ValuationDate"; Rec."Valuation Date")
                {
                    ApplicationArea = All;
                }
                field("EntryType"; Rec."Entry Type")
                {
                    ApplicationArea = All;
                }
                field("VarianceType"; Rec."Variance Type")
                {
                    ApplicationArea = All;
                }
                field("PurchaseAmountActual"; Rec."Purchase Amount (Actual)")
                {
                    ApplicationArea = All;
                }
                field("PurchaseAmountExpected"; Rec."Purchase Amount (Expected)")
                {
                    ApplicationArea = All;
                }
                field("SalesAmountExpected"; Rec."Sales Amount (Expected)")
                {
                    ApplicationArea = All;
                }
                field("CostAmountExpected"; Rec."Cost Amount (Expected)")
                {
                    ApplicationArea = All;
                }
                field("CostAmountNonInvtbl"; Rec."Cost Amount (Non-Invtbl.)")
                {
                    ApplicationArea = All;
                }
                field("CostAmountExpectedACY"; Rec."Cost Amount (Expected) (ACY)")
                {
                    ApplicationArea = All;
                }
                field("CostAmountNonInvtblACY"; Rec."Cost Amount (Non-Invtbl.)(ACY)")
                {
                    ApplicationArea = All;
                }
                field("ExpectedCostPostedtoGL"; Rec."Expected Cost Posted to G/L")
                {
                    ApplicationArea = All;
                }
                field("ExpCostPostedtoGLACY"; Rec."Exp. Cost Posted to G/L (ACY)")
                {
                    ApplicationArea = All;
                }
                field("DimensionSetID"; Rec."Dimension Set ID")
                {
                    ApplicationArea = All;
                }
                field("ItemGroupCode"; Rec."Shortcut Dimension 3 Code")
                {
                    ApplicationArea = All;
                }
                field("CustomerGroupCode"; Rec."Shortcut Dimension 4 Code")
                {
                    ApplicationArea = All;
                }
                field("RegionCode"; Rec."Shortcut Dimension 5 Code")
                {
                    ApplicationArea = All;
                }
                field("SalemanCode"; Rec."Shortcut Dimension 6 Code")
                {
                    ApplicationArea = All;
                }
                field("ProjectCode"; Rec."Shortcut Dimension 7 Code")
                {
                    ApplicationArea = All;
                }

                field("CompanyCode"; Rec."Shortcut Dimension 8 Code")
                {
                    ApplicationArea = All;
                }
                field("VariantCode"; Rec."Variant Code")
                {
                    ApplicationArea = All;
                }
                field(Adjustment; Rec.Adjustment)
                {
                    ApplicationArea = All;
                }
                field("AverageCostException"; Rec."Average Cost Exception")
                {
                    ApplicationArea = All;
                }
                field("CapacityLedgerEntryNo"; Rec."Capacity Ledger Entry No.")
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
                field("ReturnReasonCode"; Rec."Return Reason Code")
                {
                    ApplicationArea = All;
                }
                field("ItemDescription"; Rec."Item Description")
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