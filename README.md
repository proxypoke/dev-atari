dev-atari
=========

An overlay for Portage, focusing on utilities and tools for Atari ST
development.

binutils
--------

The binutils in this overlay are not placed in sys-devel on purpose, since they
are patched to support m68k-atari-mint as a target, and will always build as a
cross-development toolchain for this target.

MiNTBin
-------

A collection of tools for manipulating MiNT executables, complementing binutils.
