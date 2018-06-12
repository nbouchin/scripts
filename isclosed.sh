#!/bin/bash

print_closed () {
	usernames=(asenat tgrange lbopp amazurie athanael cboiron dbourdon aguerin hublanc lgiraud jocarol bgorecki laymard maechard mameyer oyagci mtacnet zadrien)
	for name in ${usernames[*]}
	do
		if [[ $(ldapsearch uid=${name} 2>- | grep -B4 "close") ]]; then
			echo "${name} is closed"
		fi
	done
}
print_closed
