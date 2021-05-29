make clean
make

gcc test.c -L./libasm.so -o test
echo
echo "+---------------+"
echo "| \e[38;5;226mStarting test \e[0m|"
echo "+---------------+"
echo

LD_PRELOAD=./libasm.so ./test

echo -n "Return code is : " ; echo $?
rm test