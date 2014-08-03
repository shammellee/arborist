#include <iostream>

using namespace std;

int main(int argc, char const *argv[])
{
	cout << "\033[35mHello, world!\033[0m" << endl;
	return 0;
}

/*
	TODO show help `chop -h,--help`
	TODO show number of empty trees `chop -c,--count [<targetTree(s)>]`
	TODO show number of empty files `chop -f,--files -c,--count [<targetTree(s)>]`
	TODO show number of hidden files (starting with '.') `chop -i,--invisible-files -c,--count [<targetTree(s)>]`
	TODO show number of symlinks `chop -s,--symlinks -c,--count [<targetTree(s)>]`
	TODO remove empty trees `chop [<targetTree(s)>]`
	TODO remove empty (0 byte) files `chop -f,--files [<targetTree(s)>]`
	TODO remove symlinks `chop -s,--symlinks [<targetTree(s)>]`
	TODO remove hidden files (starting with '.') `chop -i,--invisible-files [<targetTree(s)>]`
	TODO show number of removed trees/files
	TODO be verbose `chop -v [<targetTree(s)>]
*/