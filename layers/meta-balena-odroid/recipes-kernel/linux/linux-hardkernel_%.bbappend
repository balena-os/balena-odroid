inherit kernel-resin

FILESEXTRAPATHS_append := ":${THISDIR}/${PN}"

EXTRA_OEMAKE = " 'CFLAGS_MODULE=-fno-pic'"

SRC_URI += " \
    file://0001-tools-Add-Build.include-script.patch \
    file://mali_build.patch \
    file://0002-Revert-fix-d_walk-non-delayed-__d_free-race.patch \
    file://0003-Revert-d_walk-might-skip-too-much.patch \
    file://0004-Revert-d_walk-might-skip-too-much.patch \
    file://0005-Revert-dcache-Fix-locking-bugs-in-backported-deal-wi.patch \
    file://0006-Revert-deal-with-deadlock-in-d_walk.patch \
    file://0007-helper-for-reading-d_count.patch \
    file://0008-Add-new-lockref-infrastructure-reference-implementat.patch \
    file://0009-autofs-fix-lockref-lookup.patch \
    file://0010-BACKPORT-vfs-make-the-dentry-cache-use-the-lockref-infrastruc.patch \
    file://0011-overlayfs-Fix-calls-to-vfs_rename-vfs_unlink.patch \
    file://0012-aufs-backports.patch \
    file://0013-BACKPORT-aufs-for-linux-3.13-support-for-NFSv4-delegation-2-4.patch \
    file://0014-aufs-for-linux-3.13-support-for-NFSv4-delegation-4-4.patch \
    file://0015-BACKPORT-new-helpers-lock_mount_hash-unlock_mount_hash.patch \
    file://0016-BACKPORT-vfs-add-d_walk.patch \
    file://0017-vfs-check-submounts-and-drop-atomically.patch \
    file://0018-locks-introduce-new-FL_DELEG-lock-flag.patch \
    file://0019-locks-implement-delegations.patch \
    file://0020-namei-minor-vfs_unlink-cleanup.patch \
    file://0021-locks-break-delegations-on-unlink.patch \
    file://0022-locks-helper-functions-for-delegation-breaking.patch \
    file://0023-vfs-pull-ext4-s-double-i_mutex-locking-into-common-c.patch \
    file://0024-vfs-take-i_mutex-on-renamed-file.patch \
    file://0025-BACKPORT-locks-break-delegations-on-rename.patch \
    file://0026-BACKPORT-vfs-rename-use-common-code-for-dir-and-non-dir.patch \
    file://0027-vfs-Don-t-allow-overwriting-mounts-in-the-current-mo.patch \
    file://0028-BACKPORT-vfs-Lazily-remove-mounts-on-unlinked-files-and-direc.patch \
    file://0029-BACKPORT-resizable-namespace.c-hashes.patch \
    file://0030-BACKPORT-vfs-Keep-a-list-of-mounts-on-a-mount-point.patch \
    file://0031-BACKPORT-vfs-factor-out-lookup_mountpoint-from-new_mountpoint.patch \
    file://0032-BACKPORT-vfs-Add-a-function-to-lazily-unmount-all-mounts-from.patch \
    file://0033-BACKPORT-vfs-add-cross-rename.patch \
    file://0034-aufs-tiny-extract-a-new-func-xino_fwrite_wkq.patch \
    file://0035-aufs-for-4.3-XINO-handles-EINTR-from-the-dying-proce.patch \
"

# Update to a more recent version to fix aufs build
SRCREV_odroid-c1 = "e256c9f9196a98cbacde730fda602e793b385a27"
KV_odroid-c1 = "3.10.107"

# These configs set CONFIG_CFG80211=m which breaks the hardkernel build
RESIN_CONFIGS_remove = "rtl8192cu"
RESIN_CONFIGS_remove = "ralink"
RESIN_CONFIGS_remove = "brcmfmac"

KERNEL_DEVICETREE_odroid-c1 = "meson8b_odroidc.dtb"
