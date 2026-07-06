page 50229 "API IT Item IA"
{
    PageType = API;

    APIVersion = 'v1.0';
    APIPublisher = 'Bagas';
    APIGroup = 'IT';
    EntitySetName = 'IA_Item';
    EntityCaption = 'IA_Item';
    EntitySetCaption = 'IA_Item';
    EntityName = 'IA_Item';

    ODataKeyFields = SystemId;
    SourceTable = Item;

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
                field(no; Rec."No.")
                {
                    ApplicationArea = All;
                }
                field(no2; Rec."No. 2")
                {
                    ApplicationArea = All;
                }
                field(description; Rec.Description)
                {
                    ApplicationArea = All;
                }
                field(searchDescription; Rec."Search Description")
                {
                    ApplicationArea = All;
                }
                field(description2; Rec."Description 2")
                {
                    ApplicationArea = All;
                }
                field(baseUnitOfMeasure; Rec."Base Unit of Measure")
                {
                    ApplicationArea = All;
                }
                field(priceUnitConversion; Rec."Price Unit Conversion")
                {
                    ApplicationArea = All;
                }
                field(type; Rec."Type")
                {
                    ApplicationArea = All;
                }
                field(inventoryPostingGroup; Rec."Inventory Posting Group")
                {
                    ApplicationArea = All;
                }
                field(shelfNo; Rec."Shelf No.")
                {
                    ApplicationArea = All;
                }
                field(itemDiscGroup; Rec."Item Disc. Group")
                {
                    ApplicationArea = All;
                }
                field(allowInvoiceDisc; Rec."Allow Invoice Disc.")
                {
                    ApplicationArea = All;
                }
                field(statisticsGroup; Rec."Statistics Group")
                {
                    ApplicationArea = All;
                }
                field(commissionGroup; Rec."Commission Group")
                {
                    ApplicationArea = All;
                }
                field(unitPrice; Rec."Unit Price")
                {
                    ApplicationArea = All;
                }
                field(priceProfitCalculation; Rec."Price/Profit Calculation")
                {
                    ApplicationArea = All;
                }
                field(profitPercent; Rec."Profit %")
                {
                    ApplicationArea = All;
                }
                field(costingMethod; Rec."Costing Method")
                {
                    ApplicationArea = All;
                }
                field(unitCost; Rec."Unit Cost")
                {
                    ApplicationArea = All;
                }
                field(standardCost; Rec."Standard Cost")
                {
                    ApplicationArea = All;
                }
                field(lastDirectCost; Rec."Last Direct Cost")
                {
                    ApplicationArea = All;
                }
                field(indirectCostPercent; Rec."Indirect Cost %")
                {
                    ApplicationArea = All;
                }
                field(costIsAdjusted; Rec."Cost is Adjusted")
                {
                    ApplicationArea = All;
                }
                field(allowOnlineAdjustment; Rec."Allow Online Adjustment")
                {
                    ApplicationArea = All;
                }
                field(vendorNo; Rec."Vendor No.")
                {
                    ApplicationArea = All;
                }
                field(vendorItemNo; Rec."Vendor Item No.")
                {
                    ApplicationArea = All;
                }
                field(leadTimeCalculation; Rec."Lead Time Calculation")
                {
                    ApplicationArea = All;
                }
                field(reorderPoint; Rec."Reorder Point")
                {
                    ApplicationArea = All;
                }
                field(maximumInventory; Rec."Maximum Inventory")
                {
                    ApplicationArea = All;
                }
                field(reorderQuantity; Rec."Reorder Quantity")
                {
                    ApplicationArea = All;
                }
                field(alternativeItemNo; Rec."Alternative Item No.")
                {
                    ApplicationArea = All;
                }
                field(unitListPrice; Rec."Unit List Price")
                {
                    ApplicationArea = All;
                }
                field(dutyDuePercent; Rec."Duty Due %")
                {
                    ApplicationArea = All;
                }
                field(dutyCode; Rec."Duty Code")
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
                field(durability; Rec.Durability)
                {
                    ApplicationArea = All;
                }
                field(freightType; Rec."Freight Type")
                {
                    ApplicationArea = All;
                }
                field(tariffNo; Rec."Tariff No.")
                {
                    ApplicationArea = All;
                }
                field(dutyUnitConversion; Rec."Duty Unit Conversion")
                {
                    ApplicationArea = All;
                }
                field(countryRegionPurchasedCode; Rec."Country/Region Purchased Code")
                {
                    ApplicationArea = All;
                }
                field(budgetQuantity; Rec."Budget Quantity")
                {
                    ApplicationArea = All;
                }
                field(budgetedAmount; Rec."Budgeted Amount")
                {
                    ApplicationArea = All;
                }
                field(budgetProfit; Rec."Budget Profit")
                {
                    ApplicationArea = All;
                }
                field(blocked; Rec.Blocked)
                {
                    ApplicationArea = All;
                }
                field(blockReason; Rec."Block Reason")
                {
                    ApplicationArea = All;
                }
                field(lastDateTimeModified; Rec."Last DateTime Modified")
                {
                    ApplicationArea = All;
                }
                field(lastDateModified; Rec."Last Date Modified")
                {
                    ApplicationArea = All;
                }
                field(lastTimeModified; Rec."Last Time Modified")
                {
                    ApplicationArea = All;
                }
                field(priceIncludesVAT; Rec."Price Includes VAT")
                {
                    ApplicationArea = All;
                }
                field(vatBusPostingGrPrice; Rec."VAT Bus. Posting Gr. (Price)")
                {
                    ApplicationArea = All;
                }
                field(genProdPostingGroup; Rec."Gen. Prod. Posting Group")
                {
                    ApplicationArea = All;
                }
                field(picture; Rec.Picture)
                {
                    ApplicationArea = All;
                    Caption = 'Picture MediaSet ID';
                }
                field(countryRegionOfOriginCode; Rec."Country/Region of Origin Code")
                {
                    ApplicationArea = All;
                }
                field(automaticExtTexts; Rec."Automatic Ext. Texts")
                {
                    ApplicationArea = All;
                }
                field(noSeries; Rec."No. Series")
                {
                    ApplicationArea = All;
                }
                field(taxGroupCode; Rec."Tax Group Code")
                {
                    ApplicationArea = All;
                }
                field(vatProdPostingGroup; Rec."VAT Prod. Posting Group")
                {
                    ApplicationArea = All;
                }
                field(reserve; Rec.Reserve)
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
                field(stockoutWarning; Rec."Stockout Warning")
                {
                    ApplicationArea = All;
                }
                field(preventNegativeInventory; Rec."Prevent Negative Inventory")
                {
                    ApplicationArea = All;
                }
                field(variantMandatoryIfExists; Rec."Variant Mandatory if Exists")
                {
                    ApplicationArea = All;
                }
                field(applicationWkshUserID; Rec."Application Wksh. User ID")
                {
                    ApplicationArea = All;
                }
                field(assemblyPolicy; Rec."Assembly Policy")
                {
                    ApplicationArea = All;
                }
                field(gtin; Rec.GTIN)
                {
                    ApplicationArea = All;
                }
                field(defaultDeferralTemplateCode; Rec."Default Deferral Template Code")
                {
                    ApplicationArea = All;
                }
                field(lowLevelCode; Rec."Low-Level Code")
                {
                    ApplicationArea = All;
                }
                field(lotSize; Rec."Lot Size")
                {
                    ApplicationArea = All;
                }
                field(serialNos; Rec."Serial Nos.")
                {
                    ApplicationArea = All;
                }
                field(lastUnitCostCalcDate; Rec."Last Unit Cost Calc. Date")
                {
                    ApplicationArea = All;
                }
                field(rolledUpMaterialCost; Rec."Rolled-up Material Cost")
                {
                    ApplicationArea = All;
                }
                field(rolledUpCapacityCost; Rec."Rolled-up Capacity Cost")
                {
                    ApplicationArea = All;
                }
                field(scrapPercent; Rec."Scrap %")
                {
                    ApplicationArea = All;
                }
                field(rolledUpMatNonInvtCost; Rec."Rolled-up Mat. Non-Invt. Cost")
                {
                    ApplicationArea = All;
                }
                field(inventoryValueZero; Rec."Inventory Value Zero")
                {
                    ApplicationArea = All;
                }
                field(discreteOrderQuantity; Rec."Discrete Order Quantity")
                {
                    ApplicationArea = All;
                }
                field(minimumOrderQuantity; Rec."Minimum Order Quantity")
                {
                    ApplicationArea = All;
                }
                field(maximumOrderQuantity; Rec."Maximum Order Quantity")
                {
                    ApplicationArea = All;
                }
                field(safetyStockQuantity; Rec."Safety Stock Quantity")
                {
                    ApplicationArea = All;
                }
                field(orderMultiple; Rec."Order Multiple")
                {
                    ApplicationArea = All;
                }
                field(safetyLeadTime; Rec."Safety Lead Time")
                {
                    ApplicationArea = All;
                }
                field(flushingMethod; Rec."Flushing Method")
                {
                    ApplicationArea = All;
                }
                field(replenishmentSystem; Rec."Replenishment System")
                {
                    ApplicationArea = All;
                }
                field(roundingPrecision; Rec."Rounding Precision")
                {
                    ApplicationArea = All;
                }
                field(salesUnitOfMeasure; Rec."Sales Unit of Measure")
                {
                    ApplicationArea = All;
                }
                field(purchUnitOfMeasure; Rec."Purch. Unit of Measure")
                {
                    ApplicationArea = All;
                }
                field(timeBucket; Rec."Time Bucket")
                {
                    ApplicationArea = All;
                }
                field(reorderingPolicy; Rec."Reordering Policy")
                {
                    ApplicationArea = All;
                }
                field(includeInventory; Rec."Include Inventory")
                {
                    ApplicationArea = All;
                }
                field(manufacturingPolicy; Rec."Manufacturing Policy")
                {
                    ApplicationArea = All;
                }
                field(reschedulingPeriod; Rec."Rescheduling Period")
                {
                    ApplicationArea = All;
                }
                field(lotAccumulationPeriod; Rec."Lot Accumulation Period")
                {
                    ApplicationArea = All;
                }
                field(dampenerPeriod; Rec."Dampener Period")
                {
                    ApplicationArea = All;
                }
                field(dampenerQuantity; Rec."Dampener Quantity")
                {
                    ApplicationArea = All;
                }
                field(overflowLevel; Rec."Overflow Level")
                {
                    ApplicationArea = All;
                }
                field(manufacturerCode; Rec."Manufacturer Code")
                {
                    ApplicationArea = All;
                }
                field(itemCategoryCode; Rec."Item Category Code")
                {
                    ApplicationArea = All;
                }
                field(createdFromNonstockItem; Rec."Created From Nonstock Item")
                {
                    ApplicationArea = All;
                }
                field(purchasingCode; Rec."Purchasing Code")
                {
                    ApplicationArea = All;
                }
                field(excludedFromCostAdjustment; Rec."Excluded from Cost Adjustment")
                {
                    ApplicationArea = All;
                }
                field(serviceItemGroup; Rec."Service Item Group")
                {
                    ApplicationArea = All;
                }
                field(itemTrackingCode; Rec."Item Tracking Code")
                {
                    ApplicationArea = All;
                }
                field(lotNos; Rec."Lot Nos.")
                {
                    ApplicationArea = All;
                }
                field(expirationCalculation; Rec."Expiration Calculation")
                {
                    ApplicationArea = All;
                }
                field(warehouseClassCode; Rec."Warehouse Class Code")
                {
                    ApplicationArea = All;
                }
                field(specialEquipmentCode; Rec."Special Equipment Code")
                {
                    ApplicationArea = All;
                }
                field(putAwayTemplateCode; Rec."Put-away Template Code")
                {
                    ApplicationArea = All;
                }
                field(putAwayUnitOfMeasureCode; Rec."Put-away Unit of Measure Code")
                {
                    ApplicationArea = All;
                }
                field(physInvtCountingPeriodCode; Rec."Phys Invt Counting Period Code")
                {
                    ApplicationArea = All;
                }
                field(lastCountingPeriodUpdate; Rec."Last Counting Period Update")
                {
                    ApplicationArea = All;
                }
                field(useCrossDocking; Rec."Use Cross-Docking")
                {
                    ApplicationArea = All;
                }
                field(nextCountingStartDate; Rec."Next Counting Start Date")
                {
                    ApplicationArea = All;
                }
                field(nextCountingEndDate; Rec."Next Counting End Date")
                {
                    ApplicationArea = All;
                }
                field(unitOfMeasureId; Rec."Unit of Measure Id")
                {
                    ApplicationArea = All;
                }
                field(taxGroupId; Rec."Tax Group Id")
                {
                    ApplicationArea = All;
                }
                field(salesBlocked; Rec."Sales Blocked")
                {
                    ApplicationArea = All;
                }
                field(purchasingBlocked; Rec."Purchasing Blocked")
                {
                    ApplicationArea = All;
                }
                field(itemCategoryId; Rec."Item Category Id")
                {
                    ApplicationArea = All;
                }
                field(inventoryPostingGroupId; Rec."Inventory Posting Group Id")
                {
                    ApplicationArea = All;
                }
                field(genProdPostingGroupId; Rec."Gen. Prod. Posting Group Id")
                {
                    ApplicationArea = All;
                }
                field(serviceBlocked; Rec."Service Blocked")
                {
                    ApplicationArea = All;
                }
                field(productionBlocked; Rec."Production Blocked")
                {
                    ApplicationArea = All;
                }
                field(overReceiptCode; Rec."Over-Receipt Code")
                {
                    ApplicationArea = All;
                }
                field(parentItemCode; Rec."Parent Item Code")
                {
                    ApplicationArea = All;
                }
                field(parentItemName; Rec."Parent Item Name")
                {
                    ApplicationArea = All;
                }
                field(konversi; Rec.Konversi)
                {
                    ApplicationArea = All;
                }
                field(brand; Rec.Brand)
                {
                    ApplicationArea = All;
                }
                field(tempShortDim9Filter; Rec."Temp Short Dim 9 Filter")
                {
                    ApplicationArea = All;
                }
                field(categoryProduct; Rec."Category Product")
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
                field(routingNo; Rec."Routing No.")
                {
                    ApplicationArea = All;
                }
                field(productionBOMNo; Rec."Production BOM No.")
                {
                    ApplicationArea = All;
                }
                field(singleLevelMaterialCost; Rec."Single-Level Material Cost")
                {
                    ApplicationArea = All;
                }
                field(singleLevelCapacityCost; Rec."Single-Level Capacity Cost")
                {
                    ApplicationArea = All;
                }
                field(singleLevelSubcontrdCost; Rec."Single-Level Subcontrd. Cost")
                {
                    ApplicationArea = All;
                }
                field(singleLevelCapOvhdCost; Rec."Single-Level Cap. Ovhd Cost")
                {
                    ApplicationArea = All;
                }
                field(singleLevelMfgOvhdCost; Rec."Single-Level Mfg. Ovhd Cost")
                {
                    ApplicationArea = All;
                }
                field(overheadRate; Rec."Overhead Rate")
                {
                    ApplicationArea = All;
                }
                field(rolledUpSubcontractedCost; Rec."Rolled-up Subcontracted Cost")
                {
                    ApplicationArea = All;
                }
                field(rolledUpMfgOvhdCost; Rec."Rolled-up Mfg. Ovhd Cost")
                {
                    ApplicationArea = All;
                }
                field(rolledUpCapOverheadCost; Rec."Rolled-up Cap. Overhead Cost")
                {
                    ApplicationArea = All;
                }
                field(orderTrackingPolicy; Rec."Order Tracking Policy")
                {
                    ApplicationArea = All;
                }
                field(singleLvlMatNonInvtCost; Rec."Single-Lvl Mat. Non-Invt. Cost")
                {
                    ApplicationArea = All;
                }
                field(allowWhseOverpick; Rec."Allow Whse. Overpick")
                {
                    ApplicationArea = All;
                }
                field(critical; Rec.Critical)
                {
                    ApplicationArea = All;
                }
                field(commonItemNo; Rec."Common Item No.")
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