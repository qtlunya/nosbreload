# NoSBReload

You may have noticed an issue with iOS 13 jailbreaks where autofill for passwords and SMS OTP codes doesn't work correctly. This appears to be caused by `sbreload`, which is supposed to be a faster and cleaner way to respring, but unfortunately it also breaks autofill. (You can tell when it's being used because you won't see a respring logo, just a black screen.)

This tweak simply replaces `sbreload` with another binary that calls `killall -9 SpringBoard` instead, thereby avoiding the issue.

You only need to do an `ldrestart` or `launchctl reboot userspace` once after installing this tweak, and then autofill should continue working through resprings.

## Notes

* Killing SpringBoard this way will break "Time since last full charge" (which is only visible on iOS 13 if you're using the System Info tweak). However, many tweaks still respring by killing SpringBoard anyway, so you may run into that issue even without this tweak. Other parts of battery stats are not affected and will continue to work fine.
* Uninstalling this tweak should restore the original `sbreload` binary. If this does not happen for some reason, reinstall UIKit Tools or restore rootfs.
* If UIKit Tools gets an update, you should uninstall this tweak before updating it to avoid conflicts.
