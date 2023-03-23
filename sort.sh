#!/bin/bash
echo $* | tr ' ' '\n' | sort | tr '\n' ' ' | sed 's/ $/\n/'
