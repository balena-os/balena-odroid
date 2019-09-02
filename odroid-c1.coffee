deviceTypesCommon = require '@resin.io/device-types/common'
{ networkOptions, commonImg, instructions } = deviceTypesCommon

module.exports =
	version: 1
	slug: 'odroid-c1'
	aliases: [ 'odroid-c1' ]
	name: 'ODROID-C1+'
	arch: 'armv7hf'
	state: 'released'

	instructions: commonImg.instructions
	gettingStartedLink:
		windows: 'http://docs.resin.io/#/pages/installing/gettingStarted-ODROID-C1.md#windows'
		osx: 'http://docs.resin.io/#/pages/installing/gettingStarted-ODROID-C1.md#on-mac-and-linux'
		linux: 'http://docs.resin.io/#/pages/installing/gettingStarted-ODROID-C1.md#on-mac-and-linux'
	supportsBlink: true

	options: [ networkOptions.group ]

	yocto:
		machine: 'odroid-c1'
		image: 'resin-image'
		fstype: 'resinos-img'
		version: 'yocto-warrior'
		deployArtifact: 'resin-image-odroid-c1.resinos-img'
		compressed: true

	configuration:
		config:
			partition:
				primary: 1
			path: '/config.json'

	initialization: commonImg.initialization
