page 50222 "API IT Customer IA"
{
    PageType = API;

    APIVersion = 'v1.0';
    APIPublisher = 'Bagas';
    APIGroup = 'IT';
    EntitySetName = 'IA_Customer';
    EntityCaption = 'IA_Customer';
    EntitySetCaption = 'IA_Customer';
    EntityName = 'IA_Customer';

    ODataKeyFields = SystemId;
    SourceTable = Customer;

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
                field(name; Rec.Name)
                {
                    ApplicationArea = All;
                }
                field(searchName; Rec."Search Name")
                {
                    ApplicationArea = All;
                }
                field(name2; Rec."Name 2")
                {
                    ApplicationArea = All;
                }
                field(address; Rec.Address)
                {
                    ApplicationArea = All;
                }
                field(address2; Rec."Address 2")
                {
                    ApplicationArea = All;
                }
                field(city; Rec.City)
                {
                    ApplicationArea = All;
                }
                field(contact; Rec.Contact)
                {
                    ApplicationArea = All;
                }
                field(phoneNo; Rec."Phone No.")
                {
                    ApplicationArea = All;
                }
                field(telexNo; Rec."Telex No.")
                {
                    ApplicationArea = All;
                }
                field(documentSendingProfile; Rec."Document Sending Profile")
                {
                    ApplicationArea = All;
                }
                field(shipToCode; Rec."Ship-to Code")
                {
                    ApplicationArea = All;
                }
                field(ourAccountNo; Rec."Our Account No.")
                {
                    ApplicationArea = All;
                }
                field(territoryCode; Rec."Territory Code")
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
                field(chainName; Rec."Chain Name")
                {
                    ApplicationArea = All;
                }
                field(budgetedAmount; Rec."Budgeted Amount")
                {
                    ApplicationArea = All;
                }
                field(creditLimitLCY; Rec."Credit Limit (LCY)")
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
                field(customerPriceGroup; Rec."Customer Price Group")
                {
                    ApplicationArea = All;
                }
                field(languageCode; Rec."Language Code")
                {
                    ApplicationArea = All;
                }
                field(registrationNumber; Rec."Registration Number")
                {
                    ApplicationArea = All;
                }
                field(statisticsGroup; Rec."Statistics Group")
                {
                    ApplicationArea = All;
                }
                field(paymentTermsCode; Rec."Payment Terms Code")
                {
                    ApplicationArea = All;
                }
                field(finChargeTermsCode; Rec."Fin. Charge Terms Code")
                {
                    ApplicationArea = All;
                }
                field(salespersonCode; Rec."Salesperson Code")
                {
                    ApplicationArea = All;
                }
                field(shipmentMethodCode; Rec."Shipment Method Code")
                {
                    ApplicationArea = All;
                }
                field(shippingAgentCode; Rec."Shipping Agent Code")
                {
                    ApplicationArea = All;
                }
                field(placeOfExport; Rec."Place of Export")
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
                field(countryRegionCode; Rec."Country/Region Code")
                {
                    ApplicationArea = All;
                }
                field(collectionMethod; Rec."Collection Method")
                {
                    ApplicationArea = All;
                }
                field(amount; Rec.Amount)
                {
                    ApplicationArea = All;
                    Caption = 'Amount (FlowField)';
                }
                field(blocked; Rec.Blocked)
                {
                    ApplicationArea = All;
                }
                field(invoiceCopies; Rec."Invoice Copies")
                {
                    ApplicationArea = All;
                }
                field(lastStatementNo; Rec."Last Statement No.")
                {
                    ApplicationArea = All;
                }
                field(printStatements; Rec."Print Statements")
                {
                    ApplicationArea = All;
                }
                field(billToCustomerNo; Rec."Bill-to Customer No.")
                {
                    ApplicationArea = All;
                }
                field(priority; Rec.Priority)
                {
                    ApplicationArea = All;
                }
                field(paymentMethodCode; Rec."Payment Method Code")
                {
                    ApplicationArea = All;
                }
                field(formatRegion; Rec."Format Region")
                {
                    ApplicationArea = All;
                }
                field(lastModifiedDateTime; Rec."Last Modified Date Time")
                {
                    ApplicationArea = All;
                }
                field(lastDateModified; Rec."Last Date Modified")
                {
                    ApplicationArea = All;
                }
                field(applicationMethod; Rec."Application Method")
                {
                    ApplicationArea = All;
                }
                field(pricesIncludingVAT; Rec."Prices Including VAT")
                {
                    ApplicationArea = All;
                }
                field(locationCode; Rec."Location Code")
                {
                    ApplicationArea = All;
                }
                field(faxNo; Rec."Fax No.")
                {
                    ApplicationArea = All;
                }
                field(telexAnswerBack; Rec."Telex Answer Back")
                {
                    ApplicationArea = All;
                }
                field(vatRegistrationNo; Rec."VAT Registration No.")
                {
                    ApplicationArea = All;
                }
                field(combineShipments; Rec."Combine Shipments")
                {
                    ApplicationArea = All;
                }
                field(genBusPostingGroup; Rec."Gen. Bus. Posting Group")
                {
                    ApplicationArea = All;
                }
                field(gln; Rec.GLN)
                {
                    ApplicationArea = All;
                }
                field(postCode; Rec."Post Code")
                {
                    ApplicationArea = All;
                }
                field(county; Rec.County)
                {
                    ApplicationArea = All;
                }
                field(eoriNumber; Rec."EORI Number")
                {
                    ApplicationArea = All;
                }
                field(useGLNInElectronicDocument; Rec."Use GLN in Electronic Document")
                {
                    ApplicationArea = All;
                }
                field(eMail; Rec."E-Mail")
                {
                    ApplicationArea = All;
                }
                field(homePage; Rec."Home Page")
                {
                    ApplicationArea = All;
                }
                field(reminderTermsCode; Rec."Reminder Terms Code")
                {
                    ApplicationArea = All;
                }
                field(noSeries; Rec."No. Series")
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
                field(reserve; Rec.Reserve)
                {
                    ApplicationArea = All;
                }
                field(blockPaymentTolerance; Rec."Block Payment Tolerance")
                {
                    ApplicationArea = All;
                }
                field(icPartnerCode; Rec."IC Partner Code")
                {
                    ApplicationArea = All;
                }
                field(prepaymentPercent; Rec."Prepayment %")
                {
                    ApplicationArea = All;
                }
                field(partnerType; Rec."Partner Type")
                {
                    ApplicationArea = All;
                }
                field(intrastatPartnerType; Rec."Intrastat Partner Type")
                {
                    ApplicationArea = All;
                }
                field(excludeFromPmtPractices; Rec."Exclude from Pmt. Practices")
                {
                    ApplicationArea = All;
                }
                field(image; Rec.Image)
                {
                    ApplicationArea = All;
                }
                field(privacyBlocked; Rec."Privacy Blocked")
                {
                    ApplicationArea = All;
                }
                field(disableSearchByName; Rec."Disable Search by Name")
                {
                    ApplicationArea = All;
                }
                field(allowMultiplePostingGroups; Rec."Allow Multiple Posting Groups")
                {
                    ApplicationArea = All;
                }
                field(preferredBankAccountCode; Rec."Preferred Bank Account Code")
                {
                    ApplicationArea = All;
                }
                field(primaryContactNo; Rec."Primary Contact No.")
                {
                    ApplicationArea = All;
                }
                field(contactType; Rec."Contact Type")
                {
                    ApplicationArea = All;
                }
                field(mobilePhoneNo; Rec."Mobile Phone No.")
                {
                    ApplicationArea = All;
                }
                field(responsibilityCenter; Rec."Responsibility Center")
                {
                    ApplicationArea = All;
                }
                field(shippingAdvice; Rec."Shipping Advice")
                {
                    ApplicationArea = All;
                }
                field(shippingTime; Rec."Shipping Time")
                {
                    ApplicationArea = All;
                }
                field(shippingAgentServiceCode; Rec."Shipping Agent Service Code")
                {
                    ApplicationArea = All;
                }
                field(serviceZoneCode; Rec."Service Zone Code")
                {
                    ApplicationArea = All;
                }
                field(combineServiceShipments; Rec."Combine Service Shipments")
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
                field(baseCalendarCode; Rec."Base Calendar Code")
                {
                    ApplicationArea = All;
                }
                field(copySellToAddrToQteFrom; Rec."Copy Sell-to Addr. to Qte From")
                {
                    ApplicationArea = All;
                }
                field(validateEUVatRegNo; Rec."Validate EU Vat Reg. No.")
                {
                    ApplicationArea = All;
                }
                field(currencyId; Rec."Currency Id")
                {
                    ApplicationArea = All;
                }
                field(paymentTermsId; Rec."Payment Terms Id")
                {
                    ApplicationArea = All;
                }
                field(shipmentMethodId; Rec."Shipment Method Id")
                {
                    ApplicationArea = All;
                }
                field(paymentMethodId; Rec."Payment Method Id")
                {
                    ApplicationArea = All;
                }
                field(taxAreaID; Rec."Tax Area ID")
                {
                    ApplicationArea = All;
                }
                field(contactID; Rec."Contact ID")
                {
                    ApplicationArea = All;
                }
                field(contactGraphId; Rec."Contact Graph Id")
                {
                    ApplicationArea = All;
                }
                field(kodeLamaPesti; Rec."Kode Lama Pesti")
                {
                    ApplicationArea = All;
                }
                field(kodeLamaFerti; Rec."Kode Lama Ferti")
                {
                    ApplicationArea = All;
                }
                field(kodeLamaSeed; Rec."Kode Lama Seed")
                {
                    ApplicationArea = All;
                }
                field(kodeLamaEquip; Rec."Kode Lama Equip")
                {
                    ApplicationArea = All;
                }
                field(provinceCode; Rec."Province Code")
                {
                    ApplicationArea = All;
                }
                field(provinceName; Rec."Province Name")
                {
                    ApplicationArea = All;
                }
                field(cityRegencyCode; Rec."City/Regency Code")
                {
                    ApplicationArea = All;
                }
                field(cityRegencyName; Rec."City/Regency Name")
                {
                    ApplicationArea = All;
                }
                field(districtCode; Rec."District Code")
                {
                    ApplicationArea = All;
                }
                field(districtName; Rec."District Name")
                {
                    ApplicationArea = All;
                }
                field(districtCode2; Rec."District Code 2")
                {
                    ApplicationArea = All;
                }
                field(genBusRetInternal; Rec."Gen. Bus. Ret. Internal")
                {
                    ApplicationArea = All;
                }
                field(salesman; Rec.Salesman)
                {
                    ApplicationArea = All;
                }
                field(longlat; Rec.Longlat)
                {
                    ApplicationArea = All;
                }
                field(pkp; Rec.PKP)
                {
                    ApplicationArea = All;
                }
                field(pajakName; Rec."Pajak Name")
                {
                    ApplicationArea = All;
                }
                field(pajakAddress; Rec."Pajak Address")
                {
                    ApplicationArea = All;
                }
                field(noKTP; Rec."No. KTP")
                {
                    ApplicationArea = All;
                }
                field(jalan; Rec.Jalan)
                {
                    ApplicationArea = All;
                }
                field(blok; Rec.Blok)
                {
                    ApplicationArea = All;
                }
                field(noBlok; Rec."No. Blok")
                {
                    ApplicationArea = All;
                }
                field(rt; Rec.RT)
                {
                    ApplicationArea = All;
                }
                field(rw; Rec.RW)
                {
                    ApplicationArea = All;
                }
                field(kecamatan; Rec.Kecamatan)
                {
                    ApplicationArea = All;
                }
                field(kelurahan; Rec.Kelurahan)
                {
                    ApplicationArea = All;
                }
                field(kabupaten; Rec.Kabupaten)
                {
                    ApplicationArea = All;
                }
                field(provinsi; Rec.Provinsi)
                {
                    ApplicationArea = All;
                }
                field(parentCustomerName; Rec."Parent Customer Name")
                {
                    ApplicationArea = All;
                }
                field(parentCustomerCode; Rec."Parent Customer Code")
                {
                    ApplicationArea = All;
                }
                field(pajakAddressCode; Rec."Pajak Address Code")
                {
                    ApplicationArea = All;
                }
                field(dgsIDTKU; Rec."DGS ID TKU")
                {
                    ApplicationArea = All;
                }
                field(dgsDocumentType; Rec."DGS Document Type")
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