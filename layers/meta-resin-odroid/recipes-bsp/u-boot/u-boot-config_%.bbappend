FILESEXTRAPATHS_prepend_odroid-xu3 := "${THISDIR}/${PN}:"

SRC_URI_append_odroid-xu3 = " \
    file://rw-rootfs.patch;patchdir=${WORKDIR} \
    "

python __anonymous() {
    # Some boards need some patching
    if d.getVar("MACHINE", True) == "odroid-xu3":
        d.delVarFlag('do_patch', 'noexec')
}
