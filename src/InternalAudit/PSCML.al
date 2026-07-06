page 50225 "API IT SalesCrMemoLine IA"
{
    PageType = API;

    APIVersion = 'v1.0';
    APIPublisher = 'Bagas';
    APIGroup = 'IT';
    EntitySetName = 'IA_SalesCrMemoLine';
    EntityCaption = 'IA_SalesCrMemoLine';
    EntitySetCaption = 'IA_SalesCrMemoLine';
    EntityName = 'IA_SalesCrMemoLine';

    ODataKeyFields = SystemId;
    SourceTable = "Sales Cr.Memo Line";

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
                field(documentNo; Rec."Document No.")
                {
                    ApplicationArea = All;
                }
                field(lineNo; Rec."Line No.")
                {
                    ApplicationArea = All;
                }
                field(sellToCustomerNo; Rec."Sell-to Customer No.")
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
                field(shipmentDate; Rec."Shipment Date")
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
                field(unitPrice; Rec."Unit Price")
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
                field(customerPriceGroup; Rec."Customer Price Group")
                {
                    ApplicationArea = All;
                }
                field(jobNo; Rec."Job No.")
                {
                    ApplicationArea = All;
                }
                field(workTypeCode; Rec."Work Type Code")
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
                field(billToCustomerNo; Rec."Bill-to Customer No.")
                {
                    ApplicationArea = All;
                }
                field(invDiscountAmount; Rec."Inv. Discount Amount")
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
                field(exitPoint; Rec."Exit Point")
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
                field(taxCategory; Rec."Tax Category")
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
                field(vatClauseCode; Rec."VAT Clause Code")
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
                field(prepaymentLine; Rec."Prepayment Line")
                {
                    ApplicationArea = All;
                }
                field(icPartnerCode; Rec."IC Partner Code")
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
                field(pmtDiscountAmount; Rec."Pmt. Discount Amount")
                {
                    ApplicationArea = All;
                }
                field(lineDiscountCalculation; Rec."Line Discount Calculation")
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
                field(jobContractEntryNo; Rec."Job Contract Entry No.")
                {
                    ApplicationArea = All;
                }
                field(deferralCode; Rec."Deferral Code")
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
                field(faPostingDate; Rec."FA Posting Date")
                {
                    ApplicationArea = All;
                }
                field(depreciationBookCode; Rec."Depreciation Book Code")
                {
                    ApplicationArea = All;
                }
                field(deprUntilFAPostingDate; Rec."Depr. until FA Posting Date")
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
                field(applFromItemEntry; Rec."Appl.-from Item Entry")
                {
                    ApplicationArea = All;
                }
                field(returnReceiptNo; Rec."Return Receipt No.")
                {
                    ApplicationArea = All;
                }
                field(returnReceiptLineNo; Rec."Return Receipt Line No.")
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
                field(allowLineDisc; Rec."Allow Line Disc.")
                {
                    ApplicationArea = All;
                }
                field(customerDiscGroup; Rec."Customer Disc. Group")
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