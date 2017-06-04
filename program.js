var fetch = require('node-fetch');

fetch('http://reg.bom.gov.au/fwo/IDV60901/IDV60901.95866.json')
	.then(res => { return res.json(); })
    .then(json => { console.log(json); });
