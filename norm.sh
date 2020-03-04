clear
echo "== Made by mburl ==="
echo "=== Welcome to script that checks for norm errors ==="
echo "Choose files/folders to check"
ls
read ans
bool=0
for file in $ans
do
	if norminette $file | grep "Error" > /dev/null; then
		echo $file "\033[31mX\033[0m"
		bool=1
	else
		echo $file "\033[32mV\033[0m"
	fi
done
if [ $bool -eq 1 ]; then
echo "\033[31m== Errors found ==\033[0m"
fi
echo "===== DONE ====="