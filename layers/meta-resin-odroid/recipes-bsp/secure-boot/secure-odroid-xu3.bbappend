FILESEXTRAPATHS_prepend_odroid-xu4 := "${THISDIR}/${PN}:"

SRC_URI_append_odroid-xu4 = " \
    file://rw-rootfs.patch;patchdir=${WORKDIR} \
    "

python __anonymous() {
    # Some boards need some patching
    if d.getVar("MACHINE", True) == "odroid-xu4":
        d.delVarFlag('do_patch', 'noexec')
}


do_deploy_append () {
    install -m 755  ${S}/boot.ini ${DEPLOYDIR}
    install -m 755  ${S}/bl1.bin.hardkernel ${DEPLOYDIR}
    install -m 755  ${S}/bl2.bin.hardkernel ${DEPLOYDIR}
    install -m 755  ${S}/tzsw.bin.hardkernel ${DEPLOYDIR}
}
