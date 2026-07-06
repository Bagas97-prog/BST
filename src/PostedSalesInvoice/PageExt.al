pageextension 50207 "Posted Sales Invoice Ext IT" extends "Posted Sales Invoice"
{
    actions
    {
        addafter(Print)
        {
            action(BPrint)
            {
                ApplicationArea = Basic, Suite;
                Caption = '&Print IT';
                Ellipsis = true;
                Image = Print;
                ToolTip = 'Prepare to print the document. A report request window for the document opens where you can specify what to include on the print-out.';

                trigger OnAction()
                var
                    PSI: Record "Sales Invoice Header";
                begin
                    PSI.SetRange("No.", Rec."No.");
                    PSI.FindFirst();
                    Report.Run(50202, true, true, PSI);
                end;
            }
            // action(TestAPI)
            // {
            //     ApplicationArea = Basic, Suite;
            //     Caption = 'Test API';
            //     Ellipsis = true;
            //     Image = Check;
            //     trigger OnAction()
            //     begin
            //         GetDogStatus();
            //     end;
            // }

        }
        addafter(Print_Promoted)
        {
            actionref(BPrint_Promoted; BPrint)
            {
            }
        }
    }
    //     procedure GetDogStatus()
    //     var
    //         Client: HttpClient;
    //         Response: HttpResponseMessage;
    //         Content: Text;
    //         JsonObject: JsonObject;
    //         Token: JsonToken;
    //         MessageObject: JsonObject;
    //         TerrierToken: JsonToken;
    //         TerrierArray: JsonArray;
    //         TerrierElement: JsonToken;
    //         TerrierText: Text;
    //     begin
    //         // Call API
    //         if not Client.Get('https://dog.ceo/api/breeds/list/all', Response) then
    //             Error('Gagal request API');

    //         if not Response.IsSuccessStatusCode() then
    //             Error('HTTP error: %1', Response.HttpStatusCode());

    //         Response.Content().ReadAs(Content);

    //         if not JsonObject.ReadFrom(Content) then
    //             Error('Gagal parse JSON');

    //         // Ambil "message"
    //         if not JsonObject.Get('message', Token) then
    //             Error('Field "message" tidak ditemukan');

    //         MessageObject := Token.AsObject();

    //         // Ambil "terrier"
    //         if not MessageObject.Get('terrier', TerrierToken) then
    //             Error('Field "terrier" tidak ditemukan');

    //         TerrierArray := TerrierToken.AsArray();

    //         // Pastikan panjang array cukup
    //         if TerrierArray.Count < 3 then
    //             Error('"terrier" array kurang dari 3 elemen');

    //         // Ambil index ke-2
    //         TerrierArray.Get(2, TerrierElement);
    //         TerrierText := TerrierElement.AsValue().AsText();

    //         Message('Item ke-2 dari "terrier": %1', TerrierText);
    //     end;
}