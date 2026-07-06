pageextension 50219 "Sales Invoice Ext IT" extends "Sales Invoice"
{
    actions
    {
        addafter(Post)
        {
            action(TestPublicAPI)
            {
                ApplicationArea = All;
                Caption = 'Test Public API';
                trigger OnAction()
                begin
                    SendPostRequest();
                    SendRequest('GET');
                end;
            }
        }
    }
    procedure SendPostRequest()
    var
        Client: HttpClient;
        Response: HttpResponseMessage;
        RequestHeaders: HttpHeaders;
        Content: HttpContent;
        ContentHeaders: HttpHeaders;
        ResponseText: Text;
        URL: Text;
        BodyText: Text;
    begin
        URL := 'https://api-harvest-dev.dgw.co.id/api/sales-invoices/for-bc';
        BodyText := '{"soNo":"SO/BDG-0060","bcSoNo":"SO/BDG-0001","bcSiNo":"SO/BDG-0001","postingDate":"2025-10-20T02:47:32Z"}';

        // Siapkan content body
        Content.WriteFrom(BodyText);

        // Set Content-Type ke JSON
        Content.GetHeaders(ContentHeaders);
        if ContentHeaders.Contains('Content-Type') then
            ContentHeaders.Remove('Content-Type');
        ContentHeaders.Add('Content-Type', 'application/json');

        // Set headers permintaan
        Client.DefaultRequestHeaders().Add('Accept', 'application/json');
        Client.DefaultRequestHeaders().Add('X-API-Key', 'BC_k9mQ7xR4vL2wJ8yF3tN6zH5bC1dE0gS4'); // 🔑 secret key kamu di sini

        // Kirim POST request
        if not Client.Post(URL, Content, Response) then begin
            Message('Gagal mengirim request ke %1', URL);
            exit;
        end;

        // Baca hasilnya
        if not Response.IsSuccessStatusCode() then begin
            Message('Request gagal. Status code: %1', Response.HttpStatusCode());
            Response.Content.ReadAs(ResponseText);
            Message('Response error:\n%1', ResponseText);
            exit;
        end;

        Response.Content.ReadAs(ResponseText);
        Message('Response sukses:\n%1', ResponseText);
    end;

    local procedure SendRequest(HttpMethod: Text[6]) ResponseText: Text
    var
        Client: HttpClient;
        HttpRequestMessage: HttpRequestMessage;
        RequestHeaders: HttpHeaders;
        Response: HttpResponseMessage;
        Content: HttpContent;
        ContentHeaders: HttpHeaders;
        RequestURI: Text;
    begin
        RequestURI := 'https://jsonplaceholder.typicode.com/posts?id=1';

        // (Optional) Set Content-Type kalau ada body
        Content.GetHeaders(ContentHeaders);
        if ContentHeaders.Contains('Content-Type') then
            ContentHeaders.Remove('Content-Type');
        ContentHeaders.Add('Content-Type', 'application/json');

        // Set request headers
        HttpRequestMessage.GetHeaders(RequestHeaders);
        RequestHeaders.Add('Accept', 'application/json');
        RequestHeaders.Add('Accept-Encoding', 'utf-8');
        RequestHeaders.Add('Connection', 'Keep-alive');

        // Set URI & method
        HttpRequestMessage.SetRequestUri(RequestURI);
        HttpRequestMessage.Method(HttpMethod);

        // Kirim request (GET tidak perlu content)
        if not Client.Send(HttpRequestMessage, Response) then
            Error('Gagal mengirim request.');

        if not Response.IsSuccessStatusCode() then
            Error('Request gagal. Status code: %1', Response.HttpStatusCode());

        Response.Content.ReadAs(ResponseText);
        Message(ResponseText);

        exit(ResponseText);
    end;
}