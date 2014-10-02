set -eu

cd "$(dirname -- "$0")"

LANG=C 
astyle -X --style=google -n ../**/*.cc ../include/**/*.h | grep Formatted
if $?; then
	echo "Some files need to format."
	exit 1
else
	exit 0
end

