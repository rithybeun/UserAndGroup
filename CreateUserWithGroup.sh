echo -n "Enter Name Group: "
read nameG
if grep -q $nameG "/etc/group"
	then
		echo "Groud is exists"
	else	
		groupadd $nameG
fi
for((i=1; i<=50; i++))
	do
		uname=uname$i
		useradd -G $nameG $uname
	done
echo "User has added to $nameG"
	
