# get the number of files in the directory
n=$(ls -1a | wc -l)

# function to check wether an input value is greater, smaller or equal to 
# the number of files in the directory

function inequality { 
  echo "Guess how many files are there in the directory: input number"
  read response
  if [[ $response -gt $n ]]
  then
    echo "There are less files"
    echo ""
  elif [[ $response -lt $n ]]
  then
    echo "There are more files"
    echo ""
  else
    echo "Correct!"
    echo ""
  fi
}

# loop to repeat the process until success

while [[ $response -ne $n ]]
do
  inequality
done
