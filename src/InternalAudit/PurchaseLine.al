page 50233 "API IT PurchaseLine IA"
{
    PageType = API;

    APIVersion = 'v1.0';
    APIPublisher = 'Bagas';
    APIGroup = 'IT';
    EntitySetName = 'IA_PurchaseLine';
    EntityCaption = 'IA_PurchaseLine';
    EntitySetCaption = 'IA_PurchaseLine';
    EntityName = 'IA_PurchaseLine';

    ODataKeyFields = SystemId;
    SourceTable = "Purchase Line";

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
                field(documentType; Rec."Document Type")
                {
                    ApplicationArea = All;
                }
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
                field(outstandingQuantity; Rec."Outstanding Quantity")
                {
                    ApplicationArea = All;
                }
                field(qtyToInvoice; Rec."Qty. to Invoice")
                {
                    ApplicationArea = All;
                }
                field(qtyToReceive; Rec."Qty. to Receive")
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
                field(lineDiscountAmount; Rec."Line Discount Amount")
                {
                    ApplicationArea = All;
                }
                field(amount; Rec.Amount)
                {
                    ApplicationArea = All;
                }
                field(amountIncludingVAT; Rec."Amount Including VAT")
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
                field(recalculateInvoiceDisc; Rec."Recalculate Invoice Disc.")
                {
                    ApplicationArea = All;
                }
                field(outstandingAmount; Rec."Outstanding Amount")
                {
                    ApplicationArea = All;
                }
                field(qtyRcdNotInvoiced; Rec."Qty. Rcd. Not Invoiced")
                {
                    ApplicationArea = All;
                }
                field(amtRcdNotInvoiced; Rec."Amt. Rcd. Not Invoiced")
                {
                    ApplicationArea = All;
                }
                field(quantityReceived; Rec."Quantity Received")
                {
                    ApplicationArea = All;
                }
                field(quantityInvoiced; Rec."Quantity Invoiced")
                {
                    ApplicationArea = All;
                }
                field(receiptNo; Rec."Receipt No.")
                {
                    ApplicationArea = All;
                }
                field(receiptLineNo; Rec."Receipt Line No.")
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
                field(profitPercent; Rec."Profit %")
                {
                    ApplicationArea = All;
                }
                field(payToVendorNo; Rec."Pay-to Vendor No.")
                {
                    ApplicationArea = All;
                }
                field(invDiscountAmount; Rec."Inv. Discount Amount")
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
                field(dropShipment; Rec."Drop Shipment")
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
                field(currencyCode; Rec."Currency Code")
                {
                    ApplicationArea = All;
                }
                field(outstandingAmountLCY; Rec."Outstanding Amount (LCY)")
                {
                    ApplicationArea = All;
                }
                field(amtRcdNotInvoicedLCY; Rec."Amt. Rcd. Not Invoiced (LCY)")
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
                field(systemCreatedEntry; Rec."System-Created Entry")
                {
                    ApplicationArea = All;
                }
                field(lineAmount; Rec."Line Amount")
                {
                    ApplicationArea = All;
                }
                field(vatDifference; Rec."VAT Difference")
                {
                    ApplicationArea = All;
                }
                field(invDiscAmountToInvoice; Rec."Inv. Disc. Amount to Invoice")
                {
                    ApplicationArea = All;
                }
                field(vatIdentifier; Rec."VAT Identifier")
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
                field(prepaymentPercent; Rec."Prepayment %")
                {
                    ApplicationArea = All;
                }
                field(prepmtLineAmount; Rec."Prepmt. Line Amount")
                {
                    ApplicationArea = All;
                }
                field(prepmtAmtInv; Rec."Prepmt. Amt. Inv.")
                {
                    ApplicationArea = All;
                }
                field(prepmtAmtInclVAT; Rec."Prepmt. Amt. Incl. VAT")
                {
                    ApplicationArea = All;
                }
                field(prepaymentAmount; Rec."Prepayment Amount")
                {
                    ApplicationArea = All;
                }
                field(prepmtVATBaseAmt; Rec."Prepmt. VAT Base Amt.")
                {
                    ApplicationArea = All;
                }
                field(prepaymentVATPercent; Rec."Prepayment VAT %")
                {
                    ApplicationArea = All;
                }
                field(prepmtVATCalcType; Rec."Prepmt. VAT Calc. Type")
                {
                    ApplicationArea = All;
                }
                field(prepaymentVATIdentifier; Rec."Prepayment VAT Identifier")
                {
                    ApplicationArea = All;
                }
                field(prepaymentTaxAreaCode; Rec."Prepayment Tax Area Code")
                {
                    ApplicationArea = All;
                }
                field(prepaymentTaxLiable; Rec."Prepayment Tax Liable")
                {
                    ApplicationArea = All;
                }
                field(prepaymentTaxGroupCode; Rec."Prepayment Tax Group Code")
                {
                    ApplicationArea = All;
                }
                field(prepmtAmtToDeduct; Rec."Prepmt Amt to Deduct")
                {
                    ApplicationArea = All;
                }
                field(prepmtAmtDeducted; Rec."Prepmt Amt Deducted")
                {
                    ApplicationArea = All;
                }
                field(prepaymentLine; Rec."Prepayment Line")
                {
                    ApplicationArea = All;
                }
                field(prepmtAmountInvInclVAT; Rec."Prepmt. Amount Inv. Incl. VAT")
                {
                    ApplicationArea = All;
                }
                field(prepmtAmountInvLCY; Rec."Prepmt. Amount Inv. (LCY)")
                {
                    ApplicationArea = All;
                }
                field(icPartnerCode; Rec."IC Partner Code")
                {
                    ApplicationArea = All;
                }
                field(prepmtVATAmountInvLCY; Rec."Prepmt. VAT Amount Inv. (LCY)")
                {
                    ApplicationArea = All;
                }
                field(prepaymentVATDifference; Rec."Prepayment VAT Difference")
                {
                    ApplicationArea = All;
                }
                field(prepmtVATDiffToDeduct; Rec."Prepmt VAT Diff. to Deduct")
                {
                    ApplicationArea = All;
                }
                field(prepmtVATDiffDeducted; Rec."Prepmt VAT Diff. Deducted")
                {
                    ApplicationArea = All;
                }
                field(icItemReferenceNo; Rec."IC Item Reference No.")
                {
                    ApplicationArea = All;
                }
                field(outstandingAmtExVATLCY; Rec."Outstanding Amt. Ex. VAT (LCY)")
                {
                    ApplicationArea = All;
                }
                field(aRcdNotInvExVATLCY; Rec."A. Rcd. Not Inv. Ex. VAT (LCY)")
                {
                    ApplicationArea = All;
                }
                field(pmtDiscountAmount; Rec."Pmt. Discount Amount")
                {
                    ApplicationArea = All;
                }
                field(prepmtPmtDiscountAmount; Rec."Prepmt. Pmt. Discount Amount")
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
                field(jobRemainingQty; Rec."Job Remaining Qty.")
                {
                    ApplicationArea = All;
                }
                field(jobRemainingQtyBase; Rec."Job Remaining Qty. (Base)")
                {
                    ApplicationArea = All;
                }
                field(deferralCode; Rec."Deferral Code")
                {
                    ApplicationArea = All;
                }
                field(returnsDeferralStartDate; Rec."Returns Deferral Start Date")
                {
                    ApplicationArea = All;
                }
                field(selectedAllocAccountNo; Rec."Selected Alloc. Account No.")
                {
                    ApplicationArea = All;
                }
                field(allocationAccountNo; Rec."Allocation Account No.")
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
                field(qtyRoundingPrecision; Rec."Qty. Rounding Precision")
                {
                    ApplicationArea = All;
                }
                field(qtyRoundingPrecisionBase; Rec."Qty. Rounding Precision (Base)")
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
                field(outstandingQtyBase; Rec."Outstanding Qty. (Base)")
                {
                    ApplicationArea = All;
                }
                field(qtyToInvoiceBase; Rec."Qty. to Invoice (Base)")
                {
                    ApplicationArea = All;
                }
                field(qtyToReceiveBase; Rec."Qty. to Receive (Base)")
                {
                    ApplicationArea = All;
                }
                field(qtyRcdNotInvoicedBase; Rec."Qty. Rcd. Not Invoiced (Base)")
                {
                    ApplicationArea = All;
                }
                field(qtyReceivedBase; Rec."Qty. Received (Base)")
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
                field(specialOrder; Rec."Special Order")
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
                field(completelyReceived; Rec."Completely Received")
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
                field(allowItemChargeAssignment; Rec."Allow Item Charge Assignment")
                {
                    ApplicationArea = All;
                }
                field(returnQtyToShip; Rec."Return Qty. to Ship")
                {
                    ApplicationArea = All;
                }
                field(returnQtyToShipBase; Rec."Return Qty. to Ship (Base)")
                {
                    ApplicationArea = All;
                }
                field(returnQtyShippedNotInvd; Rec."Return Qty. Shipped Not Invd.")
                {
                    ApplicationArea = All;
                }
                field(retQtyShpdNotInvdBase; Rec."Ret. Qty. Shpd Not Invd.(Base)")
                {
                    ApplicationArea = All;
                }
                field(returnShpdNotInvd; Rec."Return Shpd. Not Invd.")
                {
                    ApplicationArea = All;
                }
                field(returnShpdNotInvdLCY; Rec."Return Shpd. Not Invd. (LCY)")
                {
                    ApplicationArea = All;
                }
                field(returnQtyShipped; Rec."Return Qty. Shipped")
                {
                    ApplicationArea = All;
                }
                field(returnQtyShippedBase; Rec."Return Qty. Shipped (Base)")
                {
                    ApplicationArea = All;
                }
                field(nonDeductibleVATPercent; Rec."Non-Deductible VAT %")
                {
                    ApplicationArea = All;
                }
                field(nonDeductibleVATBase; Rec."Non-Deductible VAT Base")
                {
                    ApplicationArea = All;
                }
                field(nonDeductibleVATAmount; Rec."Non-Deductible VAT Amount")
                {
                    ApplicationArea = All;
                }
                field(nonDeductibleVATDiff; Rec."Non-Deductible VAT Diff.")
                {
                    ApplicationArea = All;
                }
                field(prepmtNonDeductVATBase; Rec."Prepmt. Non-Deduct. VAT Base")
                {
                    ApplicationArea = All;
                }
                field(prepmtNonDeductVATAmount; Rec."Prepmt. Non-Deduct. VAT Amount")
                {
                    ApplicationArea = All;
                }
                field(returnShipmentNo; Rec."Return Shipment No.")
                {
                    ApplicationArea = All;
                }
                field(returnShipmentLineNo; Rec."Return Shipment Line No.")
                {
                    ApplicationArea = All;
                }
                field(returnReasonCode; Rec."Return Reason Code")
                {
                    ApplicationArea = All;
                }
                field(subtype; Rec.Subtype)
                {
                    ApplicationArea = All;
                }
                field(copiedFromPostedDoc; Rec."Copied From Posted Doc.")
                {
                    ApplicationArea = All;
                }
                field(priceCalculationMethod; Rec."Price Calculation Method")
                {
                    ApplicationArea = All;
                }
                field(overReceiptQuantity; Rec."Over-Receipt Quantity")
                {
                    ApplicationArea = All;
                }
                field(overReceiptCode; Rec."Over-Receipt Code")
                {
                    ApplicationArea = All;
                }
                field(overReceiptApprovalStatus; Rec."Over-Receipt Approval Status")
                {
                    ApplicationArea = All;
                }
                field(locationCustom; Rec."Location Custom")
                {
                    ApplicationArea = All;
                }
                field(receiptNoCustom; Rec."Receipt No. Custom")
                {
                    ApplicationArea = All;
                }
                field(receiptDateCustom; Rec."Receipt Date Custom")
                {
                    ApplicationArea = All;
                }
                field(sellToCustomerNo; Rec."Sell-to Customer No.")
                {
                    ApplicationArea = All;
                }
                field(shipToName; Rec."Ship-to Name")
                {
                    ApplicationArea = All;
                }
                field(shipToAddress; Rec."Ship-to Address")
                {
                    ApplicationArea = All;
                }
                field(whtBusPostingGroup; Rec."WHT Bus. Posting Group")
                {
                    ApplicationArea = All;
                }
                field(whtProdPostingGroup; Rec."WHT Prod. Posting Group")
                {
                    ApplicationArea = All;
                }
                field(whtAmount; Rec."WHT Amount")
                {
                    ApplicationArea = All;
                }
                field(whtAmountLCY; Rec."WHT Amount (LCY)")
                {
                    ApplicationArea = All;
                }
                field(lineIsWHT; Rec."Line is WHT")
                {
                    ApplicationArea = All;
                }
                field(dgsBonus; Rec."DGS Bonus")
                {
                    ApplicationArea = All;
                }
                field(dgsTaxLineType; Rec."DGS Tax Line Type")
                {
                    ApplicationArea = All;
                }
                field(dgsTaxLineCode; Rec."DGS Tax Line Code")
                {
                    ApplicationArea = All;
                }
                field(dgsTaxDescription; Rec."DGS Tax Description")
                {
                    ApplicationArea = All;
                }
                field(dgsTaxNo; Rec."DGS Tax No.")
                {
                    ApplicationArea = All;
                }
                field(dgsTaxDPPNilaiLain; Rec."DGS Tax DPP Nilai Lain")
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
                field(finished; Rec.Finished)
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
                field(mpsOrder; Rec."MPS Order")
                {
                    ApplicationArea = All;
                }
                field(planningFlexibility; Rec."Planning Flexibility")
                {
                    ApplicationArea = All;
                }
                field(safetyLeadTime; Rec."Safety Lead Time")
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