/******************************************************************************

                              Online C++ Debugger.
               Code, Compile, Run and Debug C++ program online.
Write your code in this editor and press "Debug" button to debug it.

*******************************************************************************/

#include <iostream>
#include <cmath>

using namespace std;

double integrand(double x) {
	return exp(3 * x) * atan(x / 2);
}

double trapeznaMetoda(double a, double b, int n) {
	double h = (b - a) / n;
	double integral = 0.5 * (integrand(a) + integrand(b));

	for (int i = 1; i < n; i++) {
		double x = a + i * h;
		integral += integrand(x);
	}

	integral *= h;

	return integral;
}

int main() {
	double a = 0.0;
	double b = 3.14 / 4;

	int n = 1000;

	double rezultat = trapeznaMetoda(a, b, n);

	cout << "Ocena integrala: " << rezultat << endl;

	return 0;
}
