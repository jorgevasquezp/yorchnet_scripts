#!/usr/bin/bash
rsync --partial --size-only -ruav $1 $2
