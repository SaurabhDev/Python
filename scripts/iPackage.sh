#package=`cat /home/test/chef.json | python -c "import json,sys;obj=json.load(sys.stdin);print obj['package'];"`
#machineName=`cat /home/test/chef.json | python -c "import json,sys;obj=json.load(sys.stdin);print obj['node'];"`

#cd /root/chef/chef-repo/cookbooks
#chef generate cookbook $package
#cookbook=$package
#knife node run_list add $node 'recipe[$cookbook]'
#node=$machineName
#knife winrm 'name:node' 'chef-client'

########################### Goto the chef path
cd /root/chef-repo/.chef

############################# Knife command to bootstrap any node
knife bootstrap windows winrm 172.16.19.92  --winrm-user 'IRISSOFTWARE\devops.user1' --winrm-password 'Password@2' --node-name IRIS-CSG-1320

############################# Knife command to add the cookbook to the server 
knife node run_list add IRIS-CSG-1321 'role[admin]'

############################## knife command to run the cookbook on client
knife winrm 'name:IRIS-CSG-1320' 'chef-client' --winrm-user 'IRISSOFTWARE\devops.user1'
