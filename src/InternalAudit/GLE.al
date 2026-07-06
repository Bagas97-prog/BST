page 50227 "API IT GLEntry IA"
{
    PageType = API;

    APIVersion = 'v1.0';
    APIPublisher = 'Bagas';
    APIGroup = 'IT';
    EntitySetName = 'IA_GLEntry';
    EntityCaption = 'IA_GLEntry';
    EntitySetCaption = 'IA_GLEntry';
    EntityName = 'IA_GLEntry';

    ODataKeyFields = SystemId;
    SourceTable = "G/L Entry";

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
                field(glAccountNo; Rec."G/L Account No.")
                {
                    ApplicationArea = All;
                }
                field(postingDate; Rec."Posting Date")
                {
                    ApplicationArea = All;
                }
                field(documentType; Rec."Document Type")
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
                field(balAccountNo; Rec."Bal. Account No.")
                {
                    ApplicationArea = All;
                }
                field(amount; Rec.Amount)
                {
                    ApplicationArea = All;
                }
                field(sourceCurrencyAmount; Rec."Source Currency Amount")
                {
                    ApplicationArea = All;
                }
                field(sourceCurrencyVATAmount; Rec."Source Currency VAT Amount")
                {
                    ApplicationArea = All;
                }
                field(sourceCurrencyCode; Rec."Source Currency Code")
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
                field(userId; Rec."User ID")
                {
                    ApplicationArea = All;
                }
                field(sourceCode; Rec."Source Code")
                {
                    ApplicationArea = All;
                }
                field(systemCreatedEntry; Rec."System-Created Entry")
                {
                    ApplicationArea = All;
                }
                field(priorYearEntry; Rec."Prior-Year Entry")
                {
                    ApplicationArea = All;
                }
                field(jobNo; Rec."Job No.")
                {
                    ApplicationArea = All;
                }
                field(quantity; Rec.Quantity)
                {
                    ApplicationArea = All;
                }
                field(vatAmount; Rec."VAT Amount")
                {
                    ApplicationArea = All;
                }
                field(businessUnitCode; Rec."Business Unit Code")
                {
                    ApplicationArea = All;
                }
                field(journalBatchName; Rec."Journal Batch Name")
                {
                    ApplicationArea = All;
                }
                field(reasonCode; Rec."Reason Code")
                {
                    ApplicationArea = All;
                }
                field(genPostingType; Rec."Gen. Posting Type")
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
                field(balAccountType; Rec."Bal. Account Type")
                {
                    ApplicationArea = All;
                }
                field(transactionNo; Rec."Transaction No.")
                {
                    ApplicationArea = All;
                }
                field(debitAmount; Rec."Debit Amount")
                {
                    ApplicationArea = All;
                }
                field(creditAmount; Rec."Credit Amount")
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
                field(sourceType; Rec."Source Type")
                {
                    ApplicationArea = All;
                }
                field(sourceNo; Rec."Source No.")
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
                field(additionalCurrencyAmount; Rec."Additional-Currency Amount")
                {
                    ApplicationArea = All;
                }
                field(addCurrencyDebitAmount; Rec."Add.-Currency Debit Amount")
                {
                    ApplicationArea = All;
                }
                field(addCurrencyCreditAmount; Rec."Add.-Currency Credit Amount")
                {
                    ApplicationArea = All;
                }
                field(closeIncomeStatementDimID; Rec."Close Income Statement Dim. ID")
                {
                    ApplicationArea = All;
                }
                field(icPartnerCode; Rec."IC Partner Code")
                {
                    ApplicationArea = All;
                }
                field(reversed; Rec.Reversed)
                {
                    ApplicationArea = All;
                }
                field(reversedByEntryNo; Rec."Reversed by Entry No.")
                {
                    ApplicationArea = All;
                }
                field(reversedEntryNo; Rec."Reversed Entry No.")
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
                field(dimensionSetId; Rec."Dimension Set ID")
                {
                    ApplicationArea = All;
                }
                field(lastDimCorrectionEntryNo; Rec."Last Dim. Correction Entry No.")
                {
                    ApplicationArea = All;
                }
                field(lastDimCorrectionNode; Rec."Last Dim. Correction Node")
                {
                    ApplicationArea = All;
                }
                field(dimensionChangesCount; Rec."Dimension Changes Count")
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
                field(faEntryType; Rec."FA Entry Type")
                {
                    ApplicationArea = All;
                }
                field(faEntryNo; Rec."FA Entry No.")
                {
                    ApplicationArea = All;
                }
                field(comment; Rec.Comment)
                {
                    ApplicationArea = All;
                }
                field(nonDeductibleVATAmount; Rec."Non-Deductible VAT Amount")
                {
                    ApplicationArea = All;
                }
                field(nonDeductibleVATAmountACY; Rec."Non-Deductible VAT Amount ACY")
                {
                    ApplicationArea = All;
                }
                field(srcCurrNonDedVATAmount; Rec."Src. Curr. Non-Ded. VAT Amount")
                {
                    ApplicationArea = All;
                }
                field(lastModifiedDateTime; Rec."Last Modified DateTime")
                {
                    ApplicationArea = All;
                }
                field(salesCrMemoDescription; Rec."Sales Cr. Memo Description")
                {
                    ApplicationArea = All;
                }
                field(noFakturPajak; Rec."No. Faktur Pajak")
                {
                    ApplicationArea = All;
                }
                field(pajakType; Rec."Pajak Type")
                {
                    ApplicationArea = All;
                }
                field(tglPelaporanPajak; Rec."Tgl. Pelaporan Pajak")
                {
                    ApplicationArea = All;
                }
                field(dgsTaxDPPNilaiLainLCY; Rec."DGS Tax DPP Nilai Lain (LCY)")
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