# Mini vMac

This is a copy of mini vMac version 37.03

## Differences

- It starts with 1x speed instead of 8x
- It no longer pauses when moved to background
- Magnification is active by default

## Using it

The build output will generate a "minivmac.exe" file you can double click to run.
You need a "vMac.rom" file, which you can only legally obtain from an existing mac.

## Building it yourself

Use the (official instructions)[https://www.gryphel.com/c/minivmac/beta.html].

I found the easiest way to build it is on a debian machine.
The options in `create_build.sh` target 64 bit Windows.

Since version 37, the build system supports generating Visual Studio projects,
and no longer seems to depend on bash scripts, but can output VB scripts and other types now.

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

