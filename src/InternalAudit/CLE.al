page 50215 "API IT CLE IA"
{
    PageType = API;

    APIVersion = 'v1.0';
    APIPublisher = 'Bagas';
    APIGroup = 'IT';
    EntitySetName = 'IA_CLE';

    EntityCaption = 'IA_CLE';
    EntitySetCaption = 'IA_CLE';
    EntityName = 'IA_CLE';

    ODataKeyFields = SystemId;
    SourceTable = "Cust. Ledger Entry";

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
                field("CustomerNo"; Rec."Customer No.")
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
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                }
                field("CustomerName"; Rec."Customer Name")
                {
                    ApplicationArea = All;
                }
                field("YourReference"; Rec."Your Reference")
                {
                    ApplicationArea = All;
                }
                field("CurrencyCode"; Rec."Currency Code")
                {
                    ApplicationArea = All;
                }
                field(Amount; Rec.Amount)
                {
                    ApplicationArea = All;
                }
                field("RemainingAmount"; Rec."Remaining Amount")
                {
                    ApplicationArea = All;
                }
                field("OriginalAmtLCY"; Rec."Original Amt. (LCY)")
                {
                    ApplicationArea = All;
                }
                field("RemainingAmtLCY"; Rec."Remaining Amt. (LCY)")
                {
                    ApplicationArea = All;
                }
                field("AmountLCY"; Rec."Amount (LCY)")
                {
                    ApplicationArea = All;
                }
                field("SalesLCY"; Rec."Sales (LCY)")
                {
                    ApplicationArea = All;
                }
                field("ProfitLCY"; Rec."Profit (LCY)")
                {
                    ApplicationArea = All;
                }
                field("InvDiscountLCY"; Rec."Inv. Discount (LCY)")
                {
                    ApplicationArea = All;
                }
                field("SelltoCustomerNo"; Rec."Sell-to Customer No.")
                {
                    ApplicationArea = All;
                }
                field("CustomerPostingGroup"; Rec."Customer Posting Group")
                {
                    ApplicationArea = All;
                }
                field("BranchCode"; Rec."Global Dimension 1 Code")
                {
                    ApplicationArea = All;
                }
                field("PrincipalCode"; Rec."Global Dimension 2 Code")
                {
                    ApplicationArea = All;
                }
                field("SalespersonCode"; Rec."Salesperson Code")
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
                field("OnHold"; Rec."On Hold")
                {
                    ApplicationArea = All;
                }
                field("AppliestoDocType"; Rec."Applies-to Doc. Type")
                {
                    ApplicationArea = All;
                }
                field("AppliestoDocNo"; Rec."Applies-to Doc. No.")
                {
                    ApplicationArea = All;
                }
                field(Open; Rec.Open)
                {
                    ApplicationArea = All;
                }
                field("DueDate"; Rec."Due Date")
                {
                    ApplicationArea = All;
                }
                field("PmtDiscountDate"; Rec."Pmt. Discount Date")
                {
                    ApplicationArea = All;
                }
                field("OriginalPmtDiscPossible"; Rec."Original Pmt. Disc. Possible")
                {
                    ApplicationArea = All;
                }
                field("PmtDiscGivenLCY"; Rec."Pmt. Disc. Given (LCY)")
                {
                    ApplicationArea = All;
                }
                field("OrigPmtDiscPossibleLCY"; Rec."Orig. Pmt. Disc. Possible(LCY)")
                {
                    ApplicationArea = All;
                }
                field(Positive; Rec.Positive)
                {
                    ApplicationArea = All;
                }
                field("ClosedbyEntryNo"; Rec."Closed by Entry No.")
                {
                    ApplicationArea = All;
                }
                field("ClosedatDate"; Rec."Closed at Date")
                {
                    ApplicationArea = All;
                }
                field("ClosedbyAmount"; Rec."Closed by Amount")
                {
                    ApplicationArea = All;
                }
                field("AppliestoID"; Rec."Applies-to ID")
                {
                    ApplicationArea = All;
                }
                field("JournalTemplName"; Rec."Journal Templ. Name")
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
                field("BalAccountType"; Rec."Bal. Account Type")
                {
                    ApplicationArea = All;
                }
                field("BalAccountNo"; Rec."Bal. Account No.")
                {
                    ApplicationArea = All;
                }
                field("TransactionNo"; Rec."Transaction No.")
                {
                    ApplicationArea = All;
                }
                field("ClosedbyAmountLCY"; Rec."Closed by Amount (LCY)")
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
                field("DocumentDate"; Rec."Document Date")
                {
                    ApplicationArea = All;
                }
                field("ExternalDocumentNo"; Rec."External Document No.")
                {
                    ApplicationArea = All;
                }
                field("CalculateInterest"; Rec."Calculate Interest")
                {
                    ApplicationArea = All;
                }
                field("ClosingInterestCalculated"; Rec."Closing Interest Calculated")
                {
                    ApplicationArea = All;
                }
                field("NoSeries"; Rec."No. Series")
                {
                    ApplicationArea = All;
                }
                field("ClosedbyCurrencyCode"; Rec."Closed by Currency Code")
                {
                    ApplicationArea = All;
                }
                field("ClosedbyCurrencyAmount"; Rec."Closed by Currency Amount")
                {
                    ApplicationArea = All;
                }
                field("AdjustedCurrencyFactor"; Rec."Adjusted Currency Factor")
                {
                    ApplicationArea = All;
                }
                field("OriginalCurrencyFactor"; Rec."Original Currency Factor")
                {
                    ApplicationArea = All;
                }
                field("OriginalAmount"; Rec."Original Amount")
                {
                    ApplicationArea = All;
                }
                field("RemainingPmtDiscPossible"; Rec."Remaining Pmt. Disc. Possible")
                {
                    ApplicationArea = All;
                }
                field("PmtDiscToleranceDate"; Rec."Pmt. Disc. Tolerance Date")
                {
                    ApplicationArea = All;
                }
                field("MaxPaymentTolerance"; Rec."Max. Payment Tolerance")
                {
                    ApplicationArea = All;
                }
                field("LastIssuedReminderLevel"; Rec."Last Issued Reminder Level")
                {
                    ApplicationArea = All;
                }
                field("AcceptedPaymentTolerance"; Rec."Accepted Payment Tolerance")
                {
                    ApplicationArea = All;
                }
                field("AcceptedPmtDiscTolerance"; Rec."Accepted Pmt. Disc. Tolerance")
                {
                    ApplicationArea = All;
                }
                field("PmtToleranceLCY"; Rec."Pmt. Tolerance (LCY)")
                {
                    ApplicationArea = All;
                }
                field("AmounttoApply"; Rec."Amount to Apply")
                {
                    ApplicationArea = All;
                }
                field("ICPartnerCode"; Rec."IC Partner Code")
                {
                    ApplicationArea = All;
                }
                field("ApplyingEntry"; Rec."Applying Entry")
                {
                    ApplicationArea = All;
                }
                field(Reversed; Rec.Reversed)
                {
                    ApplicationArea = All;
                }
                field("ReversedbyEntryNo"; Rec."Reversed by Entry No.")
                {
                    ApplicationArea = All;
                }
                field("ReversedEntryNo"; Rec."Reversed Entry No.")
                {
                    ApplicationArea = All;
                }
                field(Prepayment; Rec.Prepayment)
                {
                    ApplicationArea = All;
                }
                field("PaymentReference"; Rec."Payment Reference")
                {
                    ApplicationArea = All;
                }
                field("PaymentMethodCode"; Rec."Payment Method Code")
                {
                    ApplicationArea = All;
                }
                field("AppliestoExtDocNo"; Rec."Applies-to Ext. Doc. No.")
                {
                    ApplicationArea = All;
                }
                field("RecipientBankAccount"; Rec."Recipient Bank Account")
                {
                    ApplicationArea = All;
                }
                field("MessagetoRecipient"; Rec."Message to Recipient")
                {
                    ApplicationArea = All;
                }
                field("ExportedtoPaymentFile"; Rec."Exported to Payment File")
                {
                    ApplicationArea = All;
                }
                field("DimensionSetID"; Rec."Dimension Set ID")
                {
                    ApplicationArea = All;
                }
                field("ItemGroupCode"; Rec."Shortcut Dimension 3 Code")
                {
                    ApplicationArea = All;
                }
                field("CustomerGroupCode"; Rec."Shortcut Dimension 4 Code")
                {
                    ApplicationArea = All;
                }
                field("RegionCode"; Rec."Shortcut Dimension 5 Code")
                {
                    ApplicationArea = All;
                }
                field("SalemanCode"; Rec."Shortcut Dimension 6 Code")
                {
                    ApplicationArea = All;
                }
                field("ProjectCode"; Rec."Shortcut Dimension 7 Code")
                {
                    ApplicationArea = All;
                }
                field("CompanyCode"; Rec."Shortcut Dimension 8 Code")
                {
                    ApplicationArea = All;
                }
                field("DirectDebitMandateID"; Rec."Direct Debit Mandate ID")
                {
                    ApplicationArea = All;
                }
                field("DisputeStatus"; Rec."Dispute Status")
                {
                    ApplicationArea = All;
                }
                field("PromisedPayDate"; Rec."Promised Pay Date")
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
                field(Giro; Rec.Giro)
                {
                    ApplicationArea = All;
                }
                field("TaxInvoiceNo"; Rec."No. Faktur Pajak")
                {
                    ApplicationArea = All;
                }
                field("AdvoRefNo"; Rec."Advo Ref No.")
                {
                    ApplicationArea = All;
                }
                field("AdvoRefNoSI"; Rec."Advo Ref No. SI")
                {
                    ApplicationArea = All;
                }
                field("AdvoRefNoPayment"; Rec."Advo Ref No. Payment")
                {
                    ApplicationArea = All;
                }
                field("NoPSI"; Rec."No. PSI")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}