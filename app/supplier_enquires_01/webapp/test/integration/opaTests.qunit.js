sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'supplierenquires01/test/integration/FirstJourney',
		'supplierenquires01/test/integration/pages/supplier_enqList',
		'supplierenquires01/test/integration/pages/supplier_enqObjectPage'
    ],
    function(JourneyRunner, opaJourney, supplier_enqList, supplier_enqObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('supplierenquires01') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onThesupplier_enqList: supplier_enqList,
					onThesupplier_enqObjectPage: supplier_enqObjectPage
                }
            },
            opaJourney.run
        );
    }
);