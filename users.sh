#!/bin/bash
ps aux | grep -v 'USER' | cut -d ' ' -f 1 | sort | uniq
