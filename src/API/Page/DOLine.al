page 50241 "API IT DO Line"
{
    PageType = API;

    APIVersion = 'v1.0';
    APIPublisher = 'Bagas';
    APIGroup = 'IT';
    EntitySetName = 'DOLine';
    EntityCaption = 'DO Line';
    EntitySetCaption = 'DO Line';
    EntityName = 'DOLine';

    ODataKeyFields = SystemId;
    SourceTable = "Sales Shipment Line";

    Extensible = false;
    DelayedInsert = false;
    InsertAllowed = false;
    ModifyAllowed = false;
    DeleteAllowed = false;
    Editable = false;
    DataAccessIntent = ReadOnly;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field(sellToCustomerNo; Rec."Sell-to Customer No.")
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
                field(shipmentDate; Rec."Shipment Date")
                {
                    ApplicationArea = All;
                }
                field(description; Rec."Description")
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
                field(quantity; Rec."Quantity")
                {
                    ApplicationArea = All;
                }
                field(unitPrice; Rec."Unit Price")
                {
                    ApplicationArea = All;
                }
                field(unitCostLcy; Rec."Unit Cost (LCY)")
                {
                    ApplicationArea = All;
                }
                field(vat; Rec."VAT %")
                {
                    ApplicationArea = All;
                }
                field(lineDiscount; Rec."Line Discount %")
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
                field(itemShptEntryNo; Rec."Item Shpt. Entry No.")
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
                field(qtyShippedNotInvoiced; Rec."Qty. Shipped Not Invoiced")
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
                field(billToCustomerNo; Rec."Bill-to Customer No.")
                {
                    ApplicationArea = All;
                }
                field(purchaseOrderNo; Rec."Purchase Order No.")
                {
                    ApplicationArea = All;
                }
                field(purchOrderLineNo; Rec."Purch. Order Line No.")
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
                field(exitPoint; Rec."Exit Point")
                {
                    ApplicationArea = All;
                }
                // field(area; Rec."Area")
                // {
                //     ApplicationArea = All;
                // }
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
                field(authorizedForCreditCard; Rec."Authorized for Credit Card")
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
                field(depreciationBookCode; Rec."Depreciation Book Code")
                {
                    ApplicationArea = All;
                }
                field(deprUntilFaPostingDate; Rec."Depr. until FA Posting Date")
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
                field(nonstock; Rec."Nonstock")
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
                field(requestedDeliveryDate; Rec."Requested Delivery Date")
                {
                    ApplicationArea = All;
                }
                field(promisedDeliveryDate; Rec."Promised Delivery Date")
                {
                    ApplicationArea = All;
                }
                field(shippingTime; Rec."Shipping Time")
                {
                    ApplicationArea = All;
                }
                field(outboundWhseHandlingTime; Rec."Outbound Whse. Handling Time")
                {
                    ApplicationArea = All;
                }
                field(plannedDeliveryDate; Rec."Planned Delivery Date")
                {
                    ApplicationArea = All;
                }
                field(plannedShipmentDate; Rec."Planned Shipment Date")
                {
                    ApplicationArea = All;
                }
                field(externalDocumentNo; Rec."External Document No.")
                {
                    ApplicationArea = All;
                }
                field(yourReference; Rec."Your Reference")
                {
                    ApplicationArea = All;
                }
                field(applFromItemEntry; Rec."Appl.-from Item Entry")
                {
                    ApplicationArea = All;
                }
                field(itemChargeBaseAmount; Rec."Item Charge Base Amount")
                {
                    ApplicationArea = All;
                }
                field(correction; Rec."Correction")
                {
                    ApplicationArea = All;
                }
                // field(sustAccountNo; Rec."Sust. Account No.")
                // {
                //     ApplicationArea = All;
                // }
                // field(sustAccountName; Rec."Sust. Account Name")
                // {
                //     ApplicationArea = All;
                // }
                // field(sustAccountCategory; Rec."Sust. Account Category")
                // {
                //     ApplicationArea = All;
                // }
                // field(sustAccountSubcategory; Rec."Sust. Account Subcategory")
                // {
                //     ApplicationArea = All;
                // }
                // field(co2ePerUnit; Rec."CO2e per Unit")
                // {
                //     ApplicationArea = All;
                // }
                // field(totalCo2e; Rec."Total CO2e")
                // {
                //     ApplicationArea = All;
                // }
                // field(eprFeePerUnit; Rec."EPR Fee per Unit")
                // {
                //     ApplicationArea = All;
                // }
                // field(totalEprFee; Rec."Total EPR Fee")
                // {
                //     ApplicationArea = All;
                // }
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
                field(documentId; Rec."Document Id")
                {
                    ApplicationArea = All;
                }
                // field(shpfyOrderLineId; Rec."Shpfy Order Line Id")
                // {
                //     ApplicationArea = All;
                // }
                // field(shpfyOrderNo; Rec."Shpfy Order No.")
                // {
                //     ApplicationArea = All;
                // }
                field(dgsBonus; Rec."DGS Bonus")
                {
                    ApplicationArea = All;
                }
                field(dgsTaxDppNilaiLain; Rec."DGS Tax DPP Nilai Lain")
                {
                    ApplicationArea = All;
                }
                // field(systemid; Rec."$systemId")
                // {
                //     ApplicationArea = All;
                // }
                // field(systemId; Rec.Systemid)
                // {
                //     ApplicationArea = All;
                // }
                field(systemCreatedAt; Rec.Systemcreatedat)
                {
                    ApplicationArea = All;
                }
                field(systemCreatedBy; Rec.Systemcreatedby)
                {
                    ApplicationArea = All;
                }
                field(systemModifiedAt; Rec.Systemmodifiedat)
                {
                    ApplicationArea = All;
                }
                field(systemModifiedBy; Rec.Systemmodifiedby)
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}