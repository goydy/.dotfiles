#/bin/bash

#Path for saving the agent environment script to
ssh_agent_directory="/tmp/$(whoami)"
ssh_agent_script="$ssh_agent_directory/agent.sh"

if [[ ! -e $ssh_agent_directory ]];
then
	mkdir $ssh_agent_directory
fi

if [[ ! -e $ssh_agent_script ]]; 
then
  ssh-agent  |  tee $ssh_agent_script
	chmod 700 $ssh_agent_script
fi

. $ssh_agent_script