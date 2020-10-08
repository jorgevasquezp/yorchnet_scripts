server=paraulata.casa.vm
#server=192.168.1.120
mount=/media
export IFS=$'\n'

drives=$(ssh jorge@$server ls $mount )

for dir in ${drives[@]}; do
	mkdir $mount/"$dir";
	chown jorge $mount/"$dir"
	sshfs jorge@$server:$mount/"$dir" $mount/"$dir" &
done
