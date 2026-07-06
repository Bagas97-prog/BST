page 50226 "API IT SalesCrMemoHead IA"
{
    PageType = API;

    APIVersion = 'v1.0';
    APIPublisher = 'Bagas';
    APIGroup = 'IT';
    EntitySetName = 'IA_SalesCrMemoHeader';
    EntityCaption = 'IA_SalesCrMemoHeader';
    EntitySetCaption = 'IA_SalesCrMemoHeader';
    EntityName = 'IA_SalesCrMemoHeader';

    ODataKeyFields = SystemId;
    SourceTable = "Sales Cr.Memo Header";

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
                field(sellToCustomerNo; Rec."Sell-to Customer No.")
                {
                    ApplicationArea = All;
                }
                field(billToCustomerNo; Rec."Bill-to Customer No.")
                {
                    ApplicationArea = All;
                }
                field(billToName; Rec."Bill-to Name")
                {
                    ApplicationArea = All;
                }
                field(billToName2; Rec."Bill-to Name 2")
                {
                    ApplicationArea = All;
                }
                field(billToAddress; Rec."Bill-to Address")
                {
                    ApplicationArea = All;
                }
                field(billToAddress2; Rec."Bill-to Address 2")
                {
                    ApplicationArea = All;
                }
                field(billToCity; Rec."Bill-to City")
                {
                    ApplicationArea = All;
                }
                field(billToContact; Rec."Bill-to Contact")
                {
                    ApplicationArea = All;
                }
                field(yourReference; Rec."Your Reference")
                {
                    ApplicationArea = All;
                }
                field(shipToCode; Rec."Ship-to Code")
                {
                    ApplicationArea = All;
                }
                field(shipToName; Rec."Ship-to Name")
                {
                    ApplicationArea = All;
                }
                field(shipToName2; Rec."Ship-to Name 2")
                {
                    ApplicationArea = All;
                }
                field(shipToAddress; Rec."Ship-to Address")
                {
                    ApplicationArea = All;
                }
                field(shipToAddress2; Rec."Ship-to Address 2")
                {
                    ApplicationArea = All;
                }
                field(shipToCity; Rec."Ship-to City")
                {
                    ApplicationArea = All;
                }
                field(shipToContact; Rec."Ship-to Contact")
                {
                    ApplicationArea = All;
                }
                field(postingDate; Rec."Posting Date")
                {
                    ApplicationArea = All;
                }
                field(shipmentDate; Rec."Shipment Date")
                {
                    ApplicationArea = All;
                }
                field(postingDescription; Rec."Posting Description")
                {
                    ApplicationArea = All;
                }
                field(paymentTermsCode; Rec."Payment Terms Code")
                {
                    ApplicationArea = All;
                }
                field(dueDate; Rec."Due Date")
                {
                    ApplicationArea = All;
                }
                field(paymentDiscountPercent; Rec."Payment Discount %")
                {
                    ApplicationArea = All;
                }
                field(pmtDiscountDate; Rec."Pmt. Discount Date")
                {
                    ApplicationArea = All;
                }
                field(shipmentMethodCode; Rec."Shipment Method Code")
                {
                    ApplicationArea = All;
                }
                field(locationCode; Rec."Location Code")
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
                field(customerPostingGroup; Rec."Customer Posting Group")
                {
                    ApplicationArea = All;
                }
                field(currencyCode; Rec."Currency Code")
                {
                    ApplicationArea = All;
                }
                field(currencyFactor; Rec."Currency Factor")
                {
                    ApplicationArea = All;
                }
                field(customerPriceGroup; Rec."Customer Price Group")
                {
                    ApplicationArea = All;
                }
                field(pricesIncludingVAT; Rec."Prices Including VAT")
                {
                    ApplicationArea = All;
                }
                field(invoiceDiscCode; Rec."Invoice Disc. Code")
                {
                    ApplicationArea = All;
                }
                field(customerDiscGroup; Rec."Customer Disc. Group")
                {
                    ApplicationArea = All;
                }
                field(languageCode; Rec."Language Code")
                {
                    ApplicationArea = All;
                }
                field(formatRegion; Rec."Format Region")
                {
                    ApplicationArea = All;
                }
                field(salespersonCode; Rec."Salesperson Code")
                {
                    ApplicationArea = All;
                }
                field(noPrinted; Rec."No. Printed")
                {
                    ApplicationArea = All;
                }
                field(onHold; Rec."On Hold")
                {
                    ApplicationArea = All;
                }
                field(appliesToDocType; Rec."Applies-to Doc. Type")
                {
                    ApplicationArea = All;
                }
                field(appliesToDocNo; Rec."Applies-to Doc. No.")
                {
                    ApplicationArea = All;
                }
                field(balAccountNo; Rec."Bal. Account No.")
                {
                    ApplicationArea = All;
                }
                field(vatRegistrationNo; Rec."VAT Registration No.")
                {
                    ApplicationArea = All;
                }
                field(registrationNumber; Rec."Registration Number")
                {
                    ApplicationArea = All;
                }
                field(reasonCode; Rec."Reason Code")
                {
                    ApplicationArea = All;
                }
                field(genBusPostingGroup; Rec."Gen. Bus. Posting Group")
                {
                    ApplicationArea = All;
                }
                field(eu3PartyTrade; Rec."EU 3-Party Trade")
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
                field(vatCountryRegionCode; Rec."VAT Country/Region Code")
                {
                    ApplicationArea = All;
                }
                field(sellToCustomerName; Rec."Sell-to Customer Name")
                {
                    ApplicationArea = All;
                }
                field(sellToCustomerName2; Rec."Sell-to Customer Name 2")
                {
                    ApplicationArea = All;
                }
                field(sellToAddress; Rec."Sell-to Address")
                {
                    ApplicationArea = All;
                }
                field(sellToAddress2; Rec."Sell-to Address 2")
                {
                    ApplicationArea = All;
                }
                field(sellToCity; Rec."Sell-to City")
                {
                    ApplicationArea = All;
                }
                field(sellToContact; Rec."Sell-to Contact")
                {
                    ApplicationArea = All;
                }
                field(billToPostCode; Rec."Bill-to Post Code")
                {
                    ApplicationArea = All;
                }
                field(billToCounty; Rec."Bill-to County")
                {
                    ApplicationArea = All;
                }
                field(billToCountryRegionCode; Rec."Bill-to Country/Region Code")
                {
                    ApplicationArea = All;
                }
                field(sellToPostCode; Rec."Sell-to Post Code")
                {
                    ApplicationArea = All;
                }
                field(sellToCounty; Rec."Sell-to County")
                {
                    ApplicationArea = All;
                }
                field(sellToCountryRegionCode; Rec."Sell-to Country/Region Code")
                {
                    ApplicationArea = All;
                }
                field(shipToPostCode; Rec."Ship-to Post Code")
                {
                    ApplicationArea = All;
                }
                field(shipToCounty; Rec."Ship-to County")
                {
                    ApplicationArea = All;
                }
                field(shipToCountryRegionCode; Rec."Ship-to Country/Region Code")
                {
                    ApplicationArea = All;
                }
                field(balAccountType; Rec."Bal. Account Type")
                {
                    ApplicationArea = All;
                }
                field(exitPoint; Rec."Exit Point")
                {
                    ApplicationArea = All;
                }
                field(correction; Rec.Correction)
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
                field(paymentMethodCode; Rec."Payment Method Code")
                {
                    ApplicationArea = All;
                }
                field(shippingAgentCode; Rec."Shipping Agent Code")
                {
                    ApplicationArea = All;
                }
                field(packageTrackingNo; Rec."Package Tracking No.")
                {
                    ApplicationArea = All;
                }
                field(preAssignedNoSeries; Rec."Pre-Assigned No. Series")
                {
                    ApplicationArea = All;
                }
                field(noSeries; Rec."No. Series")
                {
                    ApplicationArea = All;
                }
                field(preAssignedNo; Rec."Pre-Assigned No.")
                {
                    ApplicationArea = All;
                }
                field(userId; Rec."User ID")
                {
                    ApplicationArea = All;
                }
                field(sourceCode; Rec."Source Code")
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
                field(vatBusPostingGroup; Rec."VAT Bus. Posting Group")
                {
                    ApplicationArea = All;
                }
                field(vatBaseDiscountPercent; Rec."VAT Base Discount %")
                {
                    ApplicationArea = All;
                }
                field(prepaymentOrderNo; Rec."Prepayment Order No.")
                {
                    ApplicationArea = All;
                }
                field(companyBankAccountCode; Rec."Company Bank Account Code")
                {
                    ApplicationArea = All;
                }
                field(altVatRegistrationNo; Rec."Alt. VAT Registration No.")
                {
                    ApplicationArea = All;
                }
                field(altGenBusPostingGroup; Rec."Alt. Gen. Bus Posting Group")
                {
                    ApplicationArea = All;
                }
                field(altVatBusPostingGroup; Rec."Alt. VAT Bus Posting Group")
                {
                    ApplicationArea = All;
                }
                field(sellToPhoneNo; Rec."Sell-to Phone No.")
                {
                    ApplicationArea = All;
                }
                field(sellToEMail; Rec."Sell-to E-Mail")
                {
                    ApplicationArea = All;
                }
                field(vatReportingDate; Rec."VAT Reporting Date")
                {
                    ApplicationArea = All;
                }
                field(shipToPhoneNo; Rec."Ship-to Phone No.")
                {
                    ApplicationArea = All;
                }
                field(dimensionSetId; Rec."Dimension Set ID")
                {
                    ApplicationArea = All;
                }
                field("otherDescription"; Rec."Other Description")
                {
                    ApplicationArea = All;
                }
                field(documentExchangeIdentifier; Rec."Document Exchange Identifier")
                {
                    ApplicationArea = All;
                }
                field(documentExchangeStatus; Rec."Document Exchange Status")
                {
                    ApplicationArea = All;
                }
                field(docExchOriginalIdentifier; Rec."Doc. Exch. Original Identifier")
                {
                    ApplicationArea = All;
                }
                field(custLedgerEntryNo; Rec."Cust. Ledger Entry No.")
                {
                    ApplicationArea = All;
                }
                field(campaignNo; Rec."Campaign No.")
                {
                    ApplicationArea = All;
                }
                field(sellToContactNo; Rec."Sell-to Contact No.")
                {
                    ApplicationArea = All;
                }
                field(billToContactNo; Rec."Bill-to Contact No.")
                {
                    ApplicationArea = All;
                }
                field(opportunityNo; Rec."Opportunity No.")
                {
                    ApplicationArea = All;
                }
                field(responsibilityCenter; Rec."Responsibility Center")
                {
                    ApplicationArea = All;
                }
                field(shippingAgentServiceCode; Rec."Shipping Agent Service Code")
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
                field(noFakturPajak; Rec."No. Faktur Pajak")
                {
                    ApplicationArea = All;
                }
                field(tanggalFakturPajak; Rec."Tanggal Faktur Pajak")
                {
                    ApplicationArea = All;
                }
                field(tanggalLaporPajak; Rec."Tanggal Lapor Pajak")
                {
                    ApplicationArea = All;
                }
                field(nilaiDPP; Rec."Nilai DPP")
                {
                    ApplicationArea = All;
                }
                field(nilaiPPN; Rec."Nilai PPN")
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