cd /root/chef-repo/.chef
knife winrm 'name:IRIS-CSG-1320' 'chef-client' --winrm-user 'IRISSOFTWARE\devops.user1'

