#include <stdio.h>
#include <inttypes.h>

double sum(double, double, int);

int main() {
    double b1, q;
    int n;
    scanf("%lf",&b1);
    scanf("%lf",&q);
    scanf("%i",&n);
    printf("The sum of geometric progression is %g.\n", sum(b1, q, n));
    return 0;
}
