#!/usr/bin/env bash

beg=$(TZ="Asia/Taipei" date --iso-8601=second)

opts=""
opts="$opts --quiet"
emerge $opts --sync
emerge $opts --unmerge sys-fs/eudev
echo ">=sys-apps/dbus-1.10.12 systemd"  > /etc/portage/package.use/iputils
echo "sys-libs/pam" > /etc/portage/package.mask
emerge $opts --pretend --tree --verbose sys-apps/systemd

emerge $opts sys-apps/systemd
for (( x=1; x<=3; x++ ))
do
    emerge $opts --keep-going --skip-first sys-apps/systemd
done

end=$(TZ="Asia/Taipei" date --iso-8601=second)

echo "beg: $beg"
echo "end: $end"
