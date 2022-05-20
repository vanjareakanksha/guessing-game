echo "[Welcome to Guessing game v0.1]"


function guess {

function ask {
	echo "Please enter the number of files in the current directory:"

	read user_guess

	echo "You entered: $user_guess"
	read guess
    files=$(ls -1 | wc -l)
}


guess
ask

while [[ $guess -ne $files ]]
do
	if [[ $guess -lt $files ]] 
	then
		echo "Too low."
	else
		echo "Too high."
	fi
	ask
done

echo "Well done! It is the correct answer, here is the list of files:"
echo "---" && ls -1 
