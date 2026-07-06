page 50236 "API IT PurchRcptLine IA"
{
    PageType = API;

    APIVersion = 'v1.0';
    APIPublisher = 'Bagas';
    APIGroup = 'IT';
    EntitySetName = 'IA_PurchRcptLine';
    EntityCaption = 'IA_PurchRcptLine';
    EntitySetCaption = 'IA_PurchRcptLine';
    EntityName = 'IA_PurchRcptLine';

    ODataKeyFields = SystemId;
    SourceTable = "Purch. Rcpt. Line";

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
                field(buyFromVendorNo; Rec."Buy-from Vendor No.")
                {
                    ApplicationArea = All;
                }
                field(documentNo; Rec."Document No.")
                {
                    ApplicationArea = All;
                }
                field(lineNo; Rec."Line No.")
                {
                    ApplicationArea = All;
                }
                field(type; Rec."Type")
                {
                    ApplicationArea = All;
                }
                field(no; Rec."No.")
                {
                    ApplicationArea = All;
                }
                field(locationCode; Rec."Location Code")
                {
                    ApplicationArea = All;
                }
                field(postingGroup; Rec."Posting Group")
                {
                    ApplicationArea = All;
                }
                field(expectedReceiptDate; Rec."Expected Receipt Date")
                {
                    ApplicationArea = All;
                }
                field(description; Rec.Description)
                {
                    ApplicationArea = All;
                }
                field(description2; Rec."Description 2")
                {
                    ApplicationArea = All;
                }
                field(unitOfMeasure; Rec."Unit of Measure")
                {
                    ApplicationArea = All;
                }
                field(quantity; Rec.Quantity)
                {
                    ApplicationArea = All;
                }
                field(directUnitCost; Rec."Direct Unit Cost")
                {
                    ApplicationArea = All;
                }
                field(unitCostLCY; Rec."Unit Cost (LCY)")
                {
                    ApplicationArea = All;
                }
                field(vatPercent; Rec."VAT %")
                {
                    ApplicationArea = All;
                }
                field(lineDiscountPercent; Rec."Line Discount %")
                {
                    ApplicationArea = All;
                }
                field(unitPriceLCY; Rec."Unit Price (LCY)")
                {
                    ApplicationArea = All;
                }
                field(allowInvoiceDisc; Rec."Allow Invoice Disc.")
                {
                    ApplicationArea = All;
                }
                field(grossWeight; Rec."Gross Weight")
                {
                    ApplicationArea = All;
                }
                field(netWeight; Rec."Net Weight")
                {
                    ApplicationArea = All;
                }
                field(unitsPerParcel; Rec."Units per Parcel")
                {
                    ApplicationArea = All;
                }
                field(unitVolume; Rec."Unit Volume")
                {
                    ApplicationArea = All;
                }
                field(applToItemEntry; Rec."Appl.-to Item Entry")
                {
                    ApplicationArea = All;
                }
                field(itemRcptEntryNo; Rec."Item Rcpt. Entry No.")
                {
                    ApplicationArea = All;
                }
                field(shortcutDimension1Code; Rec."Shortcut Dimension 1 Code")
                {
                    ApplicationArea = All;
                }
                field(shortcutDimension2Code; Rec."Shortcut Dimension 2 Code")
                {
                    ApplicationArea = All;
                }
                field(jobNo; Rec."Job No.")
                {
                    ApplicationArea = All;
                }
                field(indirectCostPercent; Rec."Indirect Cost %")
                {
                    ApplicationArea = All;
                }
                field(qtyRcdNotInvoiced; Rec."Qty. Rcd. Not Invoiced")
                {
                    ApplicationArea = All;
                }
                field(quantityInvoiced; Rec."Quantity Invoiced")
                {
                    ApplicationArea = All;
                }
                field(orderNo; Rec."Order No.")
                {
                    ApplicationArea = All;
                }
                field(orderLineNo; Rec."Order Line No.")
                {
                    ApplicationArea = All;
                }
                field(payToVendorNo; Rec."Pay-to Vendor No.")
                {
                    ApplicationArea = All;
                }
                field(vendorItemNo; Rec."Vendor Item No.")
                {
                    ApplicationArea = All;
                }
                field(salesOrderNo; Rec."Sales Order No.")
                {
                    ApplicationArea = All;
                }
                field(salesOrderLineNo; Rec."Sales Order Line No.")
                {
                    ApplicationArea = All;
                }
                field(genBusPostingGroup; Rec."Gen. Bus. Posting Group")
                {
                    ApplicationArea = All;
                }
                field(genProdPostingGroup; Rec."Gen. Prod. Posting Group")
                {
                    ApplicationArea = All;
                }
                field(vatCalculationType; Rec."VAT Calculation Type")
                {
                    ApplicationArea = All;
                }
                field(transactionType; Rec."Transaction Type")
                {
                    ApplicationArea = All;
                }
                field(transportMethod; Rec."Transport Method")
                {
                    ApplicationArea = All;
                }
                field(attachedToLineNo; Rec."Attached to Line No.")
                {
                    ApplicationArea = All;
                }
                field(entryPoint; Rec."Entry Point")
                {
                    ApplicationArea = All;
                }
                field(areaCode; Rec.Area)
                {
                    ApplicationArea = All;
                }
                field(transactionSpecification; Rec."Transaction Specification")
                {
                    ApplicationArea = All;
                }
                field(taxAreaCode; Rec."Tax Area Code")
                {
                    ApplicationArea = All;
                }
                field(taxLiable; Rec."Tax Liable")
                {
                    ApplicationArea = All;
                }
                field(taxGroupCode; Rec."Tax Group Code")
                {
                    ApplicationArea = All;
                }
                field(useTax; Rec."Use Tax")
                {
                    ApplicationArea = All;
                }
                field(vatBusPostingGroup; Rec."VAT Bus. Posting Group")
                {
                    ApplicationArea = All;
                }
                field(vatProdPostingGroup; Rec."VAT Prod. Posting Group")
                {
                    ApplicationArea = All;
                }
                field(blanketOrderNo; Rec."Blanket Order No.")
                {
                    ApplicationArea = All;
                }
                field(blanketOrderLineNo; Rec."Blanket Order Line No.")
                {
                    ApplicationArea = All;
                }
                field(vatBaseAmount; Rec."VAT Base Amount")
                {
                    ApplicationArea = All;
                }
                field(unitCost; Rec."Unit Cost")
                {
                    ApplicationArea = All;
                }
                field(icPartnerRefType; Rec."IC Partner Ref. Type")
                {
                    ApplicationArea = All;
                }
                field(icPartnerReference; Rec."IC Partner Reference")
                {
                    ApplicationArea = All;
                }
                field(postingDate; Rec."Posting Date")
                {
                    ApplicationArea = All;
                }
                field(icItemReferenceNo; Rec."IC Item Reference No.")
                {
                    ApplicationArea = All;
                }
                field(dimensionSetId; Rec."Dimension Set ID")
                {
                    ApplicationArea = All;
                }
                field(jobTaskNo; Rec."Job Task No.")
                {
                    ApplicationArea = All;
                }
                field(jobLineType; Rec."Job Line Type")
                {
                    ApplicationArea = All;
                }
                field(jobUnitPrice; Rec."Job Unit Price")
                {
                    ApplicationArea = All;
                }
                field(jobTotalPrice; Rec."Job Total Price")
                {
                    ApplicationArea = All;
                }
                field(jobLineAmount; Rec."Job Line Amount")
                {
                    ApplicationArea = All;
                }
                field(jobLineDiscountAmount; Rec."Job Line Discount Amount")
                {
                    ApplicationArea = All;
                }
                field(jobLineDiscountPercent; Rec."Job Line Discount %")
                {
                    ApplicationArea = All;
                }
                field(jobUnitPriceLCY; Rec."Job Unit Price (LCY)")
                {
                    ApplicationArea = All;
                }
                field(jobTotalPriceLCY; Rec."Job Total Price (LCY)")
                {
                    ApplicationArea = All;
                }
                field(jobLineAmountLCY; Rec."Job Line Amount (LCY)")
                {
                    ApplicationArea = All;
                }
                field(jobLineDiscAmountLCY; Rec."Job Line Disc. Amount (LCY)")
                {
                    ApplicationArea = All;
                }
                field(jobCurrencyFactor; Rec."Job Currency Factor")
                {
                    ApplicationArea = All;
                }
                field(jobCurrencyCode; Rec."Job Currency Code")
                {
                    ApplicationArea = All;
                }
                field(jobPlanningLineNo; Rec."Job Planning Line No.")
                {
                    ApplicationArea = All;
                }
                field(prodOrderNo; Rec."Prod. Order No.")
                {
                    ApplicationArea = All;
                }
                field(variantCode; Rec."Variant Code")
                {
                    ApplicationArea = All;
                }
                field(binCode; Rec."Bin Code")
                {
                    ApplicationArea = All;
                }
                field(qtyPerUnitOfMeasure; Rec."Qty. per Unit of Measure")
                {
                    ApplicationArea = All;
                }
                field(unitOfMeasureCode; Rec."Unit of Measure Code")
                {
                    ApplicationArea = All;
                }
                field(quantityBase; Rec."Quantity (Base)")
                {
                    ApplicationArea = All;
                }
                field(qtyInvoicedBase; Rec."Qty. Invoiced (Base)")
                {
                    ApplicationArea = All;
                }
                field(faPostingDate; Rec."FA Posting Date")
                {
                    ApplicationArea = All;
                }
                field(faPostingType; Rec."FA Posting Type")
                {
                    ApplicationArea = All;
                }
                field(depreciationBookCode; Rec."Depreciation Book Code")
                {
                    ApplicationArea = All;
                }
                field(salvageValue; Rec."Salvage Value")
                {
                    ApplicationArea = All;
                }
                field(deprUntilFAPostingDate; Rec."Depr. until FA Posting Date")
                {
                    ApplicationArea = All;
                }
                field(deprAcquisitionCost; Rec."Depr. Acquisition Cost")
                {
                    ApplicationArea = All;
                }
                field(maintenanceCode; Rec."Maintenance Code")
                {
                    ApplicationArea = All;
                }
                field(insuranceNo; Rec."Insurance No.")
                {
                    ApplicationArea = All;
                }
                field(budgetedFANo; Rec."Budgeted FA No.")
                {
                    ApplicationArea = All;
                }
                field(duplicateInDepreciationBook; Rec."Duplicate in Depreciation Book")
                {
                    ApplicationArea = All;
                }
                field(useDuplicationList; Rec."Use Duplication List")
                {
                    ApplicationArea = All;
                }
                field(responsibilityCenter; Rec."Responsibility Center")
                {
                    ApplicationArea = All;
                }
                field(itemCategoryCode; Rec."Item Category Code")
                {
                    ApplicationArea = All;
                }
                field(nonstock; Rec.Nonstock)
                {
                    ApplicationArea = All;
                }
                field(purchasingCode; Rec."Purchasing Code")
                {
                    ApplicationArea = All;
                }
                field(specialOrderSalesNo; Rec."Special Order Sales No.")
                {
                    ApplicationArea = All;
                }
                field(specialOrderSalesLineNo; Rec."Special Order Sales Line No.")
                {
                    ApplicationArea = All;
                }
                field(itemReferenceNo; Rec."Item Reference No.")
                {
                    ApplicationArea = All;
                }
                field(itemReferenceUnitOfMeasure; Rec."Item Reference Unit of Measure")
                {
                    ApplicationArea = All;
                }
                field(itemReferenceType; Rec."Item Reference Type")
                {
                    ApplicationArea = All;
                }
                field(itemReferenceTypeNo; Rec."Item Reference Type No.")
                {
                    ApplicationArea = All;
                }
                field(requestedReceiptDate; Rec."Requested Receipt Date")
                {
                    ApplicationArea = All;
                }
                field(promisedReceiptDate; Rec."Promised Receipt Date")
                {
                    ApplicationArea = All;
                }
                field(leadTimeCalculation; Rec."Lead Time Calculation")
                {
                    ApplicationArea = All;
                }
                field(inboundWhseHandlingTime; Rec."Inbound Whse. Handling Time")
                {
                    ApplicationArea = All;
                }
                field(plannedReceiptDate; Rec."Planned Receipt Date")
                {
                    ApplicationArea = All;
                }
                field(orderDate; Rec."Order Date")
                {
                    ApplicationArea = All;
                }
                field(itemChargeBaseAmount; Rec."Item Charge Base Amount")
                {
                    ApplicationArea = All;
                }
                field(correction; Rec.Correction)
                {
                    ApplicationArea = All;
                }
                field(returnReasonCode; Rec."Return Reason Code")
                {
                    ApplicationArea = All;
                }
                field(priceCalculationMethod; Rec."Price Calculation Method")
                {
                    ApplicationArea = All;
                }
                field(documentId; Rec."Document Id")
                {
                    ApplicationArea = All;
                }
                field(overReceiptQuantity; Rec."Over-Receipt Quantity")
                {
                    ApplicationArea = All;
                }
                field(overReceiptCode2; Rec."Over-Receipt Code 2")
                {
                    ApplicationArea = All;
                }
                field(routingNo; Rec."Routing No.")
                {
                    ApplicationArea = All;
                }
                field(operationNo; Rec."Operation No.")
                {
                    ApplicationArea = All;
                }
                field(workCenterNo; Rec."Work Center No.")
                {
                    ApplicationArea = All;
                }
                field(prodOrderLineNo; Rec."Prod. Order Line No.")
                {
                    ApplicationArea = All;
                }
                field(overheadRate; Rec."Overhead Rate")
                {
                    ApplicationArea = All;
                }
                field(routingReferenceNo; Rec."Routing Reference No.")
                {
                    ApplicationArea = All;
                }
                field(systemId; Rec.SystemId)
                {
                    ApplicationArea = All;
                }
                field(systemCreatedAt; Rec.SystemCreatedAt)
                {
                    ApplicationArea = All;
                }
                field(systemCreatedBy; Rec.SystemCreatedBy)
                {
                    ApplicationArea = All;
                }
                field(systemModifiedAt; Rec.SystemModifiedAt)
                {
                    ApplicationArea = All;
                }
                field(systemModifiedBy; Rec.SystemModifiedBy)
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}