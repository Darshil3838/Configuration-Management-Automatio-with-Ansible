         ___        ______     ____ _                 _  ___  
        / \ \      / / ___|   / ___| | ___  _   _  __| |/ _ \ 
       / _ \ \ /\ / /\___ \  | |   | |/ _ \| | | |/ _` | (_) |
      / ___ \ V  V /  ___) | | |___| | (_) | |_| | (_| |\__, |
     /_/   \_\_/\_/  |____/   \____|_|\___/ \__,_|\__,_|  /_/ 
 ----------------------------------------------------------------- 


Hi there! Welcome to AWS Cloud9!


In order to run this application bellow steps should be followed:
1)First you need to Ip addresses and user ids in the host.txt file.


2)we need to install ansible using this command
	sudo yum install –y ansible
	
	
3)Check whether ping is working or not using the Ansible ping command
	ansible -i hosts.txt servers -m ping
	
	
4)There are two types EC2 in the deployed environment check using this command
	ansible -i hosts.txt servers -m setup -a "filter=ansible_os_family"
	
	
5)Update Ansible configuration to use dynamic inventory using bellow
	ansible-inventory -i aws_ec2.yaml --graph
	
note: to run this command python boto3 should be installed if not install it using the bellow command
	sudo yum install python-boto3
	
	
6)Run Ansible Playbook using the bellow command
	ansible-playbook -i aws_ec2.yaml playbook.yaml 

