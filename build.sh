#!/usr/bin/env bash

emerge --sync
emerge --unmerge sys-fs/eudev
echo ">=sys-apps/dbus-1.10.12 systemd"  > /etc/portage/package.use/iputils
emerge --quiet sys-apps/systemd
