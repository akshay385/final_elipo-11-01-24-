using CatalogService as service from '../../srv/service';
using from '../../db/schema';

annotate service.track_invoices with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'invoice',
            Value : invoice,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Ref_invoice',
            Value : Ref_invoice,
        },
        {
            $Type : 'UI.DataField',
            Label : 'suplier_name',
            Value : suplier_name,
        },
        {
            $Type : 'UI.DataField',
            Label : 'invoice_date',
            Value : invoice_date,
        },
        {
            $Type : 'UI.DataField',
            Label : 'modified_by',
            Value : modified_by,
        },
        {
            $Type : 'UI.DataField',
            Value : Status,
            Label : 'Status',
            Criticality : faulty,
            CriticalityRepresentation : #WithoutIcon,
        },
        {
            $Type : 'UI.DataField',
            Value : error_log,
            Label : 'error_log',
        },
    ]
);
annotate service.track_invoices with @(
    UI.DeleteHidden : true,
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'IRN',
                Value : IRN,
            },
            {
                $Type : 'UI.DataField',
                Label : 'GSTIN',
                Value : GSTIN,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Document_Type',
                Value : Document_Type,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Ref_invoice',
                Value : Ref_invoice,
            },
            {
                $Type : 'UI.DataField',
                Label : 'invoice_date',
                Value : invoice_date,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Posting_Date',
                Value : Posting_Date,
            },
            {
                $Type : 'UI.DataField',
                Value : Ref_PO_Num,
                Label : 'Ref_PO_Num',
            },
            {
                $Type : 'UI.DataField',
                Label : 'Payment_Terms',
                Value : Payment_Terms,
            },
            {
                $Type : 'UI.DataField',
                Value : Due_Date,
                Label : 'Due_Date',
            },
            {
                $Type : 'UI.DataField',
                Label : 'Vendor_Code',
                Value : Vendor_Code,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Payment_Method',
                Value : Payment_Method,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Currency',
                Value : Currency,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Company_Code',
                Value : Company_Code,
            },
            {
                $Type : 'UI.DataField',
                Label : 'GL_Account',
                Value : GL_Account,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Cost_Center',
                Value : Cost_Center,
            },
            {
                $Type : 'UI.DataField',
                Label : 'SGST_Amount',
                Value : SGST_Amount,
            },
            {
                $Type : 'UI.DataField',
                Label : 'CGST_Amount',
                Value : CGST_Amount,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Discount_per',
                Value : Discount_per,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Discount_Amount',
                Value : Discount_Amount,
            },
            {
                $Type : 'UI.DataField',
                Label : 'TDS_per',
                Value : TDS_per,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Total_TDS_Amount',
                Value : Total_TDS_Amount,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Taxable_Amount',
                Value : Taxable_Amount,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Adjustment',
                Value : Adjustment,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Amount_Total',
                Value : Amount_Total,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Department',
                Value : Department,
            },
            {
                $Type : 'UI.DataField',
                Label : 'TCS_amount',
                Value : TCS_amount,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Internal_Order',
                Value : Internal_Order,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'item_details',
            ID : 'item_details',
            Target : 'item_data_parent/@UI.LineItem#item_details',
        },
    ]
);
annotate service.item_data_for_track with @(
    UI.LineItem #item_details : [
        {
            $Type : 'UI.DataField',
            Value : Item,
            Label : 'Item',
        },{
            $Type : 'UI.DataField',
            Value : HSN_Code,
            Label : 'HSN_SAC',
        },{
            $Type : 'UI.DataField',
            Value : Material,
            Label : 'Material',
        },{
            $Type : 'UI.DataField',
            Value : Qty,
            Label : 'Qty',
        },{
            $Type : 'UI.DataField',
            Value : Unit_Price,
            Label : 'Unit_Price',
        },{
            $Type : 'UI.DataField',
            Value : GL_Acc,
            Label : 'GL_Acc',
        },{
            $Type : 'UI.DataField',
            Value : Cost_Center,
            Label : 'Cost_Center',
        },{
            $Type : 'UI.DataField',
            Value : Plant,
            Label : 'Plant',
        },{
            $Type : 'UI.DataField',
            Value : Disc_Per,
            Label : 'Disc_Per',
        },{
            $Type : 'UI.DataField',
            Value : GST_Per,
            Label : 'GST_Per',
        },{
            $Type : 'UI.DataField',
            Value : Taxable_Amt,
            Label : 'Taxable_Amt',
        },{
            $Type : 'UI.DataField',
            Value : Tax_Amt,
            Label : 'Tax_Amt',
        },{
            $Type : 'UI.DataField',
            Value : Total_Amt,
            Label : 'Total_Amt',
        },]
);
annotate service.track_invoices with @(
    UI.SelectionPresentationVariant #tableView : {
        $Type : 'UI.SelectionPresentationVariantType',
        PresentationVariant : {
            $Type : 'UI.PresentationVariantType',
            Visualizations : [
                '@UI.LineItem',
            ],
        },
        SelectionVariant : {
            $Type : 'UI.SelectionVariantType',
            SelectOptions : [
            ],
        },
        Text : 'Table View',
    }
);
annotate service.parent with @(
    UI.LineItem #tableView : [
        {
            $Type : 'UI.DataField',
            Value : id,
            Label : 'id',
        },{
            $Type : 'UI.DataField',
            Value : p_name,
            Label : 'p_name',
        },{
            $Type : 'UI.DataField',
            Value : partochi.c_name,
            Label : 'c_name',
        },],
    UI.SelectionPresentationVariant #tableView : {
        $Type : 'UI.SelectionPresentationVariantType',
        PresentationVariant : {
            $Type : 'UI.PresentationVariantType',
            Visualizations : [
                '@UI.LineItem#tableView',
            ],
        },
        SelectionVariant : {
            $Type : 'UI.SelectionVariantType',
            SelectOptions : [
            ],
        },
        Text : 'Table View parent',
    }
);
annotate service.parent with @(
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'child and gc',
            ID : 'childandgc',
            Target : 'partochi/@UI.LineItem#childandgc',
        },
    ]
);
annotate service.child with @(
    UI.LineItem #childandgc : [
        {
            $Type : 'UI.DataField',
            Value : c_name,
            Label : 'c_name',
        },{
            $Type : 'UI.DataField',
            Value : id,
            Label : 'id',
        },{
            $Type : 'UI.DataField',
            Value : chitogra.g_name,
            Label : 'g_name',
        },]
);
annotate service.child with @(
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'gc',
            ID : 'gc',
            Target : 'chitogra/@UI.LineItem#gc',
        },
    ]
);
annotate service.gand_child with @(
    UI.LineItem #gc : [
        {
            $Type : 'UI.DataField',
            Value : id,
            Label : 'id',
        },{
            $Type : 'UI.DataField',
            Value : g_name,
            Label : 'g_name',
        },]
);
