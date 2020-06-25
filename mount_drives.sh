mount=/media

drives=$(ssh jorge@paraulata.casa.vm ls /media )

for dir in ${drives[@]}; do
	mkdir $mount/$dir;
	chown jorge $mount/$dir
	sshfs jorge@paraulata.casa.vm:$mount/$dir $mount/$dir &
done
