# Create the login page for an application 
# Users should have the ability to log in and log out.

function user_exists(){
	user_name=$1
	user_line=$(grep "^${user_name}," ${password_file})
	if [ -z ${user_line} ]; then
		echo missing
	else 
		echo exists
	fi
}

function prompt_pass(){
	echo Enter Password
	read -s user_pass
	logged_in="false"
	for password_line in $(cat ${password_file}); do
		if [ "$password_line" == "$1,$user_pass" ]; then
			echo $user_name correct password. Login successful
			logged_in="true"
		fi
	done
	if [ ${logged_in} == "false" ]; then
		echo Incorrect password, didnt log in. Please try again.
		prompt_pass $1
	fi
}

function login(){
	password_file="./passwords"
	user_name=$1
	while [ $(user_exists $user_name) == "missing" ]; do
		echo User does not exist, please provide a valid user
		read user_name
	done

	prompt_pass $user_name
}

function logout(){
	false
}

user=$1

login $user
logged_in=$?
echo $logged_in

while [ $logged_in -eq 0 ]; do
	echo Do you want to log out [y/n]?
	read answer
	if [ $answer == "y" ]; then
		logout
		logged_in=$?
	fi
done
