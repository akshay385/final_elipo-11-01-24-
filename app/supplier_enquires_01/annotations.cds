using CatalogService as service from '../../srv/service';

annotate service.supplier_enq with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'Enquiry_no',
            Value : Enquiry_no,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Supplier_name',
            Value : Supplier_name,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Description',
            Value : Description,
        },
        {
            $Type : 'UI.DataField',
            Value : Recieved_date,
            Label : 'Recieved_date',
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
            Value : last_responded,
            Label : 'last_responded',
        },
    ]
);
annotate service.supplier_enq with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'Enq_desc',
                Value : Enq_desc,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Recieved_date',
                Value : Recieved_date,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Supplier_Enquiry',
                Value : Supplier_Enquiry,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Comments_template',
                Value : Comments_template,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Edit_comment',
                Value : Edit_comment,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.CollectionFacet',
            Label : 'group',
            ID : 'group',
            Facets : [
                {
                    $Type : 'UI.ReferenceFacet',
                    Label : 'form',
                    ID : 'form',
                    Target : '@UI.FieldGroup#form',
                },],
        },
    ]
);
annotate service.supplier_enq with @(
    UI.FieldGroup #form : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : Enq_desc,
                Label : 'Enq_desc',
            },{
                $Type : 'UI.DataField',
                Value : Recieved_date,
                Label : 'Recieved_date',
            },{
                $Type : 'UI.DataField',
                Value : Supplier_Enquiry,
                Label : 'Supplier_Enquiry',
            },{
                $Type : 'UI.DataField',
                Value : Comments_template,
                Label : 'Comments_template',
            },{
                $Type : 'UI.DataField',
                Value : Edit_comment,
                Label : 'Edit_comment',
            },],
    }
);
