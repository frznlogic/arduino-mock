set -eu

cd "$(dirname -- "$0")"

LANG=C 
astyle -X --style=google -n ../**/*.cc ../include/**/*.h | grep Formatted
if [ $? = 0 ]; then
	echo "Some files need to format."
	echo "Please run 'make format' in test/ directory."
	echo ""
	git status
	exit 1
else
	exit 0
fi

