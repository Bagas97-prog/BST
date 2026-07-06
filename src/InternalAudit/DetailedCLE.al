page 50217 "API IT DCLE IA"
{
    PageType = API;

    APIVersion = 'v1.0';
    APIPublisher = 'Bagas';
    APIGroup = 'IT';
    EntitySetName = 'IA_DCLE';

    EntityCaption = 'IA_DCLE';
    EntitySetCaption = 'IA_DCLE';
    EntityName = 'IA_DCLE';

    ODataKeyFields = SystemId;
    SourceTable = "Detailed Cust. Ledg. Entry";

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
                field("EntryNo"; Rec."Entry No.")
                {
                    ApplicationArea = All;
                }
                field("CustLedgerEntryNo"; Rec."Cust. Ledger Entry No.")
                {
                    ApplicationArea = All;
                }
                field("EntryType"; Rec."Entry Type")
                {
                    ApplicationArea = All;
                }
                field("PostingDate"; Rec."Posting Date")
                {
                    ApplicationArea = All;
                }
                field("DocumentType"; Rec."Document Type")
                {
                    ApplicationArea = All;
                }
                field("DocumentNo"; Rec."Document No.")
                {
                    ApplicationArea = All;
                }
                field(Amount; Rec.Amount)
                {
                    ApplicationArea = All;
                }
                field("AmountLCY"; Rec."Amount (LCY)")
                {
                    ApplicationArea = All;
                }
                field("CustomerNo"; Rec."Customer No.")
                {
                    ApplicationArea = All;
                }
                field("CurrencyCode"; Rec."Currency Code")
                {
                    ApplicationArea = All;
                }
                field("UserID"; Rec."User ID")
                {
                    ApplicationArea = All;
                }
                field("SourceCode"; Rec."Source Code")
                {
                    ApplicationArea = All;
                }
                field("TransactionNo"; Rec."Transaction No.")
                {
                    ApplicationArea = All;
                }
                field("JournalBatchName"; Rec."Journal Batch Name")
                {
                    ApplicationArea = All;
                }
                field("ReasonCode"; Rec."Reason Code")
                {
                    ApplicationArea = All;
                }
                field("DebitAmount"; Rec."Debit Amount")
                {
                    ApplicationArea = All;
                }
                field("CreditAmount"; Rec."Credit Amount")
                {
                    ApplicationArea = All;
                }
                field("DebitAmountLCY"; Rec."Debit Amount (LCY)")
                {
                    ApplicationArea = All;
                }
                field("CreditAmountLCY"; Rec."Credit Amount (LCY)")
                {
                    ApplicationArea = All;
                }
                field("InitialEntryDueDate"; Rec."Initial Entry Due Date")
                {
                    ApplicationArea = All;
                }
                field("InitialEntryGlobalDim1"; Rec."Initial Entry Global Dim. 1")
                {
                    ApplicationArea = All;
                }
                field("InitialEntryGlobalDim2"; Rec."Initial Entry Global Dim. 2")
                {
                    ApplicationArea = All;
                }
                field("GenBusPostingGroup"; Rec."Gen. Bus. Posting Group")
                {
                    ApplicationArea = All;
                }
                field("GenProdPostingGroup"; Rec."Gen. Prod. Posting Group")
                {
                    ApplicationArea = All;
                }
                field("UseTax"; Rec."Use Tax")
                {
                    ApplicationArea = All;
                }
                field("VATBusPostingGroup"; Rec."VAT Bus. Posting Group")
                {
                    ApplicationArea = All;
                }
                field("VATProdPostingGroup"; Rec."VAT Prod. Posting Group")
                {
                    ApplicationArea = All;
                }
                field("InitialDocumentType"; Rec."Initial Document Type")
                {
                    ApplicationArea = All;
                }
                field("AppliedCustLedgerEntryNo"; Rec."Applied Cust. Ledger Entry No.")
                {
                    ApplicationArea = All;
                }
                field(Unapplied; Rec.Unapplied)
                {
                    ApplicationArea = All;
                }
                field("UnappliedByEntryNo"; Rec."Unapplied by Entry No.")
                {
                    ApplicationArea = All;
                }
                field("RemainingPmtDiscPossible"; Rec."Remaining Pmt. Disc. Possible")
                {
                    ApplicationArea = All;
                }
                field("MaxPaymentTolerance"; Rec."Max. Payment Tolerance")
                {
                    ApplicationArea = All;
                }
                field("TaxJurisdictionCode"; Rec."Tax Jurisdiction Code")
                {
                    ApplicationArea = All;
                }
                field("ApplicationNo"; Rec."Application No.")
                {
                    ApplicationArea = All;
                }
                field("LedgerEntryAmount"; Rec."Ledger Entry Amount")
                {
                    ApplicationArea = All;
                }
                field("ExchRateAdjmtRegNo"; Rec."Exch. Rate Adjmt. Reg. No.")
                {
                    ApplicationArea = All;
                }
                field(SystemId; Rec.SystemId)
                {
                    ApplicationArea = All;
                }
                field(SystemCreatedAt; Rec.SystemCreatedAt)
                {
                    ApplicationArea = All;
                }
                field(SystemCreatedBy; Rec.SystemCreatedBy)
                {
                    ApplicationArea = All;
                }
                field(SystemModifiedAt; Rec.SystemModifiedAt)
                {
                    ApplicationArea = All;
                }
                field(SystemModifiedBy; Rec.SystemModifiedBy)
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}