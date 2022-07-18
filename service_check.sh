arr=(192.168.0.159)

for ip in ${arr[@]}; do
	
	echo "************$ip************" >> abc.txt
	echo "" >> abc.txt
	sshpass -p "pw4sd#de7a"  ssh -t admin6@$ip 'echo "pw4sd#de7a" | sudo -S whoami; sudo service monit status' | grep monit >> abc.txt
	sshpass -p "pw4sd#de7a"  ssh -t admin6@$ip 'echo "pw4sd#de7a" | sudo -S whoami; sudo service nrpe status' | grep nrpe >> abc.txt
	sshpass -p "pw4sd#de7a"  ssh -t admin6@$ip 'echo "pw4sd#de7a" | sudo -S whoami; sudo service ntpd status' | grep ntpd >> abc.txt
	echo "" >> abc.txt	
	echo "Laptop Time" >> abc.txt
	date >> abc.txt
	echo "" >> abc.txt
	echo "Machine Time" >> abc.txt
	sshpass -p "pw4sd#de7a"  ssh -t admin6@192.168.0.159 'date'  >> abc.txt
	echo "" >> abc.txt
	echo "" >> abc.txt
	
done
