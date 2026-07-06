page 50219 "API IT ELE IA"
{
    PageType = API;

    APIVersion = 'v1.0';
    APIPublisher = 'Bagas';
    APIGroup = 'IT';
    EntitySetName = 'IA_ELE';

    EntityCaption = 'IA_ELE';
    EntitySetCaption = 'IA_ELE';
    EntityName = 'IA_ELE';

    ODataKeyFields = SystemId;
    SourceTable = "Employee Ledger Entry";

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
                field("EmployeeNo"; Rec."Employee No.")
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
                field("CurrencyCode"; Rec."Currency Code")
                {
                    ApplicationArea = All;
                }
                field("EmployeePostingGroup"; Rec."Employee Posting Group")
                {
                    ApplicationArea = All;
                }
                field("GlobalDimension1Code"; Rec."Global Dimension 1 Code")
                {
                    ApplicationArea = All;
                }
                field("GlobalDimension2Code"; Rec."Global Dimension 2 Code")
                {
                    ApplicationArea = All;
                }
                field("SalespersPurchCode"; Rec."Salespers./Purch. Code")
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
                field("AmounttoApply"; Rec."Amount to Apply")
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
                field("CreditorNo"; Rec."Creditor No.")
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
                field("ShortcutDimension3Code"; Rec."Shortcut Dimension 3 Code")
                {
                    ApplicationArea = All;
                }
                field("ShortcutDimension4Code"; Rec."Shortcut Dimension 4 Code")
                {
                    ApplicationArea = All;
                }
                field("ShortcutDimension5Code"; Rec."Shortcut Dimension 5 Code")
                {
                    ApplicationArea = All;
                }
                field("ShortcutDimension6Code"; Rec."Shortcut Dimension 6 Code")
                {
                    ApplicationArea = All;
                }
                field("ShortcutDimension7Code"; Rec."Shortcut Dimension 7 Code")
                {
                    ApplicationArea = All;
                }
                field("ShortcutDimension8Code"; Rec."Shortcut Dimension 8 Code")
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