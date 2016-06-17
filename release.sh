#!/bin/bash

# Apps to claim devices from and send them to:
from=bryanBeast
to=microBeast

devices=($(resin devices | grep "$from" | awk '{ print $2 }'))

for i in "${devices[@]}"
do
	resin device move $i --application "$to"
done
