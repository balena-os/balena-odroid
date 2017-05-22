deviceTypesCommon = require '@resin.io/device-types/common'
{ networkOptions, commonImg, instructions } = deviceTypesCommon

module.exports =
	version: 1
	slug: 'odroid-xu4'
	aliases: [ 'odroid-xu3', 'odroid-u3+' ]
	name: 'ODROID-XU4'
	arch: 'armv7hf'
	state: 'released'

	instructions: commonImg.instructions
	gettingStartedLink:
		windows: 'http://docs.resin.io/#/pages/installing/gettingStarted-ODROID-XU4.md#windows'
		osx: 'http://docs.resin.io/#/pages/installing/gettingStarted-ODROID-XU4.md#on-mac-and-linux'
		linux: 'http://docs.resin.io/#/pages/installing/gettingStarted-ODROID-XU4.md#on-mac-and-linux'
	supportsBlink: true

	options: [ networkOptions.group ]

	yocto:
		machine: 'odroid-xu3'
		image: 'resin-image'
		fstype: 'resinos-img'
		version: 'yocto-jethro'
		deployArtifact: 'resin-image-odroid-xu3.resinos-img'
		compressed: true

	configuration:
		config:
			partition:
				primary: 1
			path: '/config.json'

	initialization: commonImg.initialization
