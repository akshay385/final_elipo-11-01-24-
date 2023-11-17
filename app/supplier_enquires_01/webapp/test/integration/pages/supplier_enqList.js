sap.ui.define(['sap/fe/test/ListReport'], function(ListReport) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ListReport(
        {
            appId: 'supplierenquires01',
            componentId: 'supplier_enqList',
            contextPath: '/supplier_enq'
        },
        CustomPageDefinitions
    );
});