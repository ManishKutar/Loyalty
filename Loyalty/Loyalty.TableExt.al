tableextension 50100 CustomerLoyaltyExt extends Customer
{
    fields
    {
        /// <summary>
        /// Loyalty field for Customers
        /// </summary>
        field(50100; Loyalty; Enum LoyaltyLevel)
        {
        }
    }

    var
        c: Codeunit "Sales-Post";
}

pageextension 50130 CustomerCardLoyaltyExt extends "Customer Card"
{
    layout
    {
        addlast(General)
        {
            field(Loyalty; Rec.Loyalty)
            {
                ApplicationArea = All;
            }
        }
    }
}