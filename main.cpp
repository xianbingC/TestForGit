#include <string>
#include <iostream>
#include <format>

int main()
{
	std::string str = "success";
	auto res = std::format("process result is {}", str.c_str());

	std::cout << res << std::endl;
	
	return 0;
}
