echo "[Welcome to Guessing Game]"

function ask {
	echo "Please enter the number of files in the current directory:"
	read guess
	files=$(ls -1 | wc -l)
}

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

echo "Well done! It is the correct answer."
