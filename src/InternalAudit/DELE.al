page 50230 "API IT DetEmpLedgEntry IA"
{
    PageType = API;

    APIVersion = 'v1.0';
    APIPublisher = 'Bagas';
    APIGroup = 'IT';
    EntitySetName = 'IA_DetailedEmployeeLedgerEntry';
    EntityCaption = 'IA_DetailedEmployeeLedgerEntry';
    EntitySetCaption = 'IA_DetailedEmployeeLedgerEntry';
    EntityName = 'IA_DetailedEmployeeLedgerEntry';

    ODataKeyFields = SystemId;
    SourceTable = "Detailed Employee Ledger Entry";

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
                field(employeeLedgerEntryNo; Rec."Employee Ledger Entry No.")
                {
                    ApplicationArea = All;
                    Caption = 'Foreign Key to Employee Ledger Entry';
                }
                field(entryType; Rec."Entry Type")
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
                field(amount; Rec.Amount)
                {
                    ApplicationArea = All;
                }
                field(amountLCY; Rec."Amount (LCY)")
                {
                    ApplicationArea = All;
                }
                field(employeeNo; Rec."Employee No.")
                {
                    ApplicationArea = All;
                }
                field(currencyCode; Rec."Currency Code")
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
                field(transactionNo; Rec."Transaction No.")
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
                field(debitAmount; Rec."Debit Amount")
                {
                    ApplicationArea = All;
                }
                field(creditAmount; Rec."Credit Amount")
                {
                    ApplicationArea = All;
                }
                field(debitAmountLCY; Rec."Debit Amount (LCY)")
                {
                    ApplicationArea = All;
                }
                field(creditAmountLCY; Rec."Credit Amount (LCY)")
                {
                    ApplicationArea = All;
                }
                field(initialEntryGlobalDim1; Rec."Initial Entry Global Dim. 1")
                {
                    ApplicationArea = All;
                }
                field(initialEntryGlobalDim2; Rec."Initial Entry Global Dim. 2")
                {
                    ApplicationArea = All;
                }
                field(initialDocumentType; Rec."Initial Document Type")
                {
                    ApplicationArea = All;
                }
                field(appliedEmplLedgerEntryNo; Rec."Applied Empl. Ledger Entry No.")
                {
                    ApplicationArea = All;
                }
                field(unapplied; Rec.Unapplied)
                {
                    ApplicationArea = All;
                }
                field(unappliedByEntryNo; Rec."Unapplied by Entry No.")
                {
                    ApplicationArea = All;
                }
                field(applicationNo; Rec."Application No.")
                {
                    ApplicationArea = All;
                }
                field(ledgerEntryAmount; Rec."Ledger Entry Amount")
                {
                    ApplicationArea = All;
                }
                field(exchRateAdjmtRegNo; Rec."Exch. Rate Adjmt. Reg. No.")
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