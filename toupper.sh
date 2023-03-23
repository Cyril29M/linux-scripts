#!/bin/bash
[ $# -eq 0 ] && exit 0
echo $@ | tr '[:lower:]' '[:upper:]'
