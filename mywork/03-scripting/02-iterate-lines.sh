#!/bin/bash

set -e

while read line; do
	echo $line;
	# sleep !;
done < guids.list
