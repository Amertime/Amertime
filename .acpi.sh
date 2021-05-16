#!/bin/bash

count=1

while [ $count -lt 2 ]; do
	echo "System Status" | cat >> .acpi.tmp
	neofetch | cat >> .acpi.tmp
	acpi | cat >> .acpi.tmp
	cat .acpi.tmp
	rm .acpi.tmp
	sleep 10
done

