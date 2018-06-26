#!/bin/bash

# Get size of directory you in when no disk space left and no temp file can be written
$ sudo du -ahx . | grep [0-9].[0-9]G

# Get size of directory you in
$ sudo du -ahx . | sort -rh | head -20