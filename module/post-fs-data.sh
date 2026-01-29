#!/system/bin/sh

MODDIR=${0%/*}
EMPTY="$MODDIR/empty"

mkdir -p "$EMPTY"

TARGETS="
/system/etc/nondisable
/system/priv-app/3c_ota
/system/product/etc/nondisable
/system/product/priv-app/3c_ota
/system/system_ext/etc/nondisable
/system/system_ext/priv-app/3c_ota
"

for DIR in $TARGETS; do
    mkdir -p "$DIR"
    mount --bind "$EMPTY" "$DIR"
done
