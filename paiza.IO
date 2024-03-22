#include <stdio.h>
#include <iostream>
#include <cmath>

using namespace std;

// Hàm kiểm tra số chính phương
bool isPerfectSquare(int n) 
{
	int sqrt_n = sqrt(n);
	return sqrt_n * sqrt_n == n;
}

// Hàm đếm số chính phương nhỏ hơn n
int countPerfectSquares(int n) {
	int count = 0;
	for (int i = 1; i * i < n; ++i) 
	{
		if (isPerfectSquare(i))
		{
			count++;
		}
	}
	return count;
}

// Hàm in ra các số chính phương nhỏ hơn n
void printPerfectSquares(int n) 
{
	std::cout << "Cac so chinh phuong nho hon " << n << " la: ";
	for (int i = 1; i * i < n; ++i) 
	{
		if (isPerfectSquare(i)) 
		{
			std::cout << i * i << " ";
		}
	}
	std::cout << std::endl;
}

int main() 
{
	int n;
	std::cout << "Nhap vao mot so nguyen duong: ";
	std::cin >> n;

	printPerfectSquares(n);

	return 0;
}
