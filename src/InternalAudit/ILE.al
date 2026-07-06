page 50224 "API IT ItemLedgEntry IA"
{
    PageType = API;

    APIVersion = 'v1.0';
    APIPublisher = 'Bagas';
    APIGroup = 'IT';
    EntitySetName = 'IA_ItemLedgerEntry';
    EntityCaption = 'IA_ItemLedgerEntry';
    EntitySetCaption = 'IA_ItemLedgerEntry';
    EntityName = 'IA_ItemLedgerEntry';

    ODataKeyFields = SystemId;
    SourceTable = "Item Ledger Entry";

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
                field(entryNo; Rec."Entry No.")
                {
                    ApplicationArea = All;
                }
                field(itemNo; Rec."Item No.")
                {
                    ApplicationArea = All;
                }
                field(postingDate; Rec."Posting Date")
                {
                    ApplicationArea = All;
                }
                field(entryType; Rec."Entry Type")
                {
                    ApplicationArea = All;
                }
                field(sourceNo; Rec."Source No.")
                {
                    ApplicationArea = All;
                }
                field(documentNo; Rec."Document No.")
                {
                    ApplicationArea = All;
                }
                field(description; Rec.Description)
                {
                    ApplicationArea = All;
                }
                field(locationCode; Rec."Location Code")
                {
                    ApplicationArea = All;
                }
                field(quantity; Rec.Quantity)
                {
                    ApplicationArea = All;
                }
                field(remainingQuantity; Rec."Remaining Quantity")
                {
                    ApplicationArea = All;
                }
                field(invoicedQuantity; Rec."Invoiced Quantity")
                {
                    ApplicationArea = All;
                }
                field(itemRegisterNo; Rec."Item Register No.")
                {
                    ApplicationArea = All;
                }
                field(siftBucketNo; Rec."SIFT Bucket No.")
                {
                    ApplicationArea = All;
                }
                field(appliesToEntry; Rec."Applies-to Entry")
                {
                    ApplicationArea = All;
                }
                field(open; Rec.Open)
                {
                    ApplicationArea = All;
                }
                field(globalDimension1Code; Rec."Global Dimension 1 Code")
                {
                    ApplicationArea = All;
                }
                field(globalDimension2Code; Rec."Global Dimension 2 Code")
                {
                    ApplicationArea = All;
                }
                field(positive; Rec.Positive)
                {
                    ApplicationArea = All;
                }
                field(shptMethodCode; Rec."Shpt. Method Code")
                {
                    ApplicationArea = All;
                }
                field(sourceType; Rec."Source Type")
                {
                    ApplicationArea = All;
                }
                field(dropShipment; Rec."Drop Shipment")
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
                field(countryRegionCode; Rec."Country/Region Code")
                {
                    ApplicationArea = All;
                }
                field(entryExitPoint; Rec."Entry/Exit Point")
                {
                    ApplicationArea = All;
                }
                field(documentDate; Rec."Document Date")
                {
                    ApplicationArea = All;
                }
                field(externalDocumentNo; Rec."External Document No.")
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
                field(noSeries; Rec."No. Series")
                {
                    ApplicationArea = All;
                }
                field(documentType; Rec."Document Type")
                {
                    ApplicationArea = All;
                }
                field(documentLineNo; Rec."Document Line No.")
                {
                    ApplicationArea = All;
                }
                field(orderType; Rec."Order Type")
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
                field(dimensionSetId; Rec."Dimension Set ID")
                {
                    ApplicationArea = All;
                }
                field(assembleToOrder; Rec."Assemble to Order")
                {
                    ApplicationArea = All;
                }
                field(jobNo; Rec."Job No.")
                {
                    ApplicationArea = All;
                }
                field(jobTaskNo; Rec."Job Task No.")
                {
                    ApplicationArea = All;
                }
                field(jobPurchase; Rec."Job Purchase")
                {
                    ApplicationArea = All;
                }
                field(variantCode; Rec."Variant Code")
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
                field(derivedFromBlanketOrder; Rec."Derived from Blanket Order")
                {
                    ApplicationArea = All;
                }
                field(originallyOrderedNo; Rec."Originally Ordered No.")
                {
                    ApplicationArea = All;
                }
                field(originallyOrderedVarCode; Rec."Originally Ordered Var. Code")
                {
                    ApplicationArea = All;
                }
                field(outOfStockSubstitution; Rec."Out-of-Stock Substitution")
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
                field(completelyInvoiced; Rec."Completely Invoiced")
                {
                    ApplicationArea = All;
                }
                field(lastInvoiceDate; Rec."Last Invoice Date")
                {
                    ApplicationArea = All;
                }
                field(appliedEntryToAdjust; Rec."Applied Entry to Adjust")
                {
                    ApplicationArea = All;
                }
                field(correction; Rec.Correction)
                {
                    ApplicationArea = All;
                }
                field(shippedQtyNotReturned; Rec."Shipped Qty. Not Returned")
                {
                    ApplicationArea = All;
                }
                field(prodOrderCompLineNo; Rec."Prod. Order Comp. Line No.")
                {
                    ApplicationArea = All;
                }
                field(serialNo; Rec."Serial No.")
                {
                    ApplicationArea = All;
                }
                field(lotNo; Rec."Lot No.")
                {
                    ApplicationArea = All;
                }
                field(warrantyDate; Rec."Warranty Date")
                {
                    ApplicationArea = All;
                }
                field(expirationDate; Rec."Expiration Date")
                {
                    ApplicationArea = All;
                }
                field(itemTracking; Rec."Item Tracking")
                {
                    ApplicationArea = All;
                }
                field(packageNo; Rec."Package No.")
                {
                    ApplicationArea = All;
                }
                field(returnReasonCode; Rec."Return Reason Code")
                {
                    ApplicationArea = All;
                }
                field(vendorInvoiceNo; Rec."Vendor Invoice No")
                {
                    ApplicationArea = All;
                }
                field(workShiftCode; Rec."Work Shift Code")
                {
                    ApplicationArea = All;
                }
                field(lineProduksi; Rec."Line Produksi")
                {
                    ApplicationArea = All;
                }
                field(dgsSPLink; Rec.DGS_SPLink)
                {
                    ApplicationArea = All;
                }
                field(oldDimensionSetId; Rec."Old Dimension Set ID")
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