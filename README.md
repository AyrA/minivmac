# Mini vMac

This is a copy of mini vMac version 37.03.

The exe is built on a Debian machine using the commands in `create_build.sh`

## Differences

- It starts with 1x speed instead of 8x
- It no longer pauses when it loses focus
- 2x Magnification is active by default

## Using it

The build output will generate a "minivmac.exe" file you can double click to run.
You can find a prebuilt copy in the "Releases" section of this github repository.

You need a "vMac.ROM" file, which you can only legally obtain from an existing Mac,
but it's not my job to tell you to not google that file name.

The emulator tries to load up to 6 disk images automatically
if they're named from `disk1.dsk` to `disk6.dsk`.
It stops loading if a file cannot be found, because of this,
you cannot have gaps in the numbering, and need to start at one.

As an alternative you can open disks by:

- Specifying up to six file names on the command line
- Dragging a file onto the executable icon in file explorer
- Using the file menu
- Pressing CTRL+O
- Dragging a disk onto the user interface

### Getting OS disks

*Have a look in the resources directory for a zip with many disk images*

When you run the executable, and you are in possession of a valid ROM file,
you may find that the emulator just displays a floppy disk image
with a question mark on it.

This means the Mac is waiting for you to insert a floppy disk containing a valid OS.
The old macs came without harddrives, so everything is floppy based.

Mini vMac has the capabilities of handling up to 6 floppy disks simultaneously,
and they can be of any size, up to 2 GB.

Standard floppies of that time were 400k or 800k.
You know when you use a non-standard disk if there is a "v" letter
on the floppy icon on the Mac desktop.
There is no functional difference between standard and non-standard disks.

Because everything is floppy based, there is no installation to perform.
This is in contrast to early DOS versions where you were expected
to install it to your own floppy disks from a set of setup disks.
Those computers usually had two floppy drives.
One would contain the OS, the other the applications and files you used.

For a legacy Mac, this is a bit simpler.
The ROM file of the Mac contains most of the routines necessary to run the system.
The operating system is mostly just to call into those routines,
and it provides a few tools like a calculator or clock.
This design decision of the Mac means that there is not that much OS to add to it.
The operating system is small enough to fit onto most disks that contain other applications.
Because of this, many disks that contain applications also contain a mini version of the OS.

If you want to use MacPaint for example, you can either boot directly from the disk,
or insert it while another disk is already inserted and booted from.

This also means that if you boot from a disk, then eject it,
then insert another disk with an OS on it, the system may accept this as the new OS.
If it doesn't it will eventually prompt you to reinsert the original disk again.
Ejected disks appear grayed out on the desktop.
Except for the boot disk, you can get rid of those ghost icons by dragging them onto the trash.
If you do this with a disk that is still loaded into the emulator, it will be correctly ejected.

### Possible problems

Here are some problems and their solutions

#### Emulator refusing to exit

If you try to close the emulator and it complains
that you should shut down the emulated computer first,
you simply have to use the "Shut down" command in the "Special" menu above the desktop.

Note: Very early versions of the OS lacked this command.
The "unclean shutdown" detection of the emulator is based on the loaded images.
To shut down a Mac that misses this option, simply select all disks on the desktop,
then press ALT+E to eject them all (or do it one by one if you want to).

As soon as no disks are loaded anymore, you can exit with the close button of the window itself
without using the shut down option.

#### Files only visible sometimes

You may be using a very old OS.
Early Mac OS had no support for folders, and the file system did neither.
This was eventually changed to accomodate 800k floppies.

If a disk contains folders or contains the newer file system,
you will not see all items on it on old OS versions.
The solution is to either use a newer OS entirely,
or temporarily use one to copy the files to a disk formatted with the old OS.

You format a disk using the "Erase Disk" option in the "Special" menu on the desktop.

#### No file transfer

To get files in and out of the Mac you can use the `importfl` and `exportfl` disk images.
You can obtain them among other things
[From the author of mini vMac](https://www.gryphel.com/c/minivmac/extras/index.html)
from the resources folder.
You may also want to check out the other tools on that page.

Mini vMac currently lacks builtin file transfer methods.
[Basilisk II](https://www.emaculation.com/forum/viewforum.php?f=6)
has direct access to your Windows drives.

### Installing an OS

If you insist on installing the OS on a new disk image
instead of booting from the original disk image,
boot from the floppy of the OS you want to install,
then open the harddrive image you want to install to.
If prompted to initialize, do so.

To install the operating system, drag the "System Folder" from the old disk to the new disk.
Congratulations, you're done.

Note: Later versions of the operating system contain an installer that does this for you.

## Building it yourself

Use the [official instructions](https://www.gryphel.com/c/minivmac/beta.html).

I found the easiest way to build it is on a debian machine.
The options in `create_build.sh` target 64 bit Windows.

Since version 37, the build system supports generating Visual Studio projects,
and no longer seems to depend on bash scripts, but can output VB scripts and other types now.

This should open it up for building on Windows directly,
but I haven't tested this yet.

## Original Readme

	Paul C. Pratt
	www.gryphel.com
	July 27, 2005


MnvM-b37 is the build system for Mini vMac, a miniature Macintosh emulator.

Further information may be found at https://www.gryphel.com/c/minivmac/


You can redistribute MnvM-b37 and/or modify it under the terms
of version 2 of the GNU General Public License as published by
the Free Software Foundation.  See the included file COPYING.

MnvM-b37 is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
license for more details.

