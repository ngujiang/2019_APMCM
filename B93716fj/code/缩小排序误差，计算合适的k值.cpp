#include <iostream>
#include<math.h>

double A[19] = { 96.6829,96.9642,96.6839,96.7657,91.7869,90.6859 ,  92.3136  , 91.6876 ,  95.0864 ,  96.7432 ,
 94.4535 ,  88.9916 ,  91.4704 ,  96.6789 ,  91.0368 ,  89.3438 ,  88.6444 ,  86.1672  , 82.7269 };
double B[19] = { 0,0.642,0,0,0,

0,0.125, 0.329,1.232,0.457,
0,2.72,0,0,0,

0.405,0,0,0 };
double C[19] = { 3,0,2,1,11,
14,9,10,6,5,
7,8,12,4,13,
15,16,17,18 };
double Variance(double k)
{
	int result = 0;
	for (int n = 0; n < 19; n++)
	{
		double tem = 0;
		for (int m = 0; m < 19; m++)
		{
			if (m != n)
			{
				tem+=0.5 * (((A[m] - A[n]) + k * (B[m] - B[n])) /
					abs((A[m] - A[n]) + k * (B[m] - B[n])) + 1);
				//std::cout << tem << '\n';
			}
			
		}
		tem -= C[n];
		tem *= tem;
		result += tem;
	}
	//std::cout << result<<'\n';
	return  result/= 19;
}
int main()
{
	double k = 0;
	double min=10000;
	double k_final=0;
		for (; k < 3; k += 0.01)
		{
			if (Variance(k) <= min)
			{
				min = Variance(k);
				k_final = k;
			}
			std::cout << k_final<<'\n';
		}

		
		return 0;
}
