#!/bin/sh
if make buildkernel KERNCONF=DEBUG NO_CLEAN=yes KERNFAST=1; then
	if make installkernel KERNCONF=DEBUG; then
		reboot
	fi
fi
