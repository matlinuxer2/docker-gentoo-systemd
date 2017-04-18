#!/usr/bin/env bash

beg=$(TZ="Asia/Taipei" date --iso-8601=second)

opts=""
opts="$opts --quiet"
emerge $opts --sync
emerge $opts --unmerge sys-fs/eudev
echo ">=sys-apps/dbus-1.10.12 systemd"  > /etc/portage/package.use/iputils
emerge $opts --pretend --tree --verbose sys-apps/systemd
emerge $opts --noreplace --keep-going sys-apps/systemd

end=$(TZ="Asia/Taipei" date --iso-8601=second)

echo "beg: $beg"
echo "end: $end"
