page 55400 "Customer Entity_BAPI"
{
    PageType = API;
    SourceTable = Customer;
    APIPublisher = 'tharangaC';
    APIGroup = 'blogging';
    APIVersion = 'beta';
    EntityName = 'customer';
    EntitySetName = 'customers';
    DelayedInsert = true;
    Caption = 'CustomerEntity';

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(no; "No.")
                {
                    Caption = 'no';
                    ApplicationArea = All;
                }
                field(name; Name)
                {
                    Caption = 'name';
                    ApplicationArea = All;
                }
                field(email; "E-Mail")
                {
                    Caption = 'email';
                    ApplicationArea = All;
                }
                field(systemId; SystemId)
                {
                    Caption = 'systemId';
                    ApplicationArea = All;
                    Editable = true;
                }
            }
        }
    }

    trigger OnInsertRecord(BelowxRec: Boolean): Boolean
    begin
        exit(not Insert(true, true));
    end;
}
