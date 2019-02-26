# Write a quizzing program. The program should have at least 5 questions.
# Write a "question" function. The function should take 2 parameters - the question and the answer.

function ask_question(){
	question=$1
	answer=$2
	echo ${question}
	read user_name

	# Bonuse: Can convert to lower case in the event you want your answer to be case insensitive
	# question_lower=$(echo $1 | tr '[:upper:]' '[:lower:]'
	# answer_lower=$(echo $2 | tr '[:upper:]' '[:lower:]'

	if [ "${answer}" == "${user_answer}" ]; then
		echo "Correct, next question"
	else
		echo "Incorrect, try again"
		ask_question "${question}" "${answer}"
	fi
}

echo Welcome to the quiz
ask_question "What is 1 + 2?" "3"
ask_question "What is the capital of England?" "London"
ask_question "Name a five letter word that sounds the same once you remove the 1st, 3rd and 5th letter." "Empty"
ask_question "How old is Boris Johnson?" "54"
ask_question "How many players are there on a rugby pitch?" "30"
ask_question "What is the best University in the world?" "University of Bath" # Obviously
echo "Just Kidding, that was the last question, well done on passing"
