page 50234 "API IT PurchaseHeader IA"
{
    PageType = API;

    APIVersion = 'v1.0';
    APIPublisher = 'Bagas';
    APIGroup = 'IT';
    EntitySetName = 'IA_PurchaseHeader';
    EntityCaption = 'IA_PurchaseHeader';
    EntitySetCaption = 'IA_PurchaseHeader';
    EntityName = 'IA_PurchaseHeader';

    ODataKeyFields = SystemId;
    SourceTable = "Purchase Header";

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
                field(no; Rec."No.")
                {
                    ApplicationArea = All;
                }
                field(payToVendorNo; Rec."Pay-to Vendor No.")
                {
                    ApplicationArea = All;
                }
                field(payToName; Rec."Pay-to Name")
                {
                    ApplicationArea = All;
                }
                field(payToName2; Rec."Pay-to Name 2")
                {
                    ApplicationArea = All;
                }
                field(payToAddress; Rec."Pay-to Address")
                {
                    ApplicationArea = All;
                }
                field(payToAddress2; Rec."Pay-to Address 2")
                {
                    ApplicationArea = All;
                }
                field(payToCity; Rec."Pay-to City")
                {
                    ApplicationArea = All;
                }
                field(payToContact; Rec."Pay-to Contact")
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
                field(orderDate; Rec."Order Date")
                {
                    ApplicationArea = All;
                }
                field(postingDate; Rec."Posting Date")
                {
                    ApplicationArea = All;
                }
                field(expectedReceiptDate; Rec."Expected Receipt Date")
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
                field(vendorPostingGroup; Rec."Vendor Posting Group")
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
                field(pricesIncludingVAT; Rec."Prices Including VAT")
                {
                    ApplicationArea = All;
                }
                field(invoiceDiscCode; Rec."Invoice Disc. Code")
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
                field(purchaserCode; Rec."Purchaser Code")
                {
                    ApplicationArea = All;
                }
                field(orderClass; Rec."Order Class")
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
                field(receive; Rec.Receive)
                {
                    ApplicationArea = All;
                }
                field(invoice; Rec.Invoice)
                {
                    ApplicationArea = All;
                }
                field(printPostedDocuments; Rec."Print Posted Documents")
                {
                    ApplicationArea = All;
                }
                field(receivingNo; Rec."Receiving No.")
                {
                    ApplicationArea = All;
                }
                field(postingNo; Rec."Posting No.")
                {
                    ApplicationArea = All;
                }
                field(lastReceivingNo; Rec."Last Receiving No.")
                {
                    ApplicationArea = All;
                }
                field(lastPostingNo; Rec."Last Posting No.")
                {
                    ApplicationArea = All;
                }
                field(vendorOrderNo; Rec."Vendor Order No.")
                {
                    ApplicationArea = All;
                }
                field(vendorShipmentNo; Rec."Vendor Shipment No.")
                {
                    ApplicationArea = All;
                }
                field(vendorInvoiceNo; Rec."Vendor Invoice No.")
                {
                    ApplicationArea = All;
                }
                field(vendorCrMemoNo; Rec."Vendor Cr. Memo No.")
                {
                    ApplicationArea = All;
                }
                field(vatRegistrationNo; Rec."VAT Registration No.")
                {
                    ApplicationArea = All;
                }
                field(sellToCustomerNo; Rec."Sell-to Customer No.")
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
                field(buyFromVendorName; Rec."Buy-from Vendor Name")
                {
                    ApplicationArea = All;
                }
                field(buyFromVendorName2; Rec."Buy-from Vendor Name 2")
                {
                    ApplicationArea = All;
                }
                field(buyFromAddress; Rec."Buy-from Address")
                {
                    ApplicationArea = All;
                }
                field(buyFromAddress2; Rec."Buy-from Address 2")
                {
                    ApplicationArea = All;
                }
                field(buyFromCity; Rec."Buy-from City")
                {
                    ApplicationArea = All;
                }
                field(buyFromContact; Rec."Buy-from Contact")
                {
                    ApplicationArea = All;
                }
                field(payToPostCode; Rec."Pay-to Post Code")
                {
                    ApplicationArea = All;
                }
                field(payToCounty; Rec."Pay-to County")
                {
                    ApplicationArea = All;
                }
                field(payToCountryRegionCode; Rec."Pay-to Country/Region Code")
                {
                    ApplicationArea = All;
                }
                field(buyFromPostCode; Rec."Buy-from Post Code")
                {
                    ApplicationArea = All;
                }
                field(buyFromCounty; Rec."Buy-from County")
                {
                    ApplicationArea = All;
                }
                field(buyFromCountryRegionCode; Rec."Buy-from Country/Region Code")
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
                field(orderAddressCode; Rec."Order Address Code")
                {
                    ApplicationArea = All;
                }
                field(entryPoint; Rec."Entry Point")
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
                field(noSeries; Rec."No. Series")
                {
                    ApplicationArea = All;
                }
                field(postingNoSeries; Rec."Posting No. Series")
                {
                    ApplicationArea = All;
                }
                field(receivingNoSeries; Rec."Receiving No. Series")
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
                field(appliesToId; Rec."Applies-to ID")
                {
                    ApplicationArea = All;
                }
                field(vatBaseDiscountPercent; Rec."VAT Base Discount %")
                {
                    ApplicationArea = All;
                }
                field(status; Rec.Status)
                {
                    ApplicationArea = All;
                }
                field(invoiceDiscountCalculation; Rec."Invoice Discount Calculation")
                {
                    ApplicationArea = All;
                }
                field(invoiceDiscountValue; Rec."Invoice Discount Value")
                {
                    ApplicationArea = All;
                }
                field(sendICDocument; Rec."Send IC Document")
                {
                    ApplicationArea = All;
                }
                field(icStatus; Rec."IC Status")
                {
                    ApplicationArea = All;
                }
                field(buyFromICPartnerCode; Rec."Buy-from IC Partner Code")
                {
                    ApplicationArea = All;
                }
                field(payToICPartnerCode; Rec."Pay-to IC Partner Code")
                {
                    ApplicationArea = All;
                }
                field(icReferenceDocumentNo; Rec."IC Reference Document No.")
                {
                    ApplicationArea = All;
                }
                field(icDirection; Rec."IC Direction")
                {
                    ApplicationArea = All;
                }
                field(prepaymentNo; Rec."Prepayment No.")
                {
                    ApplicationArea = All;
                }
                field(lastPrepaymentNo; Rec."Last Prepayment No.")
                {
                    ApplicationArea = All;
                }
                field(prepmtCrMemoNo; Rec."Prepmt. Cr. Memo No.")
                {
                    ApplicationArea = All;
                }
                field(lastPrepmtCrMemoNo; Rec."Last Prepmt. Cr. Memo No.")
                {
                    ApplicationArea = All;
                }
                field(prepaymentPercent; Rec."Prepayment %")
                {
                    ApplicationArea = All;
                }
                field(prepaymentNoSeries; Rec."Prepayment No. Series")
                {
                    ApplicationArea = All;
                }
                field(compressPrepayment; Rec."Compress Prepayment")
                {
                    ApplicationArea = All;
                }
                field(prepaymentDueDate; Rec."Prepayment Due Date")
                {
                    ApplicationArea = All;
                }
                field(prepmtCrMemoNoSeries; Rec."Prepmt. Cr. Memo No. Series")
                {
                    ApplicationArea = All;
                }
                field(prepmtPostingDescription; Rec."Prepmt. Posting Description")
                {
                    ApplicationArea = All;
                }
                field(prepmtPmtDiscountDate; Rec."Prepmt. Pmt. Discount Date")
                {
                    ApplicationArea = All;
                }
                field(prepmtPaymentTermsCode; Rec."Prepmt. Payment Terms Code")
                {
                    ApplicationArea = All;
                }
                field(prepmtPaymentDiscountPercent; Rec."Prepmt. Payment Discount %")
                {
                    ApplicationArea = All;
                }
                field(quoteNo; Rec."Quote No.")
                {
                    ApplicationArea = All;
                }
                field(jobQueueStatus; Rec."Job Queue Status")
                {
                    ApplicationArea = All;
                }
                field(jobQueueEntryId; Rec."Job Queue Entry ID")
                {
                    ApplicationArea = All;
                }
                field(incomingDocumentEntryNo; Rec."Incoming Document Entry No.")
                {
                    ApplicationArea = All;
                }
                field(creditorNo; Rec."Creditor No.")
                {
                    ApplicationArea = All;
                }
                field(paymentReference; Rec."Payment Reference")
                {
                    ApplicationArea = All;
                }
                field(invoiceReceivedDate; Rec."Invoice Received Date")
                {
                    ApplicationArea = All;
                }
                field(journalTemplName; Rec."Journal Templ. Name")
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
                field(remitToCode; Rec."Remit-to Code")
                {
                    ApplicationArea = All;
                }
                field(docNoOccurrence; Rec."Doc. No. Occurrence")
                {
                    ApplicationArea = All;
                }
                field(campaignNo; Rec."Campaign No.")
                {
                    ApplicationArea = All;
                }
                field(buyFromContactNo; Rec."Buy-from Contact No.")
                {
                    ApplicationArea = All;
                }
                field(payToContactNo; Rec."Pay-to Contact No.")
                {
                    ApplicationArea = All;
                }
                field(responsibilityCenter; Rec."Responsibility Center")
                {
                    ApplicationArea = All;
                }
                field(postingFromWhseRef; Rec."Posting from Whse. Ref.")
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
                field(vendorAuthorizationNo; Rec."Vendor Authorization No.")
                {
                    ApplicationArea = All;
                }
                field(returnShipmentNo; Rec."Return Shipment No.")
                {
                    ApplicationArea = All;
                }
                field(returnShipmentNoSeries; Rec."Return Shipment No. Series")
                {
                    ApplicationArea = All;
                }
                field(ship; Rec.Ship)
                {
                    ApplicationArea = All;
                }
                field(lastReturnShipmentNo; Rec."Last Return Shipment No.")
                {
                    ApplicationArea = All;
                }
                field(priceCalculationMethod; Rec."Price Calculation Method")
                {
                    ApplicationArea = All;
                }
                field(assignedUserId; Rec."Assigned User ID")
                {
                    ApplicationArea = All;
                }
                field(docAmountInclVAT; Rec."Doc. Amount Incl. VAT")
                {
                    ApplicationArea = All;
                }
                field(docAmountVAT; Rec."Doc. Amount VAT")
                {
                    ApplicationArea = All;
                }
                field(remark; Rec.Remark)
                {
                    ApplicationArea = All;
                }
                field(userCreatorSecurityId; Rec."User Creator Security ID")
                {
                    ApplicationArea = All;
                }
                field(userApproverSecurityId; Rec."User Approver Security ID")
                {
                    ApplicationArea = All;
                }
                field(keteranganBPO; Rec."Keterangan BPO")
                {
                    ApplicationArea = All;
                }
                field(userCreatorId; Rec."User Creator ID")
                {
                    ApplicationArea = All;
                }
                field(userApproverId; Rec."User Approver ID")
                {
                    ApplicationArea = All;
                }
                field(internal; Rec.Internal)
                {
                    ApplicationArea = All;
                }
                field(remarkBagas; Rec."Remark Bagas")
                {
                    ApplicationArea = All;
                }
                field(dgsSPLink; Rec.DGS_SPLink)
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