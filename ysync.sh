#!/usr/bin/bash
rsync --partial --progress --size-only -ruav $1 $2
