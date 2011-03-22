#!/bin/sh

inc_derective="include"
rec_derective="require"

out="out.js"

usage="Usage: $0 [-o out.js] main.js"

while getopts ":o:" opt; do
    case $opt in
	o  ) out=$OPTARG ;;
	\? ) echo $usage
	    exit 1 ;;
    esac
done

shift $((OPTIND - 1))

if [ -z "$@" ]; then
    echo $usage
    exit 1
fi

# TODO: concatenate scripts
