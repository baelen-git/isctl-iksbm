#!/bin/bash


echo "Getting running Workflows..."
WF=`isctl $@ get workflow workflowinfo --filter "Status eq 'RUNNING' AND Internal eq false" -o jsonpath='[*].Moid'`

if [ -z "$WF" ];
then
	echo "no running worksflows";
	exit
fi

for x in $WF; do
	echo "killing moid $x"
	while true; do
		read -p "Are you sure you wish to kill this workflow? [y/n]" yn
		case $yn in
			[Yy]* ) 
				isctl $@ update workflow workflowinfo moid $x --Action=Cancel;
				break;;
        		[Nn]* ) 
				break;;
        		* ) echo "Please answer yes or no.";;
    		esac
	done
done


