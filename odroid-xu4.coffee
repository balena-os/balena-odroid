deviceTypesCommon = require '@resin.io/device-types/common'
{ networkOptions, commonImg, instructions } = deviceTypesCommon

module.exports =
	version: 1
	slug: 'odroid-xu4'
	aliases: [ 'odroid-ux3', 'odroid-u3+' ]
	name: 'ODROID-XU4'
	arch: 'armv7hf'
	state: 'released'

	instructions: commonImg.instructions
	gettingStartedLink:
		windows: 'https://docs.resin.io/installing/gettingStarted-Odroid-C1/#creating-your-first-application'
		osx: 'https://docs.resin.io/installing/gettingStarted-Odroid-C1/#creating-your-first-application'
		linux: 'https://docs.resin.io/installing/gettingStarted-Odroid-C1/#creating-your-first-application'
	supportsBlink: true

	options: [ networkOptions.group ]

	yocto:
		machine: 'odroid-xu4'
		image: 'resin-image'
		fstype: 'resinos-img'
		version: 'yocto-pyro'
		deployArtifact: 'resin-image-odroid-xu4.resinos-img'
		compressed: true

	configuration:
		config:
			partition:
				primary: 1
			path: '/config.json'

	initialization: commonImg.initialization
