var page = require('webpage').create(),
	system = require('system'),
	url = system.args[1];

setTimeout(function() {
	console.log('Interrupted');
	phantom.exit(1);
}, 60000);

page.open(url, function (status) {
	var version = page.evaluate(function() {
		var regexp = /Version: ([0-9].[0-9].[0-9]{5}) \(([0-9]{5,10})\)/i,
			last_apk_a = $('div.down').find('a:contains("Download APK")').first(),
			last_apk_version = last_apk_a.parent().parent().children('p:eq(0)').text(),
			matcher = last_apk_version.match(regexp);

		var result = {
			link: last_apk_a.attr('href'),
			version: matcher[1],
			build: matcher[2]
		};

		return result;
	});

	console.log(JSON.stringify(version));
	phantom.exit(0);
});