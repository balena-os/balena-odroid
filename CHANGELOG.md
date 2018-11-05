Change log
-----------

# v2.25.0+rev1
## (2018-11-05)

* Update the meta-resin submodule from v2.19.0 to v2.25.0 [Florin Sarbu]

<details>
<summary> View details </summary>

## meta-resin-2.25.0
### (2018-11-02)

* Generate ssh host key at first boot (not at first connection) [Andrei Gherzan]
* Fix extraneous space in kernel-resin.bbclass config [Florin Sarbu]
* Drop obsolete eval from kernel-resin's do_kernel_resin_reconfigure [Florin Sarbu]
* Add SyslogIdentifier for balena and resin-supervisor healthdog services [Matthew McGinn]

## meta-resin-2.24.1
### (2018-11-01)

* Update resin-supervisor to v8.0.0 [Pablo Carranza Velez]

## meta-resin-2.24.0
### (2018-10-24)

* resin-info: Small tweak for balenaCloud product [Andrei Gherzan]
* Update resin-supervisor to v7.25.8 [Pablo Carranza Velez]
* Rename resinOS to balenaOS [Andrei Gherzan]

## meta-resin-2.23.0
### (2018-10-22)

* Update resin-supervisor to v7.25.5 [Cameron Diver]
* recipes-containers: Increase healthcheck timeout to 180s [Gergely Imreh]
* .gitignore: add node_modules and package-lock files [Giovanni Garufi]

## meta-resin-2.22.1
### (2018-10-20)

* Update resin-supervisor to v7.25.3 [Pablo Carranza Velez]

## meta-resin-2.22.0
### (2018-10-19)

* Update resin-supervisor to v7.25.2 [Andrei Gherzan]
* Include a CONTRIBUTING.md file [Andrei Gherzan]
* Update to ModemManager v1.8.2 [Andrei Gherzan]
* Updates on contributing-device-support.md [Vicentiu Galanopulo]

## meta-resin-2.21.0
### (2018-10-18)

* Improve systemd service ordering in rollbacks [Zubair Lutfullah Kakakhel]
* Update resin-supervisor to v7.24.1 [Andrei Gherzan]

## meta-resin-2.20.0
### (2018-10-18)

* Avoid expander on flasher based on root kernel argument [Andrei Gherzan]
* resin-vars: Implement custom ssh keys service [Andrei Gherzan]
* Fix redsocks interface creation when no proxy configured [Andrei Gherzan]
* Replace NM's DHCP request option "Client indentifier" with udhcpc style option [Sebastian Panceac]
* Fix for rollbacks in case of old balenaOS version [Zubair Lutfullah Kakakhel]
* Update resin-supervisor to v7.21.4 [Cameron Diver]
* Warn if rules are found in /etc/udev/rules.d [Zubair Lutfullah Kakakhel]
* Add support to load custom udev rules from config.json [Zubair Lutfullah Kakakhel]
* aufs-util: Package auplink separately [Florin Sarbu]
* Enable kernel config dependencies for MBIM and QMI [Florin Sarbu]
* Set UPX to use LZMA compression by default [Andrei Gherzan]
* Downgrade UPX to 3.94 for ARM [Andrei Gherzan]
* Balena update for rollbacks. mobynit can now mount rootfs from sysroot. [Zubair Lutfullah Kakakhel]
* Fix proxy when using containers over bridge network [Andrei Gherzan]
* Add support for aufs 4.9.9+, 4.9.94+, 4.18 [Florin Sarbu]
* Add rollback-altboot service before balena service [Zubair Lutfullah Kakakhel]
* Add Automated Rollback recipe [Zubair Lutfullah Kakakhel]
* Add Automated Rollback support in u-boot env_resin.h [Zubair Lutfullah Kakakhel]
* Add a hook to support Automated Rollbacks [Zubair Lutfullah Kakakhel]
* Update HUP grub hook to support Automated Rollbacks [Zubair Lutfullah Kakakhel]
* Update HUP u-boot hook to support Automated Rollbacks [Zubair Lutfullah Kakakhel]
* Move kernel-image-initramfs from resin-image recipe to packagegroup-resin.inc [Zubair Lutfullah Kakakhel]
* Have 99-resin-grub hostapp-update-hook decide which grub to use [Florin Sarbu]

## meta-resin-2.19.0
### (2018-09-23)

* Update Balena to fix tty console hanging in some cases [Petros Angelatos]
* Pin down cargo deps (using Cargo.lock) to versions known working with rust 1.24.1 (for sumo) [Florin Sarbu]
* Remove duplicate packaging of bcm43143 [Florin Sarbu]
* Set ModemManager to ignore Inca Roads Serial Device [Petros Angelatos]
* Add support for aufs 4.14.56+ [Florin Sarbu]
* Update resin-supervisor to v7.19.7 [Cameron Diver]
</details>

# v2.19.0+rev1
## (2018-09-25)

* Update the meta-resin submodule to v2.19.0 [Florin Sarbu]

<details>
<summary> View details </summary>

## meta-resin-2.19.0
### (2018-09-23)

* Update Balena to fix tty console hanging in some cases
* Pin down cargo deps (using Cargo.lock) to versions known working with rust 1.24.1 (for sumo)
* Remove duplicate packaging of bcm43143
* Set ModemManager to ignore Inca Roads Serial Device
* Add support for aufs 4.14.56+
* Update resin-supervisor to v7.19.7

## meta-resin-2.18.1
### (2018-09-14)

* Add a parsable representation of the changelog

## meta-resin-v2.18.0
### (2018-09-12)

* Update grub hooks to prepare to load kernel from root [Zubair Lutfullah Kakakhel]
* Update resin-supervisor to v7.19.4 [Cameron Diver]
* Kernel-resin.bbclass: Enable CONFIG_IP_NF_TARGET_LOG as a module [John (Jack) Brown]
* Balena: Update to current HEAD of 17.12-resin [Andrei Gherzan]
* Compress os-config with UPX on arm64 too [Andrei Gherzan]
* Update upx to 3.95 [Andrei Gherzan]
* Add support to skip flasher detection in env_resin.h [Zubair Lutfullah Kakakhel]
* Add the kernel to the rootfs [Zubair Lutfullah Kakakhel]
* Rework resin-supervisor systemd dependency on balena [Florin Sarbu]
* Enhanced security options for dropbear - sumo [Andrei Gherzan]
* Enhanced security options for dropbear - rocko [Andrei Gherzan]
* Enhanced security options for dropbear - pyro [Andrei Gherzan]
* Enhanced security options for dropbear - morty [Andrei Gherzan]
* Enhanced security options for dropbear - krogoth [Andrei Gherzan]

## meta-resin-2.17.0
### (2018-09-03)

* Resin-proxy-config: The no_proxy file fails to parse when missing EOL [Rich Bayliss]

## meta-resin-2.16.0
### (2018-08-31)

* Os-config: UPX is broken on aarch64 [Theodor Gherzan]
* Allow flasher types to pin preloaded devices [Theodor Gherzan]
* Disable PIE for go [Zubair Lutfullah Kakakhel]
* Disable PIE for balena [Zubair Lutfullah Kakakhel]

</details>

# v2.15.1+rev2
## (2018-09-19)

* Update the poky submodule to sumo-19.0.1 [Florin Sarbu]
* Add a parsable representation of the changelog [Giovanni Garufi]

# v2.15.1+rev1
## (2018-08-31)

* Update the meta-resin submodule to version v2.15.1 [Florin Sarbu]

# v2.14.3+rev2
## (2018-08-27)

* Add versionist support [Giovanni Garufi]

# v2.14.3+rev1
## (2018-08-21)

* Update the meta-resin submodule to version v2.14.3 [Florin]
* Update the resin-yocto-scripts submodule to 8312741e13604a9d166370349061876afb22c0fa [Florin]
* Enable I2C-1 bus for Odroid XU4 [Florin]
* Fix serial console for Odroid C1 [Florin]

# v2.14.0+rev1
## (2018-07-18)

* Update the meta-resin submodule to version v2.14.0 [Florin]

# v2.13.6+rev1
## (2018-07-13)

* Update the meta-resin submodule to version v2.13.6 [Florin]

# v2.13.5+rev1
## (2018-07-09)

* Update the meta-resin submodule to version v2.13.5 [Sebastian]
* Update the resin-yocto-scripts submodule to 59ccd8558435ff6424827fb36ccb43b14650f4d4 [Sebastian]

# v2.13.3+rev1
## (2018-07-05)

* Update the meta-resin submodule to version v2.13.3 [Florin]

# v2.13.2+rev1
## (2018-07-04)

* meta-resin-odroid: Set LAYERSERIES_COMPAT variable in layer's local.conf [Sebastian]
* linux-hardkernel: compile kernel modules with -fno-pic flag [Sebastian]
* linux-hardkernel: activate CONFIG_NLS_CODEPAGE_437 as built-in [Sebastian]
* u-boot-hardkernel: Use revision from BSP [Sebastian]
* Update the meta-resin submodule to version v2.13.2 [Sebastian]
* odroid-c1.coffe: Switch to Sumo [Sebastian]
* linux-hardkernel: Build linux-hardkernel for Odrdoid C1 board [Sebastian]
* Add uvcvideo.ko to Odroid XU4 image [Florin]
* u-boot-hardkernel: Remove obsolete patches and use the same git revision as in previous version [Sebastian]
* resin-image-initramfs: For Odroid-C1 don't build wic images as asked by BSP [Sebastian]
* resin-image: For Odroid-C1 use the new dtb name and remove unwanted image types [Sebastian]

# v2.13.1+rev1
## (2018-06-15)

* Update the meta-resin submodule to version v2.13.1 [Sebastian]
* Update resin-yocto-scripts layer to 6eddcc9a637e00dbca94815f9af0f2b7bf61eb88 [Sebastian]
* odroid-xu4.coffee: Set the version of the odroid-xu4 to Sumo [Sebastian]
* bblayers.conf.sample: Build using Sumo from meta-resin [Sebastian]
* resin-image: Use the correct offset for writing TrustZone binary in image [Sebastian]
* resin-image-initramfs: don't build wic images as asked by BSP [Sebastian]
* linux-stable: Don't build X.509 certificate parser functionality in kernel [Sebastian]
* u-boot: updated resin intergration patch to avoid kernel overwriting of DTB in memory [Sebastian]
* u-boot: remove deprecated recipes and patches [Sebastian]
* Update poky, meta-openembedded, meta-rust to Sumo branch [Sebastian]
* Update BSP to Sumo branch [Sebastian]

# v2.12.7+rev1
## (2018-05-08)

* Update the meta-resin submodule to version v2.12.7 [Florin]

# v2.12.5+rev2
## (2018-04-23)

* Update the resin-yocto-scripts submodule to f7718efbbf53369aaacb7eb54e707ee8a5d4fc4b (on master branch) [Florin]
* Backport kernel 3.19 VFS patches in order to fix container update filesystem errors [Florin]

# v2.12.5+rev1
## (2018-03-28)

* Update the meta-resin submodule to version v2.12.5 [Florin]
* Update the resin-yocto-scripts submodule to 9cecb1ca4d9d4713dd337148b7d04a17afdba772 (on master branch) [Florin]
* Add bootloader hostapp hooks for Odroid C1 [Florin]
* Integrate with resin-u-boot [Florin]
* Backport u-boot commits needed for resin-u-boot integration [Florin]

# v2.12.1+rev1
## (2018-03-12)

* Update the meta-resin submodule to version v2.12.1 [Andrei]

# v2.10.1+rev1
## (2018-03-01)

* Update the meta-resin submodule to version v2.10.1 [Florin]
* Make sure u-boot does not load the dtb and the kernel with initramfs in overlapping regions [Florin]
* Use the kernel with the bundled resin initramfs for the Odroid C1+ [Florin]
* Make only the Odroid XU4 use overlayfs for docker storage driver [Florin]
* Update the resin-yocto-scripts submodule to dc9dfe466e48d934e55fb20a05156886873b1ab1 (on master branch) [Florin]
* Fix 99-flash-bootloader bootloader md5sum check from hostapp-update-hooks [Florin]
* Update bblayers.conf.sample for Yocto Pyro [Florin]
* Update yocto version to correct one for the Odroid C1 [Florin]

# v2.9.7+rev2
## (2018-02-01)

* Update the resin-yocto-scripts submodule to 6f7a9ab326bb822196e3e48b08ef1d73d08caec6 (on master branch) [Florin]
* Use the new offsets for u-boot env and Trusted Zone binary blob that our new u-boot (version 2017.09) expects [Florin]

# v2.9.7+rev1
## (2018-01-26)

* Update the meta-resin submodule to version v2.9.7 [Florin]
* Enable driver for the usb eth adapter present on the Odroid XU4 [Florin]
* Implement resin-u-boot specification for odroid-xu4 [Florin]
* Switch to u-boot 2017.09 [Florin]
* Use the kernel with the bundled resin initramfs [Florin]
* Switch Odroid XU4 from aufs to overlayfs for the docker storage driver [Florin]
* Deploy the bootloader files to the /resin-boot directory for hostapps update [Florin]
* Update layers to Pyro [Will]
* Update the resin-yocto-scripts submodule to 6f7a9ab326bb822196e3e48b08ef1d73d08caec6 (on master branch) [Florin]
* Increase initramfs maximum size to 12 MB (12288 KB) [Florin]
* Update meta-rust to morty [Will]
* Include meta-rust layer [Will]
* Add meta-rust layer [Will]

# v2.3.0+rev1 - 2017-08-17

* Update the meta-resin submodule to version v2.3.0 [Florin]
* Update the resin-yocto-scripts submodule to HEAD of master [Florin]
* Update the resin-yocto-scripts submodule [Florin]
* Update resin-yocto-scripts to allow external meta-resin builds [Will]
* Update resin-yocto-scripts [Will]

# v2.0.0-beta12.rev1 - 2017-02-27

* Bump resin-yocto-scripts to current HEAD [Andrei]
* meta-resin: Bump to 2.0.0-beta12 [Andrei]

# v2.0.0-beta11.rev1 - 2017-02-15

* Update meta-resin to v2.0.0-beta.11 [Andrei]

# v2.0.0-beta10.rev1 - 2017-02-14

* Update meta-resin to v2.0.0-beta.10 [Andrei]

# v2.0.0-beta.9 - 2017-02-08

* Update meta-resin to v2.0-beta.9 [Andrei]

# v2.0.0-beta.8 - 2017-01-27

* Update meta-resin to v2.0-beta.8 [Andrei]
* Update resin-yocto-scripts to HEAD of the master branch [Florin]

# v2.0.0-beta.7 - 2016-12-05

* Update meta-resin to v2.0-beta.7 [Florin]

# v2.0.0-beta.6 - 2016-12-05

* Update meta-resin to v2.0-beta.6 [Andrei]

# v2.0.0-beta.5 - 2016-11-30

* Update meta-resin to v2.0-beta.5 [Andrei]

# v2.0.0-beta.3 - 2016-11-07

* Update meta-resin to v2.0-beta.3 [Andrei]
* Cleanup docker-resin-supervisor-disk of unneeded variables [Andrei]
* Update resin-yocto-scripts to fix logging in container builds

# v2.0.0-beta.1 - 2016-10-11

* Update meta-resin to v2.0-beta.1 [Andrei]
* Add meta-filesystem as we need aufs-utils [Andrei]
* Add build support for resinos [Andrei]
* Update resin-yocto-script to include changes in our image types [Theodor]
* Replace the concept of a debug image with a development image [Theodor]
* Update meta-resin to include avahi [Florin]
* Update resin-yocto-scripts to include kernel headers handling as gzip [Florin]

# v1.16.0 - 2016-09-27

* Update meta-resin to v1.16 [Florin]

# v1.15.0 - 2016-09-24

* Update meta-resin to v1.15 [Florin]

# v1.14.0 - 2016-09-23

* Update meta-resin to v1.14 [Florin]

# v1.13.0 - 2016-09-23

* Update meta-resin to v1.13 [Florin]

# v1.12.0 - 2016-09-21

* Update meta-resin to v1.12 [Florin]
* Update resin-yocto-scripts to include resinhup upload to dockerhub [Florin]
* Update meta-resin [Florin]
* Change .coffee to announce partition 1 now holds config.json and also introduce versioning (v1) [Florin]

# v1.11.0 - 2016-08-31

* Update meta-resin to v1.11 [Florin]

# v1.10.0 - 2016-08-24

* Update meta-resin to v1.10 [Florin]

# v1.9.0 - 2016-08-24

* Update meta-resin to v1.9 [Florin]
* Update resin-yocto-scripts for including kernel modules headers deploy [Florin]
* Update yocto-resin-scripts for host nodejs detection improvements [Florin]

# v1.8.0 - 2016-08-02

* Bump meta-resin to v1.8 [Andrei]
* Bump resin-device-types to include partial manifest support [Andrei]
* No more debug images in staging

# v1.7.0 - 2016-07-14

* Update meta-resin to v1.7

# v1.6.0 - 2016-07-06

* Update meta-resin to v1.6 [Florin]

# v1.5.0 - 2016-07-04

* Update meta-resin to v1.5 [Florin]

# v1.5.0rc4 - 2016-06-29

* Update meta-resin to include supervisor update to v1.11.6 [Florin]

# v1.5.0rc3 - 2016-06-29

* Update meta-resin to include openvpn-resin.service refactoring [Florin]

# v1.5.0rc2 - 2016-06-28

* Update meta-resin to include docker key.json fix [Florin]
* Update meta-resin to include flasher fixes [Florin]

# v1.4.0 - 2016-06-27

* Update meta-resin to v1.4 [Florin]
* Update meta-resin to allow let error out [Florin]
* Update meta-resin to allow patching of kernel-modules-headers [Florin]
* Bump meta-resin to fix various issues [Andrei]
* Fix a small syntax error in meta-resin [Andrei]
* Fix automation fix for debug image [Andrei]
* Replace RESIN_STAGING_BUILD by DEBUG_IMAGE [Andrei]

# v1.3.0 - 2016-06-24

* Update meta-resin to v1.3 [Florin]
* Update meta-resin to include kernel modules compress support [Andrei]
* Replace SUPERVISOR_TAG by TARGET_TAG [Andrei]
* Custom docker images in connectable builds [Andrei]
* Bump meta-resin to include connectable builds [Andrei]
* Add support for optional supervisor image [Andrei]
* Update meta-resin to v1.2 [Andrei]
* Bump meta-resin to HEAD [Andrei]
* Bump yocto-resin-scripts to bring in improvements for in-docker builds [Andrei]
* Configure builds with RM_OLD_IMAGE [Theodor]
* Bump meta-resin to include switch from rce to docker [Andrei]

# v1.1.1 - 2016-03-16

* Promote odroid-c1.coffee and odroid-ux3.coffee to released [Florin]
* Transition from fido -> jethro [Theodor]
