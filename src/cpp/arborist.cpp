#include <iostream>

using namespace std;

int main(int argc, char const *argv[])
{
	cout << "\033[35mHello, world!\033[0m" << endl;
	return 0;
}

/*
	TODO show help `chop -h,--help`
	TODO show number of empty directories `chop -c,--count [<targetDirectory>]`
	TODO show number of empty files `chop -f,--files-only -c,--count [<targetDirectory>]`
	TODO remove empty directories `chop [<targetDirectory>]`
	TODO remove empty (0 byte) files only `chop -f,--files-only [<targetDirectory>]`
	TODO show number of removed directories/files
*/