page 50228 "API IT GLAccount IA"
{
    PageType = API;

    APIVersion = 'v1.0';
    APIPublisher = 'Bagas';
    APIGroup = 'IT';
    EntitySetName = 'IA_GLAccount';
    EntityCaption = 'IA_GLAccount';
    EntitySetCaption = 'IA_GLAccount';
    EntityName = 'IA_GLAccount';

    ODataKeyFields = SystemId;
    SourceTable = "G/L Account";

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
                field(accountType; Rec."Account Type")
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
                field(accountCategory; Rec."Account Category")
                {
                    ApplicationArea = All;
                }
                field(incomeBalance; Rec."Income/Balance")
                {
                    ApplicationArea = All;
                }
                field(debitCredit; Rec."Debit/Credit")
                {
                    ApplicationArea = All;
                }
                field(no2; Rec."No. 2")
                {
                    ApplicationArea = All;
                }
                field(blocked; Rec.Blocked)
                {
                    ApplicationArea = All;
                }
                field(directPosting; Rec."Direct Posting")
                {
                    ApplicationArea = All;
                }
                field(reconciliationAccount; Rec."Reconciliation Account")
                {
                    ApplicationArea = All;
                }
                field(newPage; Rec."New Page")
                {
                    ApplicationArea = All;
                }
                field(noOfBlankLines; Rec."No. of Blank Lines")
                {
                    ApplicationArea = All;
                }
                field(indentation; Rec.Indentation)
                {
                    ApplicationArea = All;
                }
                field(sourceCurrencyCode; Rec."Source Currency Code")
                {
                    ApplicationArea = All;
                }
                field(sourceCurrencyPosting; Rec."Source Currency Posting")
                {
                    ApplicationArea = All;
                }
                field(sourceCurrencyRevaluation; Rec."Source Currency Revaluation")
                {
                    ApplicationArea = All;
                }
                field(unrealizedRevaluation; Rec."Unrealized Revaluation")
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
                field(totaling; Rec.Totaling)
                {
                    ApplicationArea = All;
                }
                field(consolTranslationMethod; Rec."Consol. Translation Method")
                {
                    ApplicationArea = All;
                }
                field(consolDebitAcc; Rec."Consol. Debit Acc.")
                {
                    ApplicationArea = All;
                }
                field(consolCreditAcc; Rec."Consol. Credit Acc.")
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
                field(automaticExtTexts; Rec."Automatic Ext. Texts")
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
                field(exchangeRateAdjustment; Rec."Exchange Rate Adjustment")
                {
                    ApplicationArea = All;
                }
                field(defaultICPartnerGLAccNo; Rec."Default IC Partner G/L Acc. No")
                {
                    ApplicationArea = All;
                }
                field(omitDefaultDescrInJnl; Rec."Omit Default Descr. in Jnl.")
                {
                    ApplicationArea = All;
                }
                field(accountSubcategoryEntryNo; Rec."Account Subcategory Entry No.")
                {
                    ApplicationArea = All;
                }
                field(excludeFromConsolidation; Rec."Exclude From Consolidation")
                {
                    ApplicationArea = All;
                }
                field(costTypeNo; Rec."Cost Type No.")
                {
                    ApplicationArea = All;
                }
                field(defaultDeferralTemplateCode; Rec."Default Deferral Template Code")
                {
                    ApplicationArea = All;
                }
                field(apiAccountType; Rec."API Account Type")
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