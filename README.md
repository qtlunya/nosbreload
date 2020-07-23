# NoSBReload

You may have noticed an issue with some iOS 13 jailbreaks where autofill for passwords and SMS OTP codes doesn't work correctly. This appears to be caused by `sbreload`, which is supposed to be a faster and cleaner way to respring, but unfortunately it also breaks autofill. (You can tell when it's being used because you won't see a respring logo, just a black screen.)

This tweak simply replaces the `sbreload` binary with one that calls `killall -9 SpringBoard` instead, thereby avoiding the issue. You only need to do an `ldrestart` or `launchctl reboot userspace` once after installing this tweak, and then autofill should continue working through resprings.

It should only be necessary to install this if you're using unc0ver or checkra1n on iOS 13, or if you encounter other glitches caused by `sbreload` on iOS 12. Odyssey and odysseyra1n users should just update to libhooker 1.2.4 or newer instead.

## Notes

* Cydia seems to use a hardcoded version of `sbreload`, so it won't be affected by this tweak. You should use another package manager or respring manually and not through Cydia.
* Some tweaks such as BatteryRamp, Sentinel, and SafeShutdown kill `backboardd` instead of `SpringBoard`, which also breaks autofill. This tweak doesn't fix that, so you'll have to do an ldrestart or userspace reboot afterwards to fix it. (Again, this is only an issue on unc0ver and checkra1n, not odysseyra1n.)

### Other notes
* Killing SpringBoard this way will break "Time since last full charge" (which is only visible on iOS 13 if you're using the System Info tweak). However, many tweaks still respring by killing SpringBoard anyway, so you may run into that issue even without this tweak. Other parts of battery stats are not affected and will continue to work fine.
* Uninstalling this tweak should restore the original `sbreload` binary. If this does not happen for some reason, reinstall UIKit Tools or restore rootfs.
* If UIKit Tools gets an update, you should uninstall this tweak before updating it to avoid conflicts.
