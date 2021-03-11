deviceTypesCommon = require '@resin.io/device-types/common'
{ networkOptions, commonImg, instructions } = deviceTypesCommon

module.exports =
	version: 1
	slug: 'odroid-c1'
	aliases: [ 'odroid-c1' ]
	name: 'ODROID-C1+'
	arch: 'armv7hf'
	state: 'released'
	private: false

	instructions: commonImg.instructions
	gettingStartedLink:
		windows: 'https://www.balena.io/docs/learn/getting-started/odroid-c1/nodejs/'
		osx: 'https://www.balena.io/docs/learn/getting-started/odroid-c1/nodejs/'
		linux: 'https://www.balena.io/docs/learn/getting-started/odroid-c1/nodejs/'
	supportsBlink: true

	options: [ networkOptions.group ]

	yocto:
		machine: 'odroid-c1'
		image: 'balena-image'
		fstype: 'balenaos-img'
		version: 'yocto-sumo'
		deployArtifact: 'balena-image-odroid-c1.balenaos-img'
		compressed: true

	configuration:
		config:
			partition:
				primary: 1
			path: '/config.json'

	initialization: commonImg.initialization
