namespace namee;

entity inv_assg
{
    key invoice : String(40);
    RE_INVOICE_NO : String(40);
    REF_INVOICE_NO : String(40);
    Payment_Terms : String(40);
    SUPPLIER_NAME : String(40);
    DATE : String(40);
    MODIFIED_by : String(40);
    modified_date_time : String(40);
    assign_inv_to : String(40);
    inv_file : LargeString;
    IRN : String(40);
    GSTIN : String(40);
    Document_Type : String(40);
    Invoice_Date : String(40);
    Posting_Date : String(40);
    Reference_po_number : String(40);
    Due_Date : String(40);
    Vendor_Code : String(40);
    Payment_Method : String(40);
    Currency : String(40);
    Company_Code : String(40);
    GL_Account : String(40);
    Cost_Center : String(40);
    Discount_per : String(40);
    Discount_Amount : String(40);
    TDS_per : String(40);
    Total_TDS_Amount : String(40);
    SGST_Amount : String(40);
    CGST_Amount : String(40);
    Taxable_Amount : String(40);
    Adjustment : String(40);
    Amount_Total : String(40);
    Department : String(40);
    Internal_Order : String(40);
    TCS_amount : String(40);
    file_link : LargeString;
    item_data_parent : Association to many item_data_for_invassign on item_data_parent.item_data_child = $self;
}


entity item_data_for_invassign
{
    key id : UUID;
    key invoice : String(40);
     Item : String(40);
    Item_No : String(40);
    Material : String(40);
    HSN_SAC : String(40);
    Qty : String(40);
    Unit_Price : String(40);
    GL_Acc : String(40);
    Plant : String(40);
    Cost_Center : String(40);
    Disc_Per : String(40);
    GST_Per : String(40);	
    Taxable_Amt : String(40);
    Tax_Amt : String(40);
    Total_Amt : String(30);	
    bool : Boolean;
    item_data_child : Association to one inv_assg on item_data_child.invoice = invoice;
}

//========================================search help for invoice assignment==============================
entity asgn_inv_to
{
    key id : String(40);
    name : String(40);
    is_group : String(40);
}

entity comments_temp
{
    key id : UUID;
    sr_no : String;
    comments_title : String;
    comments_desc : String;
}

entity track_invoices
{
    key invoice : String;
    Ref_invoice : String;
    Ref_PO_Num : String;
    Due_Date : String;
    suplier_name : String;
    invoice_date : String;
    modified_by : String;
    Status : String;
    error_log : String;
    faulty : Integer;
    Payment_Terms : String;
    IRN : String;
    GSTIN : String;
    Document_Type : String;
    Posting_Date : String;
    Vendor_Code : String;
    Payment_Method : String;
    Company_Code : String;
    Currency : String;
    Department : String;
    GL_Account : String;
    Cost_Center : String;
    Internal_Order : String;
    Taxable_Amount : String;
    Adjustment : String;
    Amount_Total : String;
    TCS_amount : String;
    TDS_per : String;
    Total_TDS_Amount : String;
    Discount_per : String;
    Discount_Amount : String;
    CGST_Amount : String;
    SGST_Amount : String;
    file_link : String;
    item_data_parent : Association to many item_data_for_track on item_data_parent.item_data_child1 = $self;
}


entity item_data_for_track
{
    key id : UUID;
    key invoice : String(40);
    Item : String(40);
    Item_No : String(40);
    Material : String(40);
    HSN_Code : String(40);
    Qty : String(40);
    Unit_Price : String(40);
    GL_Acc : String(40);
    Plant : String(40);
    Cost_Center : String(40);
    Disc_Per : String(40);
    GST_Per : String(40);	
    Taxable_Amt : String(40);
    Tax_Amt : String(40);
    Total_Amt : String(30);	
    bool : Boolean;
    item_data_child1 : Association to one track_invoices on item_data_child1.invoice = invoice;
}

entity New
{
    key invoice_no : String;
    Ref_invoice_no : String;
    supplier_name : String default 'NA';
    Date : Date;
    modified_date_time : String;
    INVOICE_FILE : String;

    irn : String;
    ref_po_num : String;
    gstin : String;
    Document_Type : String;
    Ref_invoice_no1 : String;
    invoice_date : String;
    posting_date : String;
    baseline_date : String;
    Vendor_Code : String;
    payment_terms : String;
    payment_method : String;
    company_code : String;
    currency : String;
    department_name : String;
    gl_account : String;
    cost_center : String;
    internal_order : String;
    taxable_amount : String;
    adjustment : String;
     amount : String;
    tcs : String;
    tds_per : String;
    tds_tot_amt : String;
    discount_per : String;
    total_discount_amount : String;
    vat_per : String;
    file_link : LargeString;
     value : Integer;
    value1 : Boolean default false;
    child_item : Composition of many item_new on child_item.invoice = invoice_no;
}


entity item_new
{
    key id : UUID;
    key invoice : String(40);
    Item : String(40);
    Item_No : String(40);
    Material : String(40);
    HSN_Code : String(40);
    Qty : String(40);
    Qc : Boolean;
    IGST : Boolean;
    Unit_Price : String(40);
    GL_Acc : String(40);
    Plant : String(40);
    Cost_Center : String(40);
    Disc_Per : String(40);
    GST_Per : String(40);	
    Taxable_Amt : String(40);
    Tax_Amt : String(40);
    Total_Amt : String(30);	
    bool : Boolean;
     SGST : String;
    CGST : String;
    IGST_val : String;
    item_data_child1 : Association to one New on item_data_child1.invoice_no = invoice;
}


entity Draft
{
   key invoice_no : String;
    Ref_invoice_no : String;
    supplier_name : String default 'NA';
    Date : Date;
    modified_by : String;
    modified_date_time : String;
    INVOICE_FILE : String;

    irn : String;
    ref_po_num : String;
    gstin : String;
    Document_Type : String;
    Ref_invoice_no1 : String;
    invoice_date : String;
    posting_date : String;
    baseline_date : String;
    Vendor_Code : String;
    payment_terms : String;
    payment_method : String;
    company_code : String;
    currency : String;
    department_name : String;
    gl_account : String;
    cost_center : String;
    internal_order : String;
    taxable_amount : String;
    adjustment : String;
     amount : String;
    tcs : String;
    tds_per : String;
    tds_tot_amt : String;
    discount_per : String;
    total_discount_amount : String;
    vat_per : String;
    file_link : LargeString;
    // draf : Association to many invoice_for_draft on draf.draft_data = $self;
    item_data_draft : Association to  many item2 on item_data_draft.invoice = invoice_no;
}


entity item2
{
    key id : UUID;
        key invoice : String(40);
        item_no : String(40);
    // Ref_invoice_no : String(20);
        sl_no : String(40);
        HSN_Code : String(40);
        Material : String(40);
         Qty : String(40);
    Qc : String(40);
    Unit_Price : String(40);
    GL_ACC : String(40);
    Cost_Center :String(40);
    Plant : String(40);
    Disc_Perc : String(40);
    Gst_Perc : String(40);
    Taxable_Amount : String(40);
    Tax_Amount :String(40);
    Total_Amount :String(40);
    item_draft_inv : Association to one Draft on item_draft_inv.invoice_no = invoice;
}



entity Rejected
{
   key invoice_no : String;
    Ref_invoice_no : String;
    supplier_name : String default 'NA';
    Date : Date;
    modified_by : String;
    modified_date_time : String;
    INVOICE_FILE : String;

    irn : String;
    ref_po_num : String;
    gstin : String;
    Document_Type : String;
    Ref_invoice_no1 : String;
    invoice_date : String;
    posting_date : String;
    baseline_date : String;
    Vendor_Code : String;
    payment_terms : String;
    payment_method : String;
    company_code : String;
    currency : String;
    department_name : String;
    gl_account : String;
    cost_center : String;
    internal_order : String;
    taxable_amount : String;
    adjustment : String;
     amount : String;
    tcs : String;
    tds_per : String;
    tds_tot_amt : String;
    discount_per : String;
    total_discount_amount : String;
    vat_per : String;
    file_link : LargeString;
    // draf : Association to many invoice_for_draft on draf.draft_data = $self;
    item_data_draft : Association to  many item3 on item_data_draft.invoice = invoice_no;
}


entity item3
{
    key id : UUID;
        key invoice : String(40);
        item_no : String(40);
    // Ref_invoice_no : String(20);
        sl_no : String(40);
        HSN_Code : String(40);
        Material : String(40);
         Qty : String(40);
    Qc : String(40);
    Unit_Price : String(40);
    GL_ACC : String(40);
    Cost_Center :String(40);
    Plant : String(40);
    Disc_Perc : String(40);
    GST_Per : String(40);
    Taxable_Amount : String(40);
    Tax_Amount :String(40);
    Total_Amount :String(40);
    item_draft_inv : Association to one Rejected on item_draft_inv.invoice_no = invoice;
}


entity inapproval
{
        key invoice : String(20);
        Ref_invoice : String(40);
        suplier_name : String(20);
        Date : Date;
        modified_by : String(20);
        Mod_date_time : DateTime;
        INVOICE_FILE : String;
   
        irn : String(20);
        Reference_po_num : String(30);
        gstin : String(30);
        Document_type : String(20);
        Ref_invoice_no : String(20);
        invoice_date : Date;
        posting_date : Date;
        Baseline_date : Date;
        Vendor : String(20);
        Payment_Terms : String(20);
        Payment_Method : String(40);
        company_code : String(40);
        Currency :String(40);
        Department : String(40);
        GL_account : String(20);
        cost_center : String(20);
        internal_order : String(20);
        taxable_amount : String(40);
        Adjustment : String(40);
        Amount : String(40);
        tcs_amount : String(20);
        tds_percent : String(40);
        tds_tot_amt : String(40);
        Discount_percent : String(40);
        tax_perc : String(40);
        total_discount_amount : String(40);
        cgst_tot_amt : String(40);
        sgst_tot_amt : String(40);
        igst_tot_amt : String(40);
        file_link : LargeString;
    ass : Association to many Approver_tab on ass.app = $self;
    // ass1 : Association to many invoice_data_inapproval on ass1.invoice = invoice;
    item_for_inapp : Composition of many item4 on item_for_inapp.item_inapp_inv = $self;

}

entity Approver_tab
{
    key id:UUID;
    invoice : String(20);
    Approver : String(30);
   app : Association to one inapproval on app.invoice = invoice;   
}


entity item4
{
    key id : UUID;
        key invoice : String(40);
        item_no : String(40);
    // Ref_invoice_no : String(20);
        sl_no : String(40);
        HSN_Code : String(40);
        Material : String(40);
         Qty : String(40);
    Qc : String(40);
    Unit_Price : String(40);
    GL_ACC : String(40);
    Cost_Center :String(40);
    Plant : String(40);
    Disc_Perc : String(40);
    GST_Per : String(40);
    Taxable_Amount : String(40);
    Tax_Amount :String(40);
    Total_Amount :String(40);
    item_inapp_inv : Association to one inapproval on item_inapp_inv.invoice = invoice;
}


entity Submitted_to_ERP {
    key invoice : String(20);
     Ref_invoice : String(40);
    Erp_invoiceno : String(30);
    suplier_name : String(20);
    Date : Date;
    Modified_by : String(20);
    Mod_date_time : DateTime;
    INVOICE_FILE : String;

     IRN : String(20);
    Reference_po_num : String(30);
    gstin : String(30);
    Document_type : String(20);
    Ref_invoice_no : String(20);
    invoice_date : Date;
    posting_date : Date;
    Baseline_date : Date;
    Vendor : String(20);
    Payment_Terms : String(20);
    Payment_Method : String(40);
    company_code : String(40);
    Currency :String(40);
    Department : String(40);
    GL_account : String(20);
    cost_center : String(20);
    internal_order : String(20);
    taxable_amount : String(40);
    Adjustment : String(40);
    Amount : String(40);
    tcs_amount : String(20);
    tds_percent : String(40);
    Discount_percent : String(40);
    Gst_percent : String(40);
    file_link : LargeString;
    // inv_data : Composition of many invoice_data_sub_erp on inv_data.inapp_data_for_erp = $self;
    ass_erp1 : Association to many erp_app_tab on ass_erp1.app1 = $self;
    item_data_erp : Composition of many item5 on item_data_erp.item_inapp_inv = $self;
}

entity erp_app_tab
{
    key id:UUID;
    invoice : String(20);
    Approver : String(30);
   app1 : Association to one Submitted_to_ERP on app1.invoice = invoice;   
}


entity item5
{
    key id : UUID;
        key invoice : String(40);
        item_no : String(40);
    // Ref_invoice_no : String(20);
        sl_no : String(40);
        HSN_Code : String(40);
        Material : String(40);
         Qty : String(40);
    Qc : String(40);
    Unit_Price : String(40);
    GL_ACC : String(40);
    Cost_Center :String(40);
    Plant : String(40);
    Disc_Perc : String(40);
    GST_Per : String(40);
    Taxable_Amount : String(40);
    Tax_Amount :String(40);
    Total_Amount :String(40);
    item_inapp_inv : Association to one Submitted_to_ERP on item_inapp_inv.invoice = invoice;
}

//===============================================SEARCH HELPS===============================================
entity vendor_search_help {
    vendor_id : String(40);
    name : String(40);

}

entity Pay_ter {
    value : String(40);
}

entity Payment_Meth 
{
    table_key : String(40);
}


entity Document_Type {
    type : String(40);
}

entity company_code
{
   key code : String; 
    description : String;
}

entity currency
{
    key code : String;
    description : String;
}

entity department 
{
    name : String;
}

entity gl_acc 
{
    key code : String;
    description : String;
}

entity cost_center {
    key code : String;
    description : String;
}

entity internal_ord {
    key code : String;
}

entity tds {
    value : String;
}

entity gst
{
    description : String;
}



entity supplier_enq
{
    id : String(30);
    key Enquiry_no : String(40);
    Supplier_name : String(40);
    Description : String(40);
    Enq_desc : String(40);
    Recieved_date : String(40);
    Supplier_Enquiry : String(40);
    Comments_template : String(40);
    Edit_comment : String(40);
    Status : String(40);
    last_responded : String(40);
    faulty : Integer;
    // enq_parent : Association to many history on enq_parent.enq_child = $self;
    // enq_parent1 : Association to many Attachments on enq_parent1.enq_child1 = $self;
}


entity create_inv
{ 
     key uiid: Integer;
    key IRN : String;
    Reference_PO_Number : String;
    GSTIN : String;
    Document_Type : String;
    Reference_Invoice_No : String;
    Invoice_Date : Date;
    Posting_Date : Date;
    Baseline_Date : Date;
    relll :Composition of many  child on relll.uiid = uiid;
}
entity child{
    key uiid: Integer;
    rell2: Association to one create_inv;
}

